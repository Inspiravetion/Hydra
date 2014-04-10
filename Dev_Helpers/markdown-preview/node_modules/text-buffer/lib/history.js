(function() {
  var BufferPatch, History, Serializable, Transaction, TransactionAborted,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  Serializable = require('serializable');

  Transaction = require('./transaction');

  BufferPatch = require('./buffer-patch');

  TransactionAborted = new Error("Transaction Aborted");

  module.exports = History = (function(_super) {
    __extends(History, _super);

    History.registerDeserializers(Transaction, BufferPatch);

    History.prototype.currentTransaction = null;

    History.prototype.transactionDepth = 0;

    History.prototype.transactCallDepth = 0;

    function History(buffer, undoStack, redoStack) {
      this.buffer = buffer;
      this.undoStack = undoStack != null ? undoStack : [];
      this.redoStack = redoStack != null ? redoStack : [];
    }

    History.prototype.serializeParams = function() {
      return {
        undoStack: this.undoStack.map(function(patch) {
          return patch.serialize();
        }),
        redoStack: this.redoStack.map(function(patch) {
          return patch.serialize();
        })
      };
    };

    History.prototype.deserializeParams = function(params) {
      params.undoStack = params.undoStack.map((function(_this) {
        return function(patchState) {
          return _this.constructor.deserialize(patchState);
        };
      })(this));
      params.redoStack = params.redoStack.map((function(_this) {
        return function(patchState) {
          return _this.constructor.deserialize(patchState);
        };
      })(this));
      return params;
    };

    History.prototype.recordNewPatch = function(patch) {
      if (this.currentTransaction != null) {
        this.currentTransaction.push(patch);
      } else {
        this.undoStack.push(patch);
      }
      return this.clearRedoStack();
    };

    History.prototype.undo = function() {
      var inverse, patch;
      if (this.currentTransaction != null) {
        return this.abortTransaction();
      } else if (patch = this.undoStack.pop()) {
        inverse = patch.invert(this.buffer);
        this.redoStack.push(inverse);
        return inverse.applyTo(this.buffer);
      }
    };

    History.prototype.redo = function() {
      var inverse, patch;
      if (patch = this.redoStack.pop()) {
        inverse = patch.invert(this.buffer);
        this.undoStack.push(inverse);
        return inverse.applyTo(this.buffer);
      }
    };

    History.prototype.transact = function(fn) {
      var error, result;
      this.beginTransaction();
      try {
        ++this.transactCallDepth;
        result = fn();
        --this.transactCallDepth;
        this.commitTransaction();
        return result;
      } catch (_error) {
        error = _error;
        if (--this.transactCallDepth === 0) {
          this.abortTransaction();
          if (error !== TransactionAborted) {
            throw error;
          }
        } else {
          throw error;
        }
      }
    };

    History.prototype.beginTransaction = function() {
      if (++this.transactionDepth === 1) {
        return this.currentTransaction = new Transaction();
      }
    };

    History.prototype.commitTransaction = function() {
      if (--this.transactionDepth === 0) {
        if (this.currentTransaction.hasBufferPatches()) {
          this.undoStack.push(this.currentTransaction);
        }
        return this.currentTransaction = null;
      }
    };

    History.prototype.abortTransaction = function() {
      var inverse;
      if (this.transactCallDepth === 0) {
        inverse = this.currentTransaction.invert(this.buffer);
        this.currentTransaction = null;
        this.transactionDepth = 0;
        return inverse.applyTo(this.buffer);
      } else {
        throw TransactionAborted;
      }
    };

    History.prototype.isTransacting = function() {
      return this.currentTransaction != null;
    };

    History.prototype.clearUndoStack = function() {
      return this.undoStack.length = 0;
    };

    History.prototype.clearRedoStack = function() {
      return this.redoStack.length = 0;
    };

    return History;

  })(Serializable);

}).call(this);

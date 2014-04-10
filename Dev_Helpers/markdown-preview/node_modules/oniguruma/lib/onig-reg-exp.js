(function() {
  var OnigRegExp, OnigScanner;

  OnigScanner = require('bindings')('onig_scanner.node').OnigScanner;

  module.exports = OnigRegExp = (function() {

    function OnigRegExp(source) {
      this.source = source;
      this.scanner = new OnigScanner([this.source]);
    }

    OnigRegExp.prototype.search = function(string, startPosition) {
      var capture, captureIndices, result, _i, _len;
      if (startPosition == null) {
        startPosition = 0;
      }
      if (result = this.scanner.findNextMatch(string, startPosition)) {
        captureIndices = result.captureIndices;
        for (_i = 0, _len = captureIndices.length; _i < _len; _i++) {
          capture = captureIndices[_i];
          capture.match = string.slice(capture.start, capture.end);
        }
        return captureIndices;
      } else {
        return null;
      }
    };

    OnigRegExp.prototype.test = function(string) {
      return this.search(string) != null;
    };

    return OnigRegExp;

  })();

}).call(this);

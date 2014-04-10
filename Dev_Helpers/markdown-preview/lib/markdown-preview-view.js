(function() {
  var $, $$$, EditorView, File, MarkdownPreviewView, ScrollView, extensionForFenceName, path, _, _ref,
    __bind = function(fn, me){ return function(){ return fn.apply(me, arguments); }; },
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; };

  path = require('path');

  _ref = require('atom'), $ = _ref.$, $$$ = _ref.$$$, EditorView = _ref.EditorView, ScrollView = _ref.ScrollView;

  _ = require('underscore-plus');

  File = require('pathwatcher').File;

  extensionForFenceName = require('./extension-helper').extensionForFenceName;

  module.exports = MarkdownPreviewView = (function(_super) {
    __extends(MarkdownPreviewView, _super);

    atom.deserializers.add(MarkdownPreviewView);

    MarkdownPreviewView.deserialize = function(state) {
      return new MarkdownPreviewView(state);
    };

    MarkdownPreviewView.content = function() {
      return this.div({
        "class": 'markdown-preview native-key-bindings',
        tabindex: -1
      });
    };

    function MarkdownPreviewView(_arg) {
      var filePath;
      this.editorId = _arg.editorId, filePath = _arg.filePath;
      this.tokenizeCodeBlocks = __bind(this.tokenizeCodeBlocks, this);
      this.resolveImagePaths = __bind(this.resolveImagePaths, this);
      MarkdownPreviewView.__super__.constructor.apply(this, arguments);
      if (this.editorId != null) {
        this.resolveEditor(this.editorId);
      } else {
        if (atom.workspace != null) {
          this.subscribeToFilePath(filePath);
        } else {
          this.subscribe(atom.packages.once('activated', (function(_this) {
            return function() {
              return _this.subscribeToFilePath(filePath);
            };
          })(this)));
        }
      }
    }

    MarkdownPreviewView.prototype.serialize = function() {
      return {
        deserializer: 'MarkdownPreviewView',
        filePath: this.getPath(),
        editorId: this.editorId
      };
    };

    MarkdownPreviewView.prototype.destroy = function() {
      return this.unsubscribe();
    };

    MarkdownPreviewView.prototype.subscribeToFilePath = function(filePath) {
      this.file = new File(filePath);
      this.trigger('title-changed');
      this.handleEvents();
      return this.renderMarkdown();
    };

    MarkdownPreviewView.prototype.resolveEditor = function(editorId) {
      var resolve;
      resolve = (function(_this) {
        return function() {
          var _ref1;
          _this.editor = _this.editorForId(editorId);
          if (_this.editor != null) {
            if (_this.editor != null) {
              _this.trigger('title-changed');
            }
            return _this.handleEvents();
          } else {
            return (_ref1 = _this.parents('.pane').view()) != null ? _ref1.destroyItem(_this) : void 0;
          }
        };
      })(this);
      if (atom.workspace != null) {
        return resolve();
      } else {
        return this.subscribe(atom.packages.once('activated', (function(_this) {
          return function() {
            resolve();
            return _this.renderMarkdown();
          };
        })(this)));
      }
    };

    MarkdownPreviewView.prototype.editorForId = function(editorId) {
      var editor, _i, _len, _ref1, _ref2;
      _ref1 = atom.workspace.getEditors();
      for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
        editor = _ref1[_i];
        if (((_ref2 = editor.id) != null ? _ref2.toString() : void 0) === editorId.toString()) {
          return editor;
        }
      }
      return null;
    };

    MarkdownPreviewView.prototype.handleEvents = function() {
      var changeHandler;
      this.subscribe(atom.syntax, 'grammar-added grammar-updated', _.debounce(((function(_this) {
        return function() {
          return _this.renderMarkdown();
        };
      })(this)), 250));
      this.subscribe(this, 'core:move-up', (function(_this) {
        return function() {
          return _this.scrollUp();
        };
      })(this));
      this.subscribe(this, 'core:move-down', (function(_this) {
        return function() {
          return _this.scrollDown();
        };
      })(this));
      this.subscribeToCommand(atom.workspaceView, 'markdown-preview:zoom-in', (function(_this) {
        return function() {
          var zoomLevel;
          zoomLevel = parseFloat(_this.css('zoom')) || 1;
          return _this.css('zoom', zoomLevel + .1);
        };
      })(this));
      this.subscribeToCommand(atom.workspaceView, 'markdown-preview:zoom-out', (function(_this) {
        return function() {
          var zoomLevel;
          zoomLevel = parseFloat(_this.css('zoom')) || 1;
          return _this.css('zoom', zoomLevel - .1);
        };
      })(this));
      this.subscribeToCommand(atom.workspaceView, 'markdown-preview:reset-zoom', (function(_this) {
        return function() {
          return _this.css('zoom', 1);
        };
      })(this));
      changeHandler = (function(_this) {
        return function() {
          var pane;
          _this.renderMarkdown();
          pane = atom.workspace.paneForUri(_this.getUri());
          if ((pane != null) && pane !== atom.workspace.getActivePane()) {
            return pane.activateItem(_this);
          }
        };
      })(this);
      if (this.file != null) {
        this.subscribe(this.file, 'contents-changed', changeHandler);
      } else if (this.editor != null) {
        this.subscribe(this.editor.getBuffer(), 'contents-modified', changeHandler);
        this.subscribe(this.editor, 'path-changed', (function(_this) {
          return function() {
            return _this.trigger('title-changed');
          };
        })(this));
      }
      return this.subscribe(atom.config.observe('markdown-preview.breakOnSingleNewline', {
        callNow: false
      }, changeHandler));
    };

    MarkdownPreviewView.prototype.renderMarkdown = function() {
      this.showLoading();
      if (this.file != null) {
        return this.file.read().then((function(_this) {
          return function(contents) {
            return _this.renderMarkdownText(contents);
          };
        })(this));
      } else if (this.editor != null) {
        return this.renderMarkdownText(this.editor.getText());
      }
    };

    MarkdownPreviewView.prototype.renderMarkdownText = function(text) {
      var breaks, roaster, sanitize;
      roaster = require('roaster');
      sanitize = true;
      breaks = atom.config.get('markdown-preview.breakOnSingleNewline');
      return roaster(text, {
        sanitize: sanitize,
        breaks: breaks
      }, (function(_this) {
        return function(error, html) {
          if (error) {
            return _this.showError(error);
          } else {
            _this.html(_this.tokenizeCodeBlocks(_this.resolveImagePaths(html)));
            return _this.trigger('markdown-preview:markdown-changed');
          }
        };
      })(this));
    };

    MarkdownPreviewView.prototype.getTitle = function() {
      if (this.file != null) {
        return "" + (path.basename(this.getPath())) + " Preview";
      } else if (this.editor != null) {
        return "" + (this.editor.getTitle()) + " Preview";
      } else {
        return "Markdown Preview";
      }
    };

    MarkdownPreviewView.prototype.getUri = function() {
      if (this.file != null) {
        return "markdown-preview://" + (this.getPath());
      } else {
        return "markdown-preview://editor/" + this.editorId;
      }
    };

    MarkdownPreviewView.prototype.getPath = function() {
      if (this.file != null) {
        return this.file.getPath();
      } else if (this.editor != null) {
        return this.editor.getPath();
      }
    };

    MarkdownPreviewView.prototype.showError = function(result) {
      var failureMessage;
      failureMessage = result != null ? result.message : void 0;
      return this.html($$$(function() {
        this.h2('Previewing Markdown Failed');
        if (failureMessage != null) {
          return this.h3(failureMessage);
        }
      }));
    };

    MarkdownPreviewView.prototype.showLoading = function() {
      return this.html($$$(function() {
        return this.div({
          "class": 'markdown-spinner'
        }, 'Loading Markdown\u2026');
      }));
    };

    MarkdownPreviewView.prototype.resolveImagePaths = function(html) {
      var img, imgElement, imgList, src, _i, _len;
      html = $(html);
      imgList = html.find("img");
      for (_i = 0, _len = imgList.length; _i < _len; _i++) {
        imgElement = imgList[_i];
        img = $(imgElement);
        src = img.attr('src');
        if (src.match(/^(https?:\/\/)/)) {
          continue;
        }
        img.attr('src', path.resolve(path.dirname(this.getPath()), src));
      }
      return html;
    };

    MarkdownPreviewView.prototype.tokenizeCodeBlocks = function(html) {
      var className, codeBlock, extension, fenceName, grammar, htmlEolInvisibles, lineText, preElement, preList, text, tokens, _i, _j, _len, _len1, _ref1, _ref2;
      html = $(html);
      preList = $(html.filter("pre"));
      _ref1 = preList.toArray();
      for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
        preElement = _ref1[_i];
        $(preElement).addClass("editor-colors");
        codeBlock = $(preElement.firstChild);
        if (!(className = codeBlock.attr('class'))) {
          continue;
        }
        fenceName = className.replace(/^lang-/, '');
        if (!(extension = extensionForFenceName(fenceName))) {
          continue;
        }
        text = codeBlock.text();
        grammar = atom.syntax.selectGrammar("foo." + extension, text);
        codeBlock.empty();
        _ref2 = grammar.tokenizeLines(text).slice(0, -1);
        for (_j = 0, _len1 = _ref2.length; _j < _len1; _j++) {
          tokens = _ref2[_j];
          lineText = _.pluck(tokens, 'value').join('');
          htmlEolInvisibles = '';
          codeBlock.append(EditorView.buildLineHtml({
            tokens: tokens,
            text: lineText,
            htmlEolInvisibles: htmlEolInvisibles
          }));
        }
      }
      return html;
    };

    return MarkdownPreviewView;

  })(ScrollView);

}).call(this);

//# sourceMappingURL=/../../../../../../../../..//tmp/atom-build/Atom.app/Contents/Resources/app/node_modules/markdown-preview/lib/markdown-preview-view.js.map

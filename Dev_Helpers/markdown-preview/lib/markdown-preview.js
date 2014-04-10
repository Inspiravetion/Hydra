(function() {
  var MarkdownPreviewView, fs, url,
    __indexOf = [].indexOf || function(item) { for (var i = 0, l = this.length; i < l; i++) { if (i in this && this[i] === item) return i; } return -1; };

  url = require('url');

  fs = require('fs-plus');

  MarkdownPreviewView = require('./markdown-preview-view');

  module.exports = {
    configDefaults: {
      breakOnSingleNewline: false,
      grammars: ['source.gfm', 'source.litcoffee', 'text.plain', 'text.plain.null-grammar']
    },
    activate: function() {
      atom.workspaceView.command('markdown-preview:toggle', (function(_this) {
        return function() {
          return _this.toggle();
        };
      })(this));
      atom.workspaceView.command('markdown-preview:toggle-break-on-single-newline', function() {
        return atom.config.toggle('markdown-preview.breakOnSingleNewline');
      });
      return atom.workspace.registerOpener(function(uriToOpen) {
        var host, pathname, protocol, _ref;
        _ref = url.parse(uriToOpen), protocol = _ref.protocol, host = _ref.host, pathname = _ref.pathname;
        if (pathname) {
          pathname = decodeURI(pathname);
        }
        if (protocol !== 'markdown-preview:') {
          return;
        }
        if (host === 'editor') {
          return new MarkdownPreviewView({
            editorId: pathname.substring(1)
          });
        } else {
          return new MarkdownPreviewView({
            filePath: pathname
          });
        }
      });
    },
    toggle: function() {
      var editor, grammars, previewPane, previousActivePane, uri, _ref, _ref1;
      editor = atom.workspace.getActiveEditor();
      if (editor == null) {
        return;
      }
      grammars = (_ref = atom.config.get('markdown-preview.grammars')) != null ? _ref : [];
      if (_ref1 = editor.getGrammar().scopeName, __indexOf.call(grammars, _ref1) < 0) {
        return;
      }
      uri = "markdown-preview://editor/" + editor.id;
      previewPane = atom.workspace.paneForUri(uri);
      if (previewPane) {
        previewPane.destroyItem(previewPane.itemForUri(uri));
        return;
      }
      previousActivePane = atom.workspace.getActivePane();
      return atom.workspace.open(uri, {
        split: 'right',
        searchAllPanes: true
      }).done(function(markdownPreviewView) {
        if (markdownPreviewView instanceof MarkdownPreviewView) {
          markdownPreviewView.renderMarkdown();
          return previousActivePane.activate();
        }
      });
    }
  };

}).call(this);

//# sourceMappingURL=/../../../../../../../../..//tmp/atom-build/Atom.app/Contents/Resources/app/node_modules/markdown-preview/lib/markdown-preview.js.map

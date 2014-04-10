(function() {
  var MarkdownPreviewView, WorkspaceView, path;

  path = require('path');

  WorkspaceView = require('atom').WorkspaceView;

  MarkdownPreviewView = require('../lib/markdown-preview-view');

  describe("MarkdownPreviewView", function() {
    var file, preview, _ref;
    _ref = [], file = _ref[0], preview = _ref[1];
    beforeEach(function() {
      var filePath;
      atom.workspaceView = new WorkspaceView;
      atom.workspace = atom.workspaceView.model;
      filePath = atom.project.resolve('subdir/file.markdown');
      preview = new MarkdownPreviewView({
        filePath: filePath
      });
      return waitsForPromise(function() {
        return atom.packages.activatePackage('language-ruby');
      });
    });
    afterEach(function() {
      return preview.destroy();
    });
    describe("::constructor", function() {
      it("shows a loading spinner and renders the markdown", function() {
        preview.showLoading();
        expect(preview.find('.markdown-spinner')).toExist();
        waitsForPromise(function() {
          return preview.renderMarkdown();
        });
        return runs(function() {
          return expect(preview.find(".emoji")).toExist();
        });
      });
      return it("shows an error message when there is an error", function() {
        preview.showError("Not a real file");
        return expect(preview.text()).toContain("Failed");
      });
    });
    describe("serialization", function() {
      var newPreview;
      newPreview = null;
      afterEach(function() {
        return newPreview.destroy();
      });
      it("recreates the file when serialized/deserialized", function() {
        newPreview = atom.deserializers.deserialize(preview.serialize());
        return expect(newPreview.getPath()).toBe(preview.getPath());
      });
      return it("serializes the editor id when opened for an editor", function() {
        preview.destroy();
        waitsForPromise(function() {
          return atom.workspace.open('new.markdown');
        });
        return runs(function() {
          preview = new MarkdownPreviewView({
            editorId: atom.workspace.getActiveEditor().id
          });
          expect(preview.getPath()).toBe(atom.workspace.getActiveEditor().getPath());
          newPreview = atom.deserializers.deserialize(preview.serialize());
          return expect(newPreview.getPath()).toBe(preview.getPath());
        });
      });
    });
    describe("code block tokenization", function() {
      beforeEach(function() {
        return waitsForPromise(function() {
          return preview.renderMarkdown();
        });
      });
      describe("when the code block's fence name has a matching grammar", function() {
        return it("tokenizes the code block with the grammar", function() {
          return expect(preview.find("pre span.entity.name.function.ruby")).toExist();
        });
      });
      describe("when the code block's fence name doesn't have a matching grammar", function() {
        return it("does not tokenize the code block", function() {
          expect(preview.find("pre code:not([class])").children().length).toBe(0);
          return expect(preview.find("pre code.lang-kombucha").children().length).toBe(0);
        });
      });
      return describe("when the code block contains empty lines", function() {
        return it("doesn't remove the empty lines", function() {
          expect(preview.find("pre code.lang-python").children().length).toBe(6);
          expect(preview.find("pre code.lang-python div:nth-child(2)").html()).toBe('&nbsp;');
          expect(preview.find("pre code.lang-python div:nth-child(4)").html()).toBe('&nbsp;');
          return expect(preview.find("pre code.lang-python div:nth-child(5)").html()).toBe('&nbsp;');
        });
      });
    });
    describe("image resolving", function() {
      beforeEach(function() {
        return waitsForPromise(function() {
          return preview.renderMarkdown();
        });
      });
      describe("when the image uses a relative path", function() {
        return it("resolves to a path relative to the file", function() {
          var image;
          image = preview.find("img[alt=Image1]");
          return expect(image.attr('src')).toBe(atom.project.resolve('subdir/image1.png'));
        });
      });
      describe("when the image uses an absolute path", function() {
        return it("doesn't change the path", function() {
          var image;
          image = preview.find("img[alt=Image2]");
          return expect(image.attr('src')).toBe('/tmp/image2.png');
        });
      });
      return describe("when the image uses a web URL", function() {
        return it("doesn't change the URL", function() {
          var image;
          image = preview.find("img[alt=Image3]");
          return expect(image.attr('src')).toBe('http://github.com/image3.png');
        });
      });
    });
    return describe("gfm newlines", function() {
      describe("when gfm newlines are not enabled", function() {
        return it("creates a single paragraph with <br>", function() {
          atom.config.set('markdown-preview.breakOnSingleNewline', false);
          waitsForPromise(function() {
            return preview.renderMarkdown();
          });
          return runs(function() {
            return expect(preview.find("p:last-child br").length).toBe(0);
          });
        });
      });
      return describe("when gfm newlines are enabled", function() {
        return it("creates a single paragraph with no <br>", function() {
          atom.config.set('markdown-preview.breakOnSingleNewline', true);
          waitsForPromise(function() {
            return preview.renderMarkdown();
          });
          return runs(function() {
            return expect(preview.find("p:last-child br").length).toBe(1);
          });
        });
      });
    });
  });

}).call(this);

//# sourceMappingURL=/../../../../../../../../..//tmp/atom-build/Atom.app/Contents/Resources/app/node_modules/markdown-preview/spec/markdown-preview-view-spec.js.map

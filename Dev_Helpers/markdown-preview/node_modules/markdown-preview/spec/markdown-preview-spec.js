(function() {
  var MarkdownPreviewView, WorkspaceView, fs, path, temp, wrench;

  path = require('path');

  WorkspaceView = require('atom').WorkspaceView;

  fs = require('fs-plus');

  temp = require('temp');

  wrench = require('wrench');

  MarkdownPreviewView = require('../lib/markdown-preview-view');

  describe("Markdown preview package", function() {
    beforeEach(function() {
      var fixturesPath, tempPath;
      fixturesPath = path.join(__dirname, 'fixtures');
      tempPath = temp.mkdirSync('atom');
      wrench.copyDirSyncRecursive(fixturesPath, tempPath, {
        forceDelete: true
      });
      atom.project.setPath(tempPath);
      jasmine.unspy(window, 'setTimeout');
      atom.workspaceView = new WorkspaceView;
      atom.workspace = atom.workspaceView.model;
      spyOn(MarkdownPreviewView.prototype, 'renderMarkdown');
      waitsForPromise(function() {
        return atom.packages.activatePackage("markdown-preview");
      });
      return waitsForPromise(function() {
        return atom.packages.activatePackage('language-gfm');
      });
    });
    describe("when a preview has not been created for the file", function() {
      beforeEach(function() {
        return atom.workspaceView.attachToDom();
      });
      it("splits the current pane to the right with a markdown preview for the file", function() {
        waitsForPromise(function() {
          return atom.workspace.open("subdir/file.markdown");
        });
        runs(function() {
          return atom.workspaceView.getActiveView().trigger('markdown-preview:toggle');
        });
        waitsFor(function() {
          return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
        });
        return runs(function() {
          var editorPane, preview, previewPane, _ref;
          expect(atom.workspaceView.getPanes()).toHaveLength(2);
          _ref = atom.workspaceView.getPanes(), editorPane = _ref[0], previewPane = _ref[1];
          expect(editorPane.items).toHaveLength(1);
          preview = previewPane.getActiveItem();
          expect(preview).toBeInstanceOf(MarkdownPreviewView);
          expect(preview.getPath()).toBe(atom.workspaceView.getActivePaneItem().getPath());
          return expect(editorPane).toHaveFocus();
        });
      });
      describe("when the editor's path does not exist", function() {
        return it("splits the current pane to the right with a markdown preview for the file", function() {
          waitsForPromise(function() {
            return atom.workspace.open("new.markdown");
          });
          runs(function() {
            return atom.workspaceView.getActiveView().trigger('markdown-preview:toggle');
          });
          waitsFor(function() {
            return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
          });
          return runs(function() {
            var editorPane, preview, previewPane, _ref;
            expect(atom.workspaceView.getPanes()).toHaveLength(2);
            _ref = atom.workspaceView.getPanes(), editorPane = _ref[0], previewPane = _ref[1];
            expect(editorPane.items).toHaveLength(1);
            preview = previewPane.getActiveItem();
            expect(preview).toBeInstanceOf(MarkdownPreviewView);
            expect(preview.getPath()).toBe(atom.workspaceView.getActivePaneItem().getPath());
            return expect(editorPane).toHaveFocus();
          });
        });
      });
      describe("when the editor does not have a path", function() {
        return it("splits the current pane to the right with a markdown preview for the file", function() {
          waitsForPromise(function() {
            return atom.workspace.open("");
          });
          runs(function() {
            return atom.workspaceView.getActiveView().trigger('markdown-preview:toggle');
          });
          waitsFor(function() {
            return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
          });
          return runs(function() {
            var editorPane, preview, previewPane, _ref;
            expect(atom.workspaceView.getPanes()).toHaveLength(2);
            _ref = atom.workspaceView.getPanes(), editorPane = _ref[0], previewPane = _ref[1];
            expect(editorPane.items).toHaveLength(1);
            preview = previewPane.getActiveItem();
            expect(preview).toBeInstanceOf(MarkdownPreviewView);
            expect(preview.getPath()).toBe(atom.workspaceView.getActivePaneItem().getPath());
            return expect(editorPane).toHaveFocus();
          });
        });
      });
      describe("when the path contains a space", function() {
        return it("renders the preview", function() {
          waitsForPromise(function() {
            return atom.workspace.open("subdir/file with space.md");
          });
          runs(function() {
            return atom.workspaceView.getActiveView().trigger('markdown-preview:toggle');
          });
          waitsFor(function() {
            return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
          });
          return runs(function() {
            var editorPane, preview, previewPane, _ref;
            expect(atom.workspaceView.getPanes()).toHaveLength(2);
            _ref = atom.workspaceView.getPanes(), editorPane = _ref[0], previewPane = _ref[1];
            expect(editorPane.items).toHaveLength(1);
            preview = previewPane.getActiveItem();
            expect(preview).toBeInstanceOf(MarkdownPreviewView);
            expect(preview.getPath()).toBe(atom.workspaceView.getActivePaneItem().getPath());
            return expect(editorPane).toHaveFocus();
          });
        });
      });
      return describe("when the path contains accented characters", function() {
        return it("renders the preview", function() {
          waitsForPromise(function() {
            return atom.workspace.open("subdir/áccéntéd.md");
          });
          runs(function() {
            return atom.workspaceView.getActiveView().trigger('markdown-preview:toggle');
          });
          waitsFor(function() {
            return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
          });
          return runs(function() {
            var editorPane, preview, previewPane, _ref;
            expect(atom.workspaceView.getPanes()).toHaveLength(2);
            _ref = atom.workspaceView.getPanes(), editorPane = _ref[0], previewPane = _ref[1];
            expect(editorPane.items).toHaveLength(1);
            preview = previewPane.getActiveItem();
            expect(preview).toBeInstanceOf(MarkdownPreviewView);
            expect(preview.getPath()).toBe(atom.workspaceView.getActivePaneItem().getPath());
            return expect(editorPane).toHaveFocus();
          });
        });
      });
    });
    describe("when a preview has been created for the file", function() {
      var editorPane, preview, previewPane, _ref;
      _ref = [], editorPane = _ref[0], previewPane = _ref[1], preview = _ref[2];
      beforeEach(function() {
        atom.workspaceView.attachToDom();
        waitsForPromise(function() {
          return atom.workspace.open("subdir/file.markdown");
        });
        runs(function() {
          return atom.workspaceView.getActiveView().trigger('markdown-preview:toggle');
        });
        waitsFor(function() {
          return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
        });
        return runs(function() {
          var _ref1;
          _ref1 = atom.workspaceView.getPanes(), editorPane = _ref1[0], previewPane = _ref1[1];
          preview = previewPane.getActiveItem();
          return MarkdownPreviewView.prototype.renderMarkdown.reset();
        });
      });
      it("closes the existing preview when toggle is triggered a second time", function() {
        var _ref1;
        atom.workspaceView.getActiveView().trigger('markdown-preview:toggle');
        _ref1 = atom.workspaceView.getPanes(), editorPane = _ref1[0], previewPane = _ref1[1];
        expect(editorPane).toHaveFocus();
        return expect(previewPane != null ? previewPane.activeItem : void 0).toBeUndefined();
      });
      describe("when the editor is modified", function() {
        describe("when the preview is in the active pane but is not the active item", function() {
          return it("re-renders the preview but does not make it active", function() {
            previewPane.focus();
            waitsForPromise(function() {
              return atom.workspace.open();
            });
            runs(function() {
              return atom.workspace.getActiveEditor().setText("Hey!");
            });
            waitsFor(function() {
              return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
            });
            return runs(function() {
              expect(previewPane).toHaveFocus();
              return expect(previewPane.getActiveItem()).not.toBe(preview);
            });
          });
        });
        return describe("when the preview is not the active item and not in the active pane", function() {
          return it("re-renders the preview and makes it active", function() {
            previewPane.focus();
            waitsForPromise(function() {
              return atom.workspace.open();
            });
            runs(function() {
              editorPane.focus();
              return atom.workspace.getActiveEditor().setText("Hey!");
            });
            waitsFor(function() {
              return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
            });
            return runs(function() {
              expect(editorPane).toHaveFocus();
              return expect(previewPane.getActiveItem()).toBe(preview);
            });
          });
        });
      });
      return describe("when a new grammar is loaded", function() {
        return it("re-renders the preview", function() {
          waitsForPromise(function() {
            return atom.packages.activatePackage('language-javascript');
          });
          return waitsFor(function() {
            return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
          });
        });
      });
    });
    describe("when the markdown preview view is requested by file URI", function() {
      return it("opens a preview editor and watches the file for changes", function() {
        waitsForPromise(function() {
          return atom.workspace.open("markdown-preview://" + (atom.project.resolve('subdir/file.markdown')));
        });
        runs(function() {
          var preview;
          expect(MarkdownPreviewView.prototype.renderMarkdown.callCount).toBeGreaterThan(0);
          preview = atom.workspaceView.getActivePaneItem();
          expect(preview).toBeInstanceOf(MarkdownPreviewView);
          MarkdownPreviewView.prototype.renderMarkdown.reset();
          return fs.writeFileSync(atom.project.resolve('subdir/file.markdown'), 'changed');
        });
        return waitsFor(function() {
          return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
        });
      });
    });
    describe("when the editor's grammar it not enabled for preview", function() {
      return it("does not open the markdown preview", function() {
        atom.config.set('markdown-preview.grammars', []);
        atom.workspaceView.attachToDom();
        waitsForPromise(function() {
          return atom.workspace.open("subdir/file.markdown");
        });
        return runs(function() {
          spyOn(atom.workspace, 'open').andCallThrough();
          atom.workspaceView.getActiveView().trigger('markdown-preview:toggle');
          return expect(atom.workspace.open).not.toHaveBeenCalled();
        });
      });
    });
    return describe("when the editor's path changes", function() {
      return it("updates the preview's title", function() {
        var titleChangedCallback;
        titleChangedCallback = jasmine.createSpy('titleChangedCallback');
        waitsForPromise(function() {
          return atom.workspace.open("subdir/file.markdown");
        });
        runs(function() {
          return atom.workspaceView.getActiveView().trigger('markdown-preview:toggle');
        });
        waitsFor(function() {
          return MarkdownPreviewView.prototype.renderMarkdown.callCount > 0;
        });
        runs(function() {
          var editorPane, preview, previewPane, _ref;
          _ref = atom.workspaceView.getPanes(), editorPane = _ref[0], previewPane = _ref[1];
          preview = previewPane.getActiveItem();
          expect(preview.getTitle()).toBe('file.markdown Preview');
          titleChangedCallback.reset();
          preview.one('title-changed', titleChangedCallback);
          return fs.renameSync(atom.workspace.getActiveEditor().getPath(), path.join(path.dirname(atom.workspace.getActiveEditor().getPath()), 'file2.md'));
        });
        return waitsFor(function() {
          return titleChangedCallback.callCount === 1;
        });
      });
    });
  });

}).call(this);

//# sourceMappingURL=/../../../../../../../../..//tmp/atom-build/Atom.app/Contents/Resources/app/node_modules/markdown-preview/spec/markdown-preview-spec.js.map

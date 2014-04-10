(function() {
  var extensionsByFenceName;

  extensionsByFenceName = {
    'bash': 'sh',
    'coffee': 'coffee',
    'coffeescript': 'coffee',
    'coffee-script': 'coffee',
    'css': 'css',
    'go': 'go',
    'html': 'html',
    'java': 'java',
    'javascript': 'js',
    'js': 'js',
    'json': 'json',
    'less': 'less',
    'mustache': 'mustache',
    'objc': 'm',
    'objective-c': 'm',
    'python': 'py',
    'rb': 'rb',
    'ruby': 'rb',
    'sh': 'sh',
    'toml': 'toml',
    'xml': 'xml',
    'yaml': 'yaml',
    'yml': 'yaml',
    'hydra': 'hy',
    'hy': 'hy'
  };

  module.exports = {
    extensionForFenceName: function(fenceName) {
      return extensionsByFenceName[fenceName];
    }
  };

}).call(this);

//# sourceMappingURL=/../../../../../../../../..//tmp/atom-build/Atom.app/Contents/Resources/app/node_modules/markdown-preview/lib/extension-helper.js.map

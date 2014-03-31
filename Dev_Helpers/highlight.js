var Highlights = require('highlights');
var fs = require('fs');

var filename = process.argv[2];
var file = fs.readFileSync(filename, {encoding: 'ascii'});
console.log(file);
var highlighter = new Highlights()
var html = highlighter.highlightSync({
  fileContents: file,
  scopeName: filename
});

console.log(html);

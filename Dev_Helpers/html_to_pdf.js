/*
 * If @media print is anywhere it will use that css only...
 * cSS @media needs to be set to 'all' or be omitted for regular
 * css styling to work
 */

var system, page, html, outname;

page = require('webpage').create()
system = require('system');
html = system.args[1];
outname = html.split('/').pop().split('.')[0] + '.pdf';

page.paperSize = {
  width: '8.5in',
  height: '11in',
  border: '.1in'
};

page.open(html, function(status){
    page.render(outname);
    console.log(outname + ' rendered...');
    phantom.exit();
});

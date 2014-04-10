(function() {
  var OnigRegExp, OnigScanner;

  OnigScanner = require('bindings')('onig_scanner.node').OnigScanner;

  OnigRegExp = require('./onig-reg-exp');

  exports.OnigScanner = OnigScanner;

  exports.OnigRegExp = OnigRegExp;

}).call(this);

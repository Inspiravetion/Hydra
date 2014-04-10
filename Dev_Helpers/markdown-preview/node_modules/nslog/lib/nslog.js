(function() {
  var NSLog;

  NSLog = require('bindings')('nslog.node');

  module.exports = function(stringToLog) {
    if (stringToLog == null) {
      stringToLog = "";
    }
    return NSLog.log(stringToLog);
  };

}).call(this);

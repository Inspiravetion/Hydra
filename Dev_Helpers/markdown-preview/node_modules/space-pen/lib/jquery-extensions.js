(function() {
  var $, _,
    __slice = [].slice;

  if (typeof require === 'function') {
    $ = require('../vendor/jquery');
    _ = require('underscore-plus');
  } else {
    $ = window.$, _ = window._;
  }

  $.fn.scrollBottom = function(newValue) {
    if (newValue != null) {
      return this.scrollTop(newValue - this.height());
    } else {
      return this.scrollTop() + this.height();
    }
  };

  $.fn.scrollDown = function() {
    return this.scrollTop(this.scrollTop() + $(window).height() / 20);
  };

  $.fn.scrollUp = function() {
    return this.scrollTop(this.scrollTop() - $(window).height() / 20);
  };

  $.fn.scrollToTop = function() {
    return this.scrollTop(0);
  };

  $.fn.scrollToBottom = function() {
    return this.scrollTop(this.prop('scrollHeight'));
  };

  $.fn.scrollRight = function(newValue) {
    if (newValue != null) {
      return this.scrollLeft(newValue - this.width());
    } else {
      return this.scrollLeft() + this.width();
    }
  };

  $.fn.pageUp = function() {
    return this.scrollTop(this.scrollTop() - this.height());
  };

  $.fn.pageDown = function() {
    return this.scrollTop(this.scrollTop() + this.height());
  };

  $.fn.isOnDom = function() {
    return this.closest(document.body).length === 1;
  };

  $.fn.isVisible = function() {
    return !this.isHidden();
  };

  $.fn.isHidden = function() {
    var style;
    style = this[0].style;
    if (style.display === 'none' || !this.isOnDom()) {
      return true;
    } else if (style.display) {
      return false;
    } else {
      return getComputedStyle(this[0]).display === 'none';
    }
  };

  $.fn.isDisabled = function() {
    return !!this.attr('disabled');
  };

  $.fn.enable = function() {
    return this.removeAttr('disabled');
  };

  $.fn.disable = function() {
    return this.attr('disabled', 'disabled');
  };

  $.fn.insertAt = function(index, element) {
    var target;
    target = this.children(":eq(" + index + ")");
    if (target.length) {
      return $(element).insertBefore(target);
    } else {
      return this.append(element);
    }
  };

  $.fn.removeAt = function(index) {
    return this.children(":eq(" + index + ")").remove();
  };

  $.fn.indexOf = function(child) {
    return this.children().toArray().indexOf($(child)[0]);
  };

  $.fn.containsElement = function(element) {
    return (element[0].compareDocumentPosition(this[0]) & 8) === 8;
  };

  $.fn.preempt = function(eventName, handler) {
    var eventNameWithoutNamespace, handlers, _ref;
    this.on(eventName, function() {
      var args, e;
      e = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      if (handler.apply(null, [e].concat(__slice.call(args))) === false) {
        return e.stopImmediatePropagation();
      }
    });
    eventNameWithoutNamespace = eventName.split('.')[0];
    handlers = (_ref = this.handlers()[eventNameWithoutNamespace]) != null ? _ref : [];
    return handlers.unshift(handlers.pop());
  };

  $.fn.handlers = function(eventName) {
    var handlers, _ref, _ref1;
    handlers = this.length ? (_ref = $._data(this[0], 'events')) != null ? _ref : {} : {};
    if (arguments.length === 1) {
      handlers = (_ref1 = handlers[eventName]) != null ? _ref1 : [];
    }
    return handlers;
  };

  $.fn.hasParent = function() {
    return this.parent()[0] != null;
  };

  $.fn.hasFocus = function() {
    return this.is(':focus') || this.is(':has(:focus)');
  };

  $.fn.flashError = function() {
    var removeErrorClass,
      _this = this;
    this.addClass('error');
    removeErrorClass = function() {
      return _this.removeClass('error');
    };
    return window.setTimeout(removeErrorClass, 300);
  };

  $.fn.trueHeight = function() {
    return this[0].getBoundingClientRect().height;
  };

  $.fn.trueWidth = function() {
    return this[0].getBoundingClientRect().width;
  };

  $.fn.document = function(eventName, docString) {
    var eventDescriptions;
    eventDescriptions = {};
    eventDescriptions[eventName] = docString;
    if (!this.data('documentation')) {
      this.data('documentation', {});
    }
    return _.extend(this.data('documentation'), eventDescriptions);
  };

  $.fn.events = function() {
    var documentation, eventName, events, _ref, _ref1;
    documentation = (_ref = this.data('documentation')) != null ? _ref : {};
    events = {};
    for (eventName in this.handlers()) {
      events[eventName] = (_ref1 = documentation[eventName]) != null ? _ref1 : null;
    }
    if (this.hasParent()) {
      return _.extend(this.parent().events(), events);
    } else {
      return events;
    }
  };

  $.fn.command = function(eventName, selector, options, handler) {
    if (options == null) {
      handler = selector;
      selector = null;
    } else if (handler == null) {
      handler = options;
      options = null;
    }
    if ((selector != null) && typeof selector === 'object') {
      options = selector;
      selector = null;
    }
    this.document(eventName, _.humanizeEventName(eventName, options != null ? options['doc'] : void 0));
    return this.on(eventName, selector, options != null ? options['data'] : void 0, handler);
  };

  $.fn.iconSize = function(size) {
    return this.width(size).height(size).css('font-size', size);
  };

  $.fn.intValue = function() {
    return parseInt(this.text());
  };

  $.Event.prototype.abortKeyBinding = function() {};

  $.Event.prototype.currentTargetView = function() {
    return $(this.currentTarget).view();
  };

  $.Event.prototype.targetView = function() {
    return $(this.target).view();
  };

  if (typeof module !== "undefined" && module !== null) {
    module.exports = $;
  } else {
    this.$ = $;
  }

}).call(this);

(function() {
  var $, Builder, Events, SelfClosingTags, Tags, View, callAttachHook, exports, idCounter, jQuery, methodName, originalCleanData, _fn, _fn1, _i, _j, _len, _len1, _ref, _ref1,
    __hasProp = {}.hasOwnProperty,
    __extends = function(child, parent) { for (var key in parent) { if (__hasProp.call(parent, key)) child[key] = parent[key]; } function ctor() { this.constructor = child; } ctor.prototype = parent.prototype; child.prototype = new ctor(); child.__super__ = parent.prototype; return child; },
    __slice = [].slice;

  if (typeof require === 'function') {
    $ = jQuery = require('./jquery-extensions');
  } else {
    $ = jQuery = window.jQuery;
  }

  Tags = 'a abbr address article aside audio b bdi bdo blockquote body button\
   canvas caption cite code colgroup datalist dd del details dfn div dl dt em\
   fieldset figcaption figure footer form h1 h2 h3 h4 h5 h6 head header hgroup\
   html i iframe ins kbd label legend li map mark menu meter nav noscript object\
   ol optgroup option output p pre progress q rp rt ruby s samp script section\
   select small span strong style sub summary sup table tbody td textarea tfoot\
   th thead time title tr u ul video area base br col command embed hr img input\
   keygen link meta param source track wbrk'.split(/\s+/);

  SelfClosingTags = {};

  'area base br col command embed hr img input keygen link meta param\
 source track wbr'.split(/\s+/).forEach(function(tag) {
    return SelfClosingTags[tag] = true;
  });

  Events = 'blur change click dblclick error focus input keydown\
   keypress keyup load mousedown mousemove mouseout mouseover\
   mouseup resize scroll select submit unload'.split(/\s+/);

  idCounter = 0;

  View = (function(_super) {
    __extends(View, _super);

    View.builderStack = null;

    Tags.forEach(function(tagName) {
      return View[tagName] = function() {
        var args, _ref;
        args = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
        return (_ref = this.currentBuilder).tag.apply(_ref, [tagName].concat(__slice.call(args)));
      };
    });

    View.subview = function(name, view) {
      return this.currentBuilder.subview(name, view);
    };

    View.text = function(string) {
      return this.currentBuilder.text(string);
    };

    View.tag = function() {
      var args, tagName, _ref;
      tagName = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      return (_ref = this.currentBuilder).tag.apply(_ref, [tagName].concat(__slice.call(args)));
    };

    View.raw = function(string) {
      return this.currentBuilder.raw(string);
    };

    View.pushBuilder = function() {
      var builder;
      builder = new Builder;
      if (this.builderStack == null) {
        this.builderStack = [];
      }
      this.builderStack.push(builder);
      return this.currentBuilder = builder;
    };

    View.popBuilder = function() {
      this.currentBuilder = this.builderStack[this.builderStack.length - 2];
      return this.builderStack.pop();
    };

    View.buildHtml = function(fn) {
      var html, postProcessingSteps, _ref;
      this.pushBuilder();
      fn.call(this);
      return _ref = this.popBuilder().buildHtml(), html = _ref[0], postProcessingSteps = _ref[1], _ref;
    };

    View.render = function(fn) {
      var div, fragment, html, postProcessingSteps, step, _i, _len, _ref;
      _ref = this.buildHtml(fn), html = _ref[0], postProcessingSteps = _ref[1];
      div = document.createElement('div');
      div.innerHTML = html;
      fragment = $(div.childNodes);
      for (_i = 0, _len = postProcessingSteps.length; _i < _len; _i++) {
        step = postProcessingSteps[_i];
        step(fragment);
      }
      return fragment;
    };

    function View() {
      var args, element, html, postProcessingSteps, step, _i, _j, _len, _len1, _ref, _ref1;
      args = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
      _ref = this.constructor.buildHtml(function() {
        return this.content.apply(this, args);
      }), html = _ref[0], postProcessingSteps = _ref[1];
      jQuery.fn.init.call(this, html);
      if (this.length !== 1) {
        throw new Error("View markup must have a single root element");
      }
      this.wireOutlets(this);
      this.bindEventHandlers(this);
      jQuery.data(this[0], 'view', this);
      _ref1 = this[0].getElementsByTagName('*');
      for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
        element = _ref1[_i];
        jQuery.data(element, 'view', this);
      }
      this[0].setAttribute('callAttachHooks', true);
      for (_j = 0, _len1 = postProcessingSteps.length; _j < _len1; _j++) {
        step = postProcessingSteps[_j];
        step(this);
      }
      if (typeof this.initialize === "function") {
        this.initialize.apply(this, args);
      }
    }

    View.prototype.buildHtml = function(params) {
      var html, postProcessingSteps, _ref;
      this.constructor.builder = new Builder;
      this.constructor.content(params);
      _ref = this.constructor.builder.buildHtml(), html = _ref[0], postProcessingSteps = _ref[1];
      this.constructor.builder = null;
      return postProcessingSteps;
    };

    View.prototype.wireOutlets = function(view) {
      var element, outlet, _i, _len, _ref;
      _ref = view[0].querySelectorAll('[outlet]');
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        element = _ref[_i];
        outlet = element.getAttribute('outlet');
        view[outlet] = $(element);
        element.removeAttribute('outlet');
      }
      return void 0;
    };

    View.prototype.bindEventHandlers = function(view) {
      var element, eventName, methodName, selector, _fn, _i, _j, _len, _len1, _ref;
      for (_i = 0, _len = Events.length; _i < _len; _i++) {
        eventName = Events[_i];
        selector = "[" + eventName + "]";
        _ref = view[0].querySelectorAll(selector);
        _fn = function(element) {
          var methodName;
          methodName = element.getAttribute(eventName);
          element = $(element);
          return element.on(eventName, function(event) {
            return view[methodName](event, element);
          });
        };
        for (_j = 0, _len1 = _ref.length; _j < _len1; _j++) {
          element = _ref[_j];
          _fn(element);
        }
        if (view[0].webkitMatchesSelector(selector)) {
          methodName = view[0].getAttribute(eventName);
          (function(methodName) {
            return view.on(eventName, function(event) {
              return view[methodName](event, view);
            });
          })(methodName);
        }
      }
      return void 0;
    };

    View.prototype.pushStack = function(elems) {
      var ret;
      ret = jQuery.merge(jQuery(), elems);
      ret.prevObject = this;
      ret.context = this.context;
      return ret;
    };

    View.prototype.end = function() {
      var _ref;
      return (_ref = this.prevObject) != null ? _ref : jQuery(null);
    };

    return View;

  })(jQuery);

  Builder = (function() {
    function Builder() {
      this.document = [];
      this.postProcessingSteps = [];
    }

    Builder.prototype.buildHtml = function() {
      return [this.document.join(''), this.postProcessingSteps];
    };

    Builder.prototype.tag = function() {
      var args, name, options;
      name = arguments[0], args = 2 <= arguments.length ? __slice.call(arguments, 1) : [];
      options = this.extractOptions(args);
      this.openTag(name, options.attributes);
      if (SelfClosingTags.hasOwnProperty(name)) {
        if ((options.text != null) || (options.content != null)) {
          throw new Error("Self-closing tag " + name + " cannot have text or content");
        }
      } else {
        if (typeof options.content === "function") {
          options.content();
        }
        if (options.text) {
          this.text(options.text);
        }
        return this.closeTag(name);
      }
    };

    Builder.prototype.openTag = function(name, attributes) {
      var attributeName, attributePairs, attributesString, value;
      attributePairs = (function() {
        var _results;
        _results = [];
        for (attributeName in attributes) {
          value = attributes[attributeName];
          _results.push("" + attributeName + "=\"" + value + "\"");
        }
        return _results;
      })();
      attributesString = attributePairs.length ? " " + attributePairs.join(" ") : "";
      return this.document.push("<" + name + attributesString + ">");
    };

    Builder.prototype.closeTag = function(name) {
      return this.document.push("</" + name + ">");
    };

    Builder.prototype.text = function(string) {
      var escapedString;
      escapedString = string.replace(/&/g, '&amp;').replace(/"/g, '&quot;').replace(/'/g, '&#39;').replace(/</g, '&lt;').replace(/>/g, '&gt;');
      return this.document.push(escapedString);
    };

    Builder.prototype.raw = function(string) {
      return this.document.push(string);
    };

    Builder.prototype.subview = function(outletName, subview) {
      var subviewId;
      subviewId = "subview-" + (++idCounter);
      this.tag('div', {
        id: subviewId
      });
      return this.postProcessingSteps.push(function(view) {
        view[outletName] = subview;
        subview.parentView = view;
        return view.find("div#" + subviewId).replaceWith(subview);
      });
    };

    Builder.prototype.extractOptions = function(args) {
      var arg, options, _i, _len;
      options = {};
      for (_i = 0, _len = args.length; _i < _len; _i++) {
        arg = args[_i];
        switch (typeof arg) {
          case 'function':
            options.content = arg;
            break;
          case 'string':
          case 'number':
            options.text = arg.toString();
            break;
          default:
            options.attributes = arg;
        }
      }
      return options;
    };

    return Builder;

  })();

  jQuery.fn.view = function() {
    return this.data('view');
  };

  jQuery.fn.views = function() {
    return this.toArray().map(function(elt) {
      return $(elt).view();
    });
  };

  callAttachHook = function(element) {
    var child, elementsWithHooks, onDom, _i, _j, _len, _len1, _ref, _ref1, _results;
    if (!(element instanceof jQuery && element[0])) {
      return;
    }
    onDom = (typeof element.parents === "function" ? element.parents('html').length : void 0) > 0;
    elementsWithHooks = [];
    if (element[0].getAttribute('callAttachHooks')) {
      elementsWithHooks.push(element[0]);
    }
    if (onDom) {
      _ref = element[0].querySelectorAll('[callAttachHooks]');
      for (_i = 0, _len = _ref.length; _i < _len; _i++) {
        child = _ref[_i];
        elementsWithHooks.push(child);
      }
    }
    _results = [];
    for (_j = 0, _len1 = elementsWithHooks.length; _j < _len1; _j++) {
      element = elementsWithHooks[_j];
      _results.push((_ref1 = $(element).view()) != null ? typeof _ref1.afterAttach === "function" ? _ref1.afterAttach(onDom) : void 0 : void 0);
    }
    return _results;
  };

  _ref = ['append', 'prepend', 'after', 'before'];
  _fn = function(methodName) {
    var originalMethod;
    originalMethod = $.fn[methodName];
    return jQuery.fn[methodName] = function() {
      var arg, args, flatArgs, result, _j, _len1, _ref1;
      args = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
      flatArgs = (_ref1 = []).concat.apply(_ref1, args);
      result = originalMethod.apply(this, flatArgs);
      for (_j = 0, _len1 = flatArgs.length; _j < _len1; _j++) {
        arg = flatArgs[_j];
        callAttachHook(arg);
      }
      return result;
    };
  };
  for (_i = 0, _len = _ref.length; _i < _len; _i++) {
    methodName = _ref[_i];
    _fn(methodName);
  }

  _ref1 = ['prependTo', 'appendTo', 'insertAfter', 'insertBefore'];
  _fn1 = function(methodName) {
    var originalMethod;
    originalMethod = jQuery.fn[methodName];
    return jQuery.fn[methodName] = function() {
      var args, result;
      args = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
      result = originalMethod.apply(this, args);
      callAttachHook(this);
      return result;
    };
  };
  for (_j = 0, _len1 = _ref1.length; _j < _len1; _j++) {
    methodName = _ref1[_j];
    _fn1(methodName);
  }

  originalCleanData = jQuery.cleanData;

  jQuery.cleanData = function(elements) {
    var element, view, _k, _len2;
    for (_k = 0, _len2 = elements.length; _k < _len2; _k++) {
      element = elements[_k];
      view = $(element).view();
      if (view && (view != null ? view[0] : void 0) === element) {
        if (typeof view.beforeRemove === "function") {
          view.beforeRemove();
        }
      }
    }
    return originalCleanData(elements);
  };

  exports = exports != null ? exports : this;

  exports.View = View;

  exports.jQuery = jQuery;

  exports.$ = $;

  exports.$$ = function(fn) {
    return View.render.call(View, fn);
  };

  exports.$$$ = function(fn) {
    return View.buildHtml.call(View, fn)[0];
  };

}).call(this);

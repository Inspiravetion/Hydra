(function() {
  var Node, SpanSkipList, clone, isEqual, random, _ref,
    __slice = [].slice;

  _ref = require('underscore'), random = _ref.random, clone = _ref.clone, isEqual = _ref.isEqual;

  module.exports = SpanSkipList = (function() {
    SpanSkipList.prototype.maxHeight = 8;

    SpanSkipList.prototype.probability = .25;

    function SpanSkipList() {
      var dimensions, i, _i, _ref1;
      dimensions = 1 <= arguments.length ? __slice.call(arguments, 0) : [];
      this.dimensions = dimensions;
      this.head = new Node(this.maxHeight, this.buildZeroDistance());
      this.tail = new Node(this.maxHeight, this.buildZeroDistance());
      for (i = _i = 0, _ref1 = this.maxHeight; 0 <= _ref1 ? _i < _ref1 : _i > _ref1; i = 0 <= _ref1 ? ++_i : --_i) {
        this.head.next[i] = this.tail;
        this.head.distance[i] = this.buildZeroDistance();
      }
    }

    SpanSkipList.prototype.totalTo = function(target, dimension) {
      var i, nextDistanceInTargetDimension, node, totalDistance, _i, _ref1, _ref2;
      totalDistance = this.buildZeroDistance();
      node = this.head;
      for (i = _i = _ref1 = this.maxHeight - 1; _ref1 <= 0 ? _i <= 0 : _i >= 0; i = _ref1 <= 0 ? ++_i : --_i) {
        while (true) {
          if (node.next[i] === this.tail) {
            break;
          }
          nextDistanceInTargetDimension = totalDistance[dimension] + node.distance[i][dimension] + ((_ref2 = node.next[i].element[dimension]) != null ? _ref2 : 1);
          if (nextDistanceInTargetDimension > target) {
            break;
          }
          this.incrementDistance(totalDistance, node.distance[i]);
          this.incrementDistance(totalDistance, node.next[i].element);
          node = node.next[i];
        }
      }
      return totalDistance;
    };

    SpanSkipList.prototype.splice = function() {
      var count, dimension, elements, index;
      dimension = arguments[0], index = arguments[1], count = arguments[2], elements = 4 <= arguments.length ? __slice.call(arguments, 3) : [];
      return this.spliceArray(dimension, index, count, elements);
    };

    SpanSkipList.prototype.spliceArray = function(dimension, index, count, elements) {
      var element, i, newNode, nextNode, previous, previousDistances, removedElements;
      previous = this.buildPreviousArray();
      previousDistances = this.buildPreviousDistancesArray();
      nextNode = this.findClosestNode(dimension, index, previous, previousDistances);
      removedElements = [];
      while (count > 0 && nextNode !== this.tail) {
        removedElements.push(nextNode.element);
        nextNode = this.removeNode(nextNode, previous, previousDistances);
        count--;
      }
      i = elements.length - 1;
      while (i >= 0) {
        element = elements[i];
        newNode = new Node(this.getRandomNodeHeight(), element);
        this.insertNode(newNode, previous, previousDistances);
        i--;
      }
      return removedElements;
    };

    SpanSkipList.prototype.getLength = function() {
      return this.getElements().length;
    };

    SpanSkipList.prototype.getElements = function() {
      var elements, node;
      elements = [];
      node = this.head;
      while (node.next[0] !== this.tail) {
        elements.push(node.next[0].element);
        node = node.next[0];
      }
      return elements;
    };

    SpanSkipList.prototype.findClosestNode = function(dimension, index, previous, previousDistances) {
      var i, nextHopDistance, node, totalDistance, _i, _ref1, _ref2;
      totalDistance = this.buildZeroDistance();
      node = this.head;
      for (i = _i = _ref1 = this.maxHeight - 1; _ref1 <= 0 ? _i <= 0 : _i >= 0; i = _ref1 <= 0 ? ++_i : --_i) {
        while (true) {
          if (node.next[i] === this.tail) {
            break;
          }
          nextHopDistance = ((_ref2 = node.next[i].element[dimension]) != null ? _ref2 : 1) + node.distance[i][dimension];
          if (totalDistance[dimension] + nextHopDistance > index) {
            break;
          }
          this.incrementDistance(totalDistance, node.distance[i]);
          this.incrementDistance(totalDistance, node.next[i].element);
          this.incrementDistance(previousDistances[i], node.distance[i]);
          this.incrementDistance(previousDistances[i], node.next[i].element);
          node = node.next[i];
        }
        previous[i] = node;
      }
      return node.next[0];
    };

    SpanSkipList.prototype.insertNode = function(node, previous, previousDistances) {
      var coveredDistance, level, _i, _j, _ref1, _ref2, _ref3, _results;
      coveredDistance = this.buildZeroDistance();
      for (level = _i = 0, _ref1 = node.height; 0 <= _ref1 ? _i < _ref1 : _i > _ref1; level = 0 <= _ref1 ? ++_i : --_i) {
        node.next[level] = previous[level].next[level];
        previous[level].next[level] = node;
        node.distance[level] = this.subtractDistances(previous[level].distance[level], coveredDistance);
        previous[level].distance[level] = clone(coveredDistance);
        this.incrementDistance(coveredDistance, previousDistances[level]);
      }
      _results = [];
      for (level = _j = _ref2 = node.height, _ref3 = this.maxHeight; _ref2 <= _ref3 ? _j < _ref3 : _j > _ref3; level = _ref2 <= _ref3 ? ++_j : --_j) {
        _results.push(this.incrementDistance(previous[level].distance[level], node.element));
      }
      return _results;
    };

    SpanSkipList.prototype.removeNode = function(node, previous) {
      var level, _i, _j, _ref1, _ref2, _ref3;
      for (level = _i = 0, _ref1 = node.height; 0 <= _ref1 ? _i < _ref1 : _i > _ref1; level = 0 <= _ref1 ? ++_i : --_i) {
        previous[level].next[level] = node.next[level];
        this.incrementDistance(previous[level].distance[level], node.distance[level]);
      }
      for (level = _j = _ref2 = node.height, _ref3 = this.maxHeight; _ref2 <= _ref3 ? _j < _ref3 : _j > _ref3; level = _ref2 <= _ref3 ? ++_j : --_j) {
        this.decrementDistance(previous[level].distance[level], node.element);
      }
      return node.next[0];
    };

    SpanSkipList.prototype.buildPreviousArray = function() {
      var i, previous, _i, _ref1;
      previous = new Array(this.maxHeight);
      for (i = _i = 0, _ref1 = this.maxHeight; 0 <= _ref1 ? _i < _ref1 : _i > _ref1; i = 0 <= _ref1 ? ++_i : --_i) {
        previous[i] = this.head;
      }
      return previous;
    };

    SpanSkipList.prototype.buildPreviousDistancesArray = function() {
      var distances, i, _i, _ref1;
      distances = new Array(this.maxHeight);
      for (i = _i = 0, _ref1 = this.maxHeight; 0 <= _ref1 ? _i < _ref1 : _i > _ref1; i = 0 <= _ref1 ? ++_i : --_i) {
        distances[i] = this.buildZeroDistance();
      }
      return distances;
    };

    SpanSkipList.prototype.getRandomNodeHeight = function() {
      var height;
      height = 1;
      while (height < this.maxHeight && Math.random() < this.probability) {
        height++;
      }
      return height;
    };

    SpanSkipList.prototype.buildZeroDistance = function() {
      var dimension, distance, _i, _len, _ref1;
      distance = {
        elements: 0
      };
      _ref1 = this.dimensions;
      for (_i = 0, _len = _ref1.length; _i < _len; _i++) {
        dimension = _ref1[_i];
        distance[dimension] = 0;
      }
      return distance;
    };

    SpanSkipList.prototype.incrementDistance = function(distance, delta) {
      var dimension, _i, _len, _ref1, _ref2, _results;
      distance.elements += (_ref1 = delta.elements) != null ? _ref1 : 1;
      _ref2 = this.dimensions;
      _results = [];
      for (_i = 0, _len = _ref2.length; _i < _len; _i++) {
        dimension = _ref2[_i];
        _results.push(distance[dimension] += delta[dimension]);
      }
      return _results;
    };

    SpanSkipList.prototype.decrementDistance = function(distance, delta) {
      var dimension, _i, _len, _ref1, _ref2, _results;
      distance.elements -= (_ref1 = delta.elements) != null ? _ref1 : 1;
      _ref2 = this.dimensions;
      _results = [];
      for (_i = 0, _len = _ref2.length; _i < _len; _i++) {
        dimension = _ref2[_i];
        _results.push(distance[dimension] -= delta[dimension]);
      }
      return _results;
    };

    SpanSkipList.prototype.addDistances = function(a, b) {
      var dimension, distance, _i, _len, _ref1, _ref2, _ref3;
      distance = {
        elements: ((_ref1 = a.elements) != null ? _ref1 : 1) + ((_ref2 = b.elements) != null ? _ref2 : 1)
      };
      _ref3 = this.dimensions;
      for (_i = 0, _len = _ref3.length; _i < _len; _i++) {
        dimension = _ref3[_i];
        distance[dimension] = a[dimension] + b[dimension];
      }
      return distance;
    };

    SpanSkipList.prototype.subtractDistances = function(a, b) {
      var dimension, distance, _i, _len, _ref1, _ref2, _ref3;
      distance = {
        elements: ((_ref1 = a.elements) != null ? _ref1 : 1) - ((_ref2 = b.elements) != null ? _ref2 : 1)
      };
      _ref3 = this.dimensions;
      for (_i = 0, _len = _ref3.length; _i < _len; _i++) {
        dimension = _ref3[_i];
        distance[dimension] = a[dimension] - b[dimension];
      }
      return distance;
    };

    SpanSkipList.prototype.verifyDistanceInvariant = function() {
      var distanceOnPreviousLevel, distanceOnThisLevel, level, node, _i, _ref1, _results;
      _results = [];
      for (level = _i = _ref1 = this.maxHeight - 1; _ref1 <= 1 ? _i <= 1 : _i >= 1; level = _ref1 <= 1 ? ++_i : --_i) {
        node = this.head;
        _results.push((function() {
          var _results1;
          _results1 = [];
          while (node !== this.tail) {
            distanceOnThisLevel = this.addDistances(node.element, node.distance[level]);
            distanceOnPreviousLevel = this.distanceBetweenNodesAtLevel(node, node.next[level], level - 1);
            if (!isEqual(distanceOnThisLevel, distanceOnPreviousLevel)) {
              console.log(this.inspect());
              throw new Error("On level " + level + ": Distance " + (JSON.stringify(distanceOnThisLevel)) + " does not match " + (JSON.stringify(distanceOnPreviousLevel)));
            }
            _results1.push(node = node.next[level]);
          }
          return _results1;
        }).call(this));
      }
      return _results;
    };

    SpanSkipList.prototype.distanceBetweenNodesAtLevel = function(startNode, endNode, level) {
      var distance, node;
      distance = this.buildZeroDistance();
      node = startNode;
      while (node !== endNode) {
        this.incrementDistance(distance, node.element);
        this.incrementDistance(distance, node.distance[level]);
        node = node.next[level];
      }
      return distance;
    };

    return SpanSkipList;

  })();

  Node = (function() {
    function Node(height, element) {
      this.height = height;
      this.element = element;
      this.next = new Array(this.height);
      this.distance = new Array(this.height);
    }

    return Node;

  })();

}).call(this);

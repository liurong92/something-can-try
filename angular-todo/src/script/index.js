var angular = require('angular');

var gems = [{
      name: '看书',
      id: 1
    },{
      name: '旅游',
      id: 2
    },{
      name: '跑步',
      id: 3
    }
  ];

var todo = angular.module('todoStore', []);

todo.controller('TodoController', function () {
  this.items = gems;
  _this = this;

  this.removeItem = function (itemId) {
    _this.items = _this.items.filter(function (item) {
      return item.id !== itemId;
    })
  }
});

todo.controller('AddController', function () {
  this.item = {};
  this.addItem = function (items) {
    this.item.id = items.slice(-1)[0].id + 1
    items.push(this.item);
    this.item = {};
  };
});

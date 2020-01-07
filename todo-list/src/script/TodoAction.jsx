var Reflux = require('reflux');

var TodoAction = Reflux.createActions([
  'addTodo',
  'deleteTodo',
  'filterTodo'
]);

module.exports = TodoAction;

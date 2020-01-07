var Reflux = require('reflux');
var TodoAction = require('./TodoAction.jsx');

var TodoStore = Reflux.createStore({
  listenables: [TodoAction],

  getInitialState: function() {
    this.data = {
      todos: [
        {
          title: 'eat',
          id: Math.random()
        },
        {
          title: 'sleep',
          id: Math.random()
        }
      ],
      filterText: ''
    };
    return this.data;
  },

  updateStatus: function(todos) {
    this.data = todos;
    this.trigger(todos);
  },

  onAddTodo: function(item) {
    var newTodo = {
      title: item,
      id: Math.random()
    }

    this.updateStatus({
      todos: this.data.todos.concat(newTodo),
      filterText: ''
    });
  },

  onDeleteTodo: function(id) {
    this.updateStatus({
      todos: this.data.todos.filter(function(item) {
        return item.id !== id;
      }),
      filterText: ''
    });
  },

  onFilterTodo: function(text) {
    this.updateStatus({
      todos: this.data.todos,
      filterText: text
    });
  }
});

module.exports = TodoStore;

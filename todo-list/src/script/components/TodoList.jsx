var React = require('react');
var Reflux = require('reflux');
var TodoStore = require('../TodoStore.jsx');
var Header = require('./Header.jsx');
var List = require('./List.jsx');

var TodoList = React.createClass({
  mixins: [Reflux.connect(TodoStore)],

  render: function() {
    return (
      <div className="todo__body">
        <h1>Todo List</h1>
        <Header filterText={this.state.filterText} />
        <div className="todo__delete">以下请点击删除</div>
        <List todos={this.state.todos} filterText={this.state.filterText} />
      </div>
    );
  }
});

module.exports = TodoList;

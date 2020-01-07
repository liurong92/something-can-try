var React = require('react');
var TodoAction = require('../TodoAction.jsx');

var AddTodo = React.createClass({
  handleAddTodo: function() {
    var todo = React.findDOMNode(this.refs.add).value.trim();
    if (!todo) return;

    TodoAction.addTodo(React.findDOMNode(this.refs.add).value.trim());
    React.findDOMNode(this.refs.add).value = '';
  },

  render: function() {
    return (
      <div>
        <input className="todo__input" type="text" ref="add" placeholder="to do" />
        <br />
        <a className="todo__button" onClick={this.handleAddTodo}>add</a>
      </div>
    )
  }
});

module.exports = AddTodo;

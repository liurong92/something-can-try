var React = require('react');
var TodoAction = require('../TodoAction.jsx');

var FilterTodo = React.createClass({
  handlerFilter: function() {
    TodoAction.filterTodo(
      React.findDOMNode(this.refs.filter).value.trim()
    );
  },

  render: function() {
    return (
      <input type="text" ref="filter" placeholder="search"
        className="todo__input"
        value={this.props.filterText}
        onChange={this.handlerFilter} />
    )
  }
});

module.exports = FilterTodo;

var React = require('react');
var TodoAction = require('../TodoAction.jsx');

var Item = React.createClass({
  handleDeleteTodo: function(id){
    TodoAction.deleteTodo(id);
  },

  render: function() {
    return (
      <li className="todo__li" onClick={this.handleDeleteTodo.bind(this, this.props['data-id'])}>
        {this.props.item}
      </li>
    )
  }
});

module.exports = Item;

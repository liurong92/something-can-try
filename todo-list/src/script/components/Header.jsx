var React = require('react');
var FilterTodo = require('./FilterTodo.jsx');
var AddTodo = require('./AddTodo.jsx');

var Header = React.createClass({
  render: function(){
    return (
      <div>
        <AddTodo />
      </div>
    )
  }
});

module.exports = Header;

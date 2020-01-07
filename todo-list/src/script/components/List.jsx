var React = require('react');
var Item = require('./Item.jsx');

var List = React.createClass({
  render: function() {
    var list = this.props.todos.filter(function(item) {
      return item.title.indexOf(this.props.filterText) > -1;
    }, this);

    return (
      <ul className="todo__ul">
        {
          list.map(function(item) {
            return <Item data-id={item.id} item={item.title} />
          })
        }
      </ul>
    )
  }
});

module.exports = List;

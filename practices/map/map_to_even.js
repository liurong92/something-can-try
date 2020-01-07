'use strict';
function map_to_even(collection){

  var array = [];

  for(var i = 0; i < collection.length; i++) {
    array.push(collection[i] * 2);
  }
  return array;
}

module.exports = map_to_even;

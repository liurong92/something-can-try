'use strict';

function choose_multiples_of_three(collection) {

  var array = [];

  for (var i = 0; i < collection.length; i++) {
    if (collection[i] % 3 === 0) {
      array.push(collection[i]);
    }
  }
  return array;
}

module.exports = choose_multiples_of_three;

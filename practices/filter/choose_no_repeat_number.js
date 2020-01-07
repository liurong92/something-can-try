'use strict';

function choose_no_repeat_number(collection) {

  var array = [];
  for(var i = 0; i < collection.length; i++) {

    var isExisted = false;
    for (var j = 0; j < array.length; j++) {

      if (array[j] === collection[i]) {
        isExisted = true;
      }
    }

    if (!isExisted) {
      array.push(collection[i]);
    }

  }

  return array;
}

module.exports = choose_no_repeat_number;

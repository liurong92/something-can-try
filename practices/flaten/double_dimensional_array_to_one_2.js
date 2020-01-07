'use strict';

function double_to_one(collection) {

  return double_to_one_and_no_repeat(collection, [])
}

function double_to_one_and_no_repeat(collection, array) {

  for(var i = 0; i < collection.length; i++) {
    if(!collection[i].length) {
      var isExisted = false;

      for (var j = 0; j < array.length; j++) {

        if (array[j] === collection[i]) {
          isExisted = true;
        }
      }

      if (!isExisted) {
        array.push(collection[i]);
      }

    } else {
      double_to_one_and_no_repeat(collection[i], array)
    }
  }

  return array;
}


module.exports = double_to_one;

'use strict';

function double_to_one(collection) {

  return double_to_one_mulit(collection, [])
}

function double_to_one_mulit(collection, array) {
  for(var i = 0; i < collection.length; i++) {
    if(!collection[i].length) {
      array.push(collection[i]);
    } else {
      double_to_one_mulit(collection[i], array)
    }
  }

  return array;
}

module.exports = double_to_one;

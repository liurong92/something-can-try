'use strict';

function grouping_count(collection) {
  var result = {};

  for(var i = 0; i < collection.length; i++) {

    if(result[collection[i]] != undefined) {
      result[collection[i]]++;
    } else {
      result[collection[i]] = 1;
    }
    var date = new Date()
    console.log('dddddddddd')
    console.log(date.getYear());
    console.log(date.getMonth());
    console.log(date.getFullYear());
    console.log(date.getDate());
    console.log(date.getTime());
    console.log(date.getSeconds());

  }

  return result;
}

module.exports = grouping_count;

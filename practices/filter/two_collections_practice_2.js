'use strict';

function choose_no_common_elements(collection_a, collection_b) {

  var array = [];
  for(var a = 0; a < collection_a.length; a++) {
    var isExisted = false;
    for(var b = 0; b < collection_b.length; b++) {
      if(collection_a[a] === collection_b[b]) {
        isExisted = true;
      }
    }

    if(!isExisted) {
      array.push(collection_a[a]);
    }
  }
  return array;
}

module.exports = choose_no_common_elements;

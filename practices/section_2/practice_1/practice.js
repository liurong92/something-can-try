function collect_same_elements(collection) {

  var array = [];

  for(var i = 0; i < collection.length; i++) {

    var isExisted = false;

    for(var j = 0; j < array.length; j++) {

      if(array[j].key === collection[i]) {
        isExisted = true;
        array[j].count++;
      }
    }

    if(!isExisted) {
      array.push({'key' : collection[i], 'count' : 1});
    }
  }

  return array;
}

module.exports = collect_same_elements;

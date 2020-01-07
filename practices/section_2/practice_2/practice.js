function count_same_elements(collection) {

  var array = [];

  for(var i = 0; i < collection.length; i++) {
    var value = '';
    var number = 1;
    var array_b = collection[i].split('-');

    value = array_b[0];
    if(array_b[1]) {
      number = parseInt(array_b[1]);
    }

    var isExisted = false;
    for(var j = 0; j < array.length; j++) {

      if(array[j].key === collection[i]) {
        isExisted = true;
        array[j].count += number;
      }
    }

    if(!isExisted) {
      array.push({'key': value, 'count': number});
    }
  }

  return array;
}

module.exports = count_same_elements;

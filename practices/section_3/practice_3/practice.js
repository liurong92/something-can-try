function create_updated_collection(collection_a, object_b) {

  var array = create_one_array(collection_a);

  for (var i = 0; i < array.length; i++) {

    for(var j = 0; j < object_b.value.length; j++) {
      if(object_b.value[j] === array[i].key) {
        var number = parseInt(array[i].count / 3);
        array[i].count -= number;
      }
    }
  }
  return array;

}

function create_one_array(collection) {
  var array = [];

  for(var i = 0; i < collection.length; i++) {
    var isExisted = false;

    for(var j = 0; j < array.length; j++) {
      if(array[j].key === collection[i]) {
        array[j].count += 1;
        isExisted = true;
      }
    }

    if(!isExisted) {
      array.push({'key': collection[i], 'count': 1});
    }
  }

  return array;
}

module.exports = create_updated_collection;

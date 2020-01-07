function create_updated_collection(collection_a, object_b) {

  for(var a = 0; a < collection_a.length; a++) {

    for(var b = 0; b < object_b.value.length; b++) {
      if(collection_a[a].key === object_b.value[b]) {
        var number = parseInt(collection_a[a].count / 3);
        collection_a[a].count -= number;
      }

    }

  }

  return collection_a;
}

module.exports = create_updated_collection;

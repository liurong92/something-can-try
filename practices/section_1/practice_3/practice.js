function collect_same_elements(collection_a, object_b) {
  var array = [];
  for(var a = 0; a < collection_a.length; a++) {
    var isExisted = false;

    for(var b = 0; b < object_b.value.length; b++) {
      if (object_b.value[b] === collection_a[a]) {
        isExisted = true;
      }
    }

    if(isExisted) {
      array.push(collection_a[a]);
    }
  }

  return array;
}

module.exports = collect_same_elements;

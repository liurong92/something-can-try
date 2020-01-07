function count_same_elements(collection) {
  var array = [];

  for(var i = 0; i < collection.length; i++) {
    console.log(collection[i].split(/[(\0-9)]/g));

  }

  return array;
}

module.exports = count_same_elements;

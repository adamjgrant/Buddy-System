var buddySystem = function(objects) {
  var objectArray = [],
      newStrings  = [];

  objectArray = (objects.length ? objects : objectArray.concat(objects)); // Make sure this is an array.
  Array.prototype.map.call(objectArray, function(object) {
    var newString = String(object.innerHTML);

    // Remove whitespaces
    newString = newString.replace(/\s+/g, " ").replace(/^\s|\s$/g, "");
    if (newString) {
      newStrings.push(
        object.innerHTML = newString.replace(
          new RegExp(
            '((?:[^ ]* ){'
            + ((newString.match(/\s/g) || 0).length - 1)
            + '}[^ ]*) '
          )
          , "$1&nbsp;"
        )
      )
    }
    else {
      newStrings.push(void 0);
    }
  })
};

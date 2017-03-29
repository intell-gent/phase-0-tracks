function longet_String(array) {
  var longestString = 0;
  var result = " ";
  for (var i = 0; i < array.length; i++) {
    if (array[i].length > longestString) {
      longestString = array[i].length
      result = array[i];
    }
  }
  console.log(result);
  return result
}

function key_Match(obj1, obj2) {
  var matches = false;
  for (var key in obj1) {
    if (obj1[key] == obj2[key]) {
      matches = true;
    }
  }
  console.log(matches);
  return matches;
}

function random_test_data(integer) {
  var result = []
  var letters = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", 
                 "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", 
                 "u", "v", "w", "x", "y", "z"]
  for (var i = 0; i < integer; i++) {
    var v = 0
    var leterLength = Math.floor(Math.random() * 10)
    var new_word = ""
    while (v <= leterLength) {
      var randomLetter = letters[Math.floor(Math.random() * letters.length)]
      new_word += randomLetter;
      v++;
    } 
    result.push(new_word);
  }
  console.log(result);
  return result;
}

// driver code
longet_String(["long phrase","longest phrase","longer phrase"])

key_Match({name: "Steven", age: 54}, {name: "Tamir", age: 54})

key_Match({name: "Steven", age: 45}, {name: "Tamir", age: 54})

random_test_data(3);

for (var i = 0; i < 10; i++) {
  var result = random_test_data(5);
  result = longet_String(result);
  console.log(result);
}
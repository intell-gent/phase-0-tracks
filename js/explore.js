// write a function that takes a string 
// then reverses the order of string
// use iteration to work though the string
function reverse(string) {
  var new_string = "";
  for (var i = string.length - 1; i >= 0 ; i--) {
    new_string += string[i];
  }
  return new_string;
}
// driver code
var reverse_string = reverse("hello")
if (reverse_string == "olleh") {
  console.log(reverse_string);
} else {
  console.log("something went wrong i did not get the right value.")
}

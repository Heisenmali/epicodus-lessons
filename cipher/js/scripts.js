var sentence = prompt("Enter a sentence.");
console.log(sentence);


var firstAndLast = function(sentence) {
  var firstLetter = sentence.charAt(0).toUpperCase();
  var lastLetter = sentence.charAt(sentence.length - 1).toUpperCase();

  var string = firstLetter + lastLetter;
  return string;
};

console.log(firstAndLast(sentence));


var reverse = function(string) {
  return string.split("").reverse().join("");
}

console.log(reverse(firstAndLast(sentence)));

var letters = reverse(firstAndLast(sentence));


var concat = function(sentence, letters) {
  var newString = sentence + letters;
  return newString;
}

console.log(concat(sentence, letters));

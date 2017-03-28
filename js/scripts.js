$(document).ready(function(){

  $("#userInput").submit(function(e) {
    e.preventDefault();

    var letters = $("#userInput input").val();
    var splitLetters = letters.split("");
    var vowels = ["a", "e", "i", "o", "u"];
    var removedVowels = [];
    var output = [];

    // var letter = ""; This same variable, defined within the inside for loop, is accessible outside of the loop. It doesn't need to be initialy defined outside of the loop. See: var letter = splitLetters[i] lower down within the inside of the for loop.

    // --------- Solution using for loops: (comment out one version to run)

    for (i = 0; i < splitLetters.length; i++) {
      for (j = 0; j < vowels.length; j++) {
        if (splitLetters[i] === vowels[j]) {
          splitLetters[i] = "-";
        }
        var letter = splitLetters[i];
      }
      output.push(letter);
    }

    // --------- Solution using forEach:

    splitLetters.forEach(function(letter) {
      vowels.forEach(function(vowel) {
        if (letter === vowel) {
          letter = "-";
        }
      });
      removedVowels.push(letter);
    });


    output = removedVowels.join("");




  });

});

// --------- Non-flexible solution:

$(document).ready(function(){

  $("#userInput").submit(function(e) {
    e.preventDefault();

    var letters = $("#userInput input").val();
    var splitLetters = letters.split("");
    // alert(splitLetters);

    var vowels = ["a", "e", "i", "o", "u"];
    var output = [];

    for (i = 0; i < splitLetters.length; i++) {
      if (splitLetters[i] === vowels[0] ||
          splitLetters[i] === vowels[1] ||
          splitLetters[i] === vowels[2] ||
          splitLetters[i] === vowels[3] ||
          splitLetters[i] === vowels[4]) {
        output.push("-");
      } else {
        output.push(splitLetters[i]);
      }
    }
    console.log(output);


  });

});


// -------------- Solution using a name function



var vowelCheck = function(letters, char) {

  var letters = $("#sentence").val();
  var splitLetters = letters.split("");
  var chars = $("#characters").val().replace(" ", "");
  var splitChars = chars.split("");
  var removedChar = [];



  splitLetters.forEach(function(letter) {
    splitChars.forEach(function(char) {
      if (letter === char) {
        letter = "-";
      }
    });
    removedChar.push(letter);
  });

  var output = removedChar.join("");
  return output;

}

$(document).ready(function(){

  $("#userInput").submit(function(e) {
    e.preventDefault();
    console.log(vowelCheck());
  });

});















//end page

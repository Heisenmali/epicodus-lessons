var regexCheck = function(sentence) {
  if (sentence.match(/[a-z]/ig)) {
    return true;
  } else {
    return false;
  }
};

var consonantCheck = function(sentence) {
  var consonants = /[^aeiouy]/gi;

  if (sentence[0].match(consonants)) {
    return true;
  }
};


var pigLatin = function(sentence) {

  // var splitSentence = sentence.split("");

  if (regexCheck(sentence) === true) {

    if (consonantCheck(sentence) === true) {
      return sentence.substr(1) + sentence.substr(0, 1) + "ay";

    } else {
      return sentence + "ay";
    }

  } else {
    return sentence;
  }

};




$(function(){
  $("#piglatin").submit(function(e) {
    e.preventDefault();

    var sentence = $("#userinput").val();
    var result = pigLatin(sentence);

    $("#result").text(result);
  });


});

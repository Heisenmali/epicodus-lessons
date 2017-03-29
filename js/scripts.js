var regexCheck = function(sentence) {

  if (sentence.match(/[a-z]/ig)) {
    return true;

  } else {
    return false;
  }

};

var consonantCheck = function(sentence) {

  var consonants = /[^aeiouy]/gi;

  for (i = 0; i < sentence.length; i++) {
    if (sentence[i].match(consonants)) {
      // continue looping

    } else {
      conCut = i;
      return i;
    }
  }

};


var pigLatin = function(sentence) {

  // var splitSentence = sentence.split("");
  // var conCut;


  if (regexCheck(sentence) === true) {

    if (consonantCheck(sentence) > 0) {
      return sentence.substr(conCut) + sentence.substr(0, conCut) + "ay";

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

    var conCut;

    var sentence = $("#userinput").val();
    var result = pigLatin(sentence);

    $("#result").text(result);
  });
});

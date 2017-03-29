var regexCheck = function(sentence) {

  if (sentence.match(/[a-z]/ig)) {
    return true;

  } else {
    return false;
  }

};

var consonantCheck = function(sentence) {

  var consonants = /[^aeiouy]/gi;
  var q = /[q]/i;
  var u = /[u]/i;
  var y = /[y]/i;

  for (var i = 0; i < sentence.length; i++) {
    if (sentence[i].match(consonants)) {
      // continue looping
    } else if (i > 0 && sentence[i - 1].match(q) && sentence[i].match(u)) {
      return i + 1;

    } else if (i === 0 && sentence[i].match(y)){
      return i + 1;
    } else {
      return i;
    }
  }

};


var pigLatin = function(sentence) {

  // var splitSentence = sentence.split("");

  if (regexCheck(sentence) === true) {
    var conCut = consonantCheck(sentence);

    if (conCut > 0) {
      return sentence.substr(conCut) + sentence.substr(0, conCut) + "ay";

    } else {
      return sentence + "way";
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

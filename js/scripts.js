var regexCheck = function(word) {

  if (word.match(/[a-z]/ig)) {
    return true;

  } else {
    return false;
  }

};

var consonantCheck = function(word) {

  var consonants = /[^aeiouy]/gi;
  var q = /[q]/i;
  var u = /[u]/i;
  var y = /[y]/i;

  for (var i = 0; i < word.length; i++) {
    if (word[i].match(consonants)) {
      // continue looping
    } else if (i > 0 && word[i - 1].match(q) && word[i].match(u)) {
      return i + 1;

    } else if (i === 0 && word[i].match(y)){
      return i + 1;
    } else {
      return i;
    }
  }

};


var pigLatin = function(sentence) {

  var splitSentence = sentence.split(" ");
  var newSplitSentence = [];
  var newSentence = "";
  var puncReg = /[.,\/#!$%\^&\*;:{}=\-_`~()]/g
  var punc = "";

  splitSentence.forEach(function(word) {

    if (word.length > 1 && word[word.length - 1].match(puncReg)) {
      punc = word[word.length - 1];
      // word = word.substr(0, word.length - 1); this works too!
      word = word.slice(0, word.length - 1);
    }

    if (regexCheck(word) === true) {
      var conCut = consonantCheck(word);

      if (conCut > 0) {
        newSplitSentence.push(word.substr(conCut) + word.substr(0, conCut) + "ay" + punc);

      } else if (conCut === undefined) {
        newSplitSentence.push(word + "ay" + punc);

      } else {
        newSplitSentence.push(word + "way" + punc);
      }

    } else {
      newSplitSentence.push(word + punc);
    }

  });
  newSentence = newSplitSentence.join(" ");
  return newSentence;
};




$(function(){
  $("#piglatin").submit(function(e) {
    e.preventDefault();

    var sentence = $("#userinput").val();
    var result = pigLatin(sentence);

    $("#result").text(result);
  });
});

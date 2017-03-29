var regexCheck = function(sentence) {
  // var splitSentence = sentence.split("");
  if (sentence.match(/[a-z]/ig)) {
    return true;
  } else {
    return false;
  }
};




var pigLatin = function(sentence) {

  if (regexCheck(sentence) === true) {
    return sentence + "ay";
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

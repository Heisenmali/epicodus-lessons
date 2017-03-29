var pigLatin = function(sentence) {
  return sentence;
};




$(function(){
  $("#piglatin").submit(function(e) {
    e.preventDefault();

    var sentence = $("#userinput").val();
    var result = pigLatin(sentence);

    $("#result").text(result);
  });


});

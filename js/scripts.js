
// BACK-END business logic

var numeralRange = function (rangeNum) {

  var myNumeral = "!";
  if ((rangeNum >= 1) && (rangeNum <= 3)) {
    myNumeral = "I";
  } else if ((rangeNum >= 4) && (rangeNum <= 8)) {
    myNumeral = "V";
  } else if ((rangeNum >= 9) && (rangeNum <= 39)) {
    myNumeral = "X";
  } else if ((rangeNum >= 40) && (rangeNum <= 89)) {
    myNumeral = "L";
  } else if ((rangeNum >= 90) && (rangeNum <= 399)) {
    myNumeral = "C";
  } else if ((rangeNum >= 400) && (rangeNum <= 899)) {
    myNumeral = "D";
  } else if ((rangeNum >= 900) && (rangeNum <= 3999)) {
    myNumeral = "M";
  } else {
    myNumeral = "?";
  }
  // console.log("myNumeral: ", typeof myNumeral);
  return myNumeral;
};

// console.log("func call: " , numeralRange(234));

// FRONT-END user interface logic
$(document).ready(function() {
  $("#romanform").submit(function(e) {
  e.preventDefault();

  var userInputNum = $("input#thing").val();
  // console.log("userInputNum" , userInputNum);

  $(".output span#result1").text(numeralRange(userInputNum));

  });
});

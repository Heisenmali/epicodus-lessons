
// BACK-END business logic


var dFunk = function (dNum) {
  var dWord = "!";
  if ((dNum >= 400) && (dNum <= 499)) {
    dWord = "CD";
  } else if ((dNum >= 500) && (dNum <= 599)) {
    dWord = "D";
  } else if ((dNum >= 600) && (dNum <= 699)) {
    dWord = "DC";
  } else if ((dNum >= 700) && (dNum <= 799)) {
    dWord = "DCC";
  } else if ((dNum >= 800) && (dNum <= 899)) {
    dWord = "DCCC";
  }
  return dWord;
};

console.log("dNum = ", dFunk(500));

var mFunk = function (mNum) {
  var mWord = "!";
  if ((mNum >= 900) && (mNum <= 999)) {
    mWord = "CM";
  } else if ((mNum >= 1000) && (mNum <= 1999)) {
    mWord = "M";
  } else if ((mNum >= 2000) && (mNum <= 2999)) {
    mWord = "MM";
  } else if ((mNum >= 3000) && (mNum <= 3999)) {
    mWord = "MMM";
  }
  return mWord;
};



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

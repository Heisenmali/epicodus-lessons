
// BACK-END business logic


var iFunk = function(iNum) {
  var iWord = "!";
  if (iNum === 0) {
    iWord = "";
  } else if (iNum === 1) {
    iWord = "I";
  } else if (iNum === 2) {
    iWord = "II";
  } else if (iNum === 3) {
    iWord = "III";
  } else {
    iWord = "?";
  }
  return iWord;
};


var vFunk = function(vNum) {
  var vWord = "!";
  if (vNum === 4) {
    vWord = "IV";
  } else if (vNum === 5) {
    vWord = "V";
  } else if (vNum === 6) {
    vWord = "VI";
  } else if (vNum === 7) {
    vWord = "VII";
  } else if (vNum === 8) {
    vWord = "VIII";
  } else {
    vWord = "?";
  }
  return vWord;
};

var xFunk = function(xNum) {
  var xWord = "!";
  if (xNum === 9) {
    xWord = "IX";
  } else if ((xNum >= 10) && (xNum <= 19)) {
    xWord = "X";
  } else if ((xNum >= 20) && (xNum <= 29)) {
    xWord = "XX";
  } else if ((xNum >= 30) && (xNum <= 39)) {
    xWord = "XXX";
  } else {
    xWord = "?";
  }
  return xWord;
};

var lFunk = function(lNum) {
  var lWord = "!";
  if ((lNum >= 40) && (lNum <= 49)) {
    lWord = "XL";
  } else if ((lNum >= 50) && (lNum <= 59)) {
    lWord = "L";
  } else if ((lNum >= 60) && (lNum <= 69)) {
    lWord = "LX";
  } else if ((lNum >= 70) && (lNum <= 79)) {
    lWord = "LXX";
  } else if ((lNum >= 80) && (lNum <= 89)) {
    lWord = "LXXX";
  } else {
    lWord = "?";
  }
  return lWord;
};

var cFunk = function(cNum) {
  var cWord = "!";
  if ((cNum >= 90) && (cNum <= 99)) {
    cWord = "XC";
  } else if ((cNum >= 100) && (cNum <= 199)) {
    cWord = "C";
  } else if ((cNum >= 200) && (cNum <= 299)) {
    cWord = "CC";
  } else if ((cNum >= 300) && (cNum <= 399)) {
    cWord = "CCC";
  } else {
    cWord = "?";
  }
  return cWord;
};

var dFunk = function(dNum) {
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
  } else {
    dWord = "?";
  }
  return dWord;
};

var mFunk = function(mNum) {
  var mWord = "!";
  if ((mNum >= 900) && (mNum <= 999)) {
    mWord = "CM";
  } else if ((mNum >= 1000) && (mNum <= 1999)) {
    mWord = "M";
  } else if ((mNum >= 2000) && (mNum <= 2999)) {
    mWord = "MM";
  } else if ((mNum >= 3000) && (mNum <= 3999)) {
    mWord = "MMM";
  } else {
    mWord = "?";
  }
  return mWord;
};

var numeralRange = function(rangeNum) {
  var numeralWord = "!";
  if ((rangeNum >= 1) && (rangeNum <= 3)) {
    numeralWord = iFunk(rangeNum);
  } else if ((rangeNum >= 4) && (rangeNum <= 8)) {
    numeralWord = vFunk(rangeNum);
  } else if ((rangeNum >= 9) && (rangeNum <= 39)) {
    numeralWord = xFunk(rangeNum);
  } else if ((rangeNum >= 40) && (rangeNum <= 89)) {
    numeralWord = lFunk(rangeNum);
  } else if ((rangeNum >= 90) && (rangeNum <= 399)) {
    numeralWord = cFunk(rangeNum);
  } else if ((rangeNum >= 400) && (rangeNum <= 899)) {
    numeralWord = dFunk(rangeNum);
  } else if ((rangeNum >= 900) && (rangeNum <= 3999)) {
    numeralWord = mFunk(rangeNum);
  } else {
    numeralWord = "?";
  }
  // console.log("numeralWord: ", typeof numeralWord);
  return numeralWord;
};

var mainFunk = function(mainInputStr) {
  var workingNumeralStr = "";
  var workingNumber = parseInt(mainInputStr);
  var mySwitch = -1;
  while ( isNaN(workingNumber) === false) {
    // get another numeralWord, update workingNumeralStr with word
    workingNumeralStr = workingNumeralStr.concat(numeralRange(workingNumber));
    // chop first number off workingNumber
    workingNumber = parseInt(workingNumber.toString().slice(1));
    // console.log("work number: " , workingNumber);
  }
  console.log("IT MADE IT THIS FAR");
  return workingNumeralStr;
};


// FRONT-END user interface logic
$(document).ready(function() {
  $("#romanform").submit(function(event) {
  event.preventDefault();
  var userInputStr = $("input#thing").val();
  // console.log("userInputNum" , userInputNum);
  $(".output span#result1").text(mainFunk(userInputStr));
  $(".output span#result2").text("-")
  });
});

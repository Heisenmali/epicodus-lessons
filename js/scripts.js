
// BACK-END business logic

var iFunk = function () {
  var iWord = "!";
  } if (iNum === 1) {
    iWord = "I";
  } else if (iNum === 2) {
    iWord = "II";
  } else if (iNum === 3) {
    iWord = "III";
  }
  return iWord;
};

var vFunk = function (vNum) {
  var vWord = "!";
  if (vNum >= 40) {
    vWord = "IV";
  } else if (vNum >= 50) {
    vWord = "V";
  } else if (vNum >= 60) {
    vWord = "VI";
  } else if (vNum >= 70) {
    vWord = "VII";
  } else if (vNum >= 80) {
    vWord = "VIII";
  }
  return vWord;
};

var cFunk = function (cNum) {
  var cWord = "!";
  if (cNum === 9) {
    cWord = "XC";
  } else if ((cNum >= 10) && (cNum <= 19)) {
    cWord = "C";
  } else if ((cNum >= 20) && (cNum <= 29)) {
    cWord = "CC";
  } else if ((cNum >= 30) && (cNum <= 39)) {
    cWord = "CCC";
  }
  return cWord;
};

var lFunk = function (lNum) {
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
  }
  return lWord;
};

var cFunk = function (cNum) {
  var cWord = "!";
  if ((cNum >= 90) && (cNum <= 99)) {
    cWord = "XC";
  } else if ((cNum >= 100) && (cNum <= 199)) {
    cWord = "C";
  } else if ((cNum >= 200) && (cNum <= 299)) {
    cWord = "CC";
  } else if ((cNum >= 300) && (cNum <= 399)) {
    cWord = "CCC";
  }
  return cWord;
};

// console.log("dNum = ", cFunk(90));

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

// –––––––– Business Logic
var divByThree = function(workingArray) {
  workingArray.forEach(function(num) {

    var index = workingArray.indexOf(num);

    if (num % 3 === 0 && num % 15 !== 0) {
      workingArray[index] = "ping";
    }
  });
  return workingArray;
};


var divByFive = function(workingArray) {

  workingArray.forEach(function(num) {
    var index = workingArray.indexOf(num);

    if (num % 5 === 0 && num % 15 !== 0) {
      workingArray[index] = "pong";
    }
  });
  return workingArray;
};


var divByFifteen = function(workingArray) {

  workingArray.forEach(function(num) {
    var index = workingArray.indexOf(num);

    if (num % 15 === 0) {
      workingArray[index] = "ping-pong";
    }
  });
  return workingArray;
};


var upCount = function(endNum) {
  var workingArray = [];

  for (let i = 1; i <= endNum; i++) {
    workingArray.push(i);

    // console.log("result: " , workingArray);
    // console.log("i" , i);

    workingArray = divByThree(workingArray);
    workingArray = divByFive(workingArray);
    workingArray = divByFifteen(workingArray);

  }
  return workingArray;
};



// ––––––––  UI Logic

$(function() {
  $("form#pingpong").submit(function(e) {
    e.preventDefault();

    var inputEndNum = $("input#endnum").val();
    // console.log("endnum: " , endNum);
    var result = [];
    $("#output").text(upCount(inputEndNum));
  });

});

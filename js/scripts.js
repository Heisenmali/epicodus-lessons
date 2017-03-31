var divBy = function(workingArray) {

  workingArray.forEach(function(num) {
    var index = workingArray.indexOf(num);

    if (num % 15 === 0) {
      workingArray[index] = "ping-pong";

    } else if (num % 5 === 0) {
      workingArray[index] = "pong";

    } else if (num % 3 === 0) {
      workingArray[index] = "ping";

    } else {
      workingArray[index] = num;
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

    // workingArray = divBy(workingArray);

  }
  workingArray = divBy(workingArray);

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

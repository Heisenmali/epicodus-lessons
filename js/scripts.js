var divBy = function(num) {

<<<<<<< HEAD
  if (num % 15 === 0) {
    num = "ping-pong";

  } else if (num % 5 === 0) {
    num = "pong";

  } else if (num % 3 === 0) {
    num = "ping";
=======
    if (num % 15 === 0) {
      num = "PING–PING";

    } else if (num % 5 === 0) {
      num = "PONG";

    } else if (num % 3 === 0) {
      num = "PING";
>>>>>>> dev

  } else {
    num;
  }

  return num;
};



var upCount = function(endNum) {
  var workingArray = [];

  for (let i = 1; i <= endNum; i++) {
    workingArray.push(divBy(i));
  }
  
  var resultString = workingArray.join(" ");
  return resultString;
};



// ––––––––  UI Logic

$(function() {
  $("form#pingpong").submit(function(e) {
    e.preventDefault();

    var inputEndNum = $("input#endnum").val();

    $("span#result").text(upCount(inputEndNum));
  });

});

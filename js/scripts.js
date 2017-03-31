// –––––––– Business Logic

var upCount = function(endNum) {

  var workingArray = [];

  for (let i = 1; i <= endNum; i++) {
    workingArray.push(i);
    console.log("result: " , workingArray);
    console.log("i" , i);

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

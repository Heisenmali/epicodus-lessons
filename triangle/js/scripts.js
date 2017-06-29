$(document).ready(function(){
  $("#formone").submit(function(event){
    event.preventDefault();

    var a = parseInt($("input#side1").val());
    var b = parseInt($("input#side2").val());
    var c = parseInt($("input#side3").val());

   if ((a + b) <= c || (a + c) <= b || (b + c) <= a) {
      $("#triangle").text("not a triangle");
    } else if ((a === b) && (a === c)) {
      $("#triangle").text("An Equilateral Triangle");
    } else if (a === b || a === c || b === c) {
      $("#triangle").text("An Isosceles Triangle");
    } else {
      $("#triangle").text("A Scalene Triangle");
    }
  });
});

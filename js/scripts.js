$(document).ready(function() {
  $("#specs").submit(function(event) {
    event.preventDefault();
    var height = parseInt($("input#height").val());
    var weight = parseInt($("select#weight").val());

console.log(height);
console.log(weight);

    if (isNaN(height) === true) {
      alert("Please enter a number!")
    } else {
        if (height <= 59 && weight !== 3) {
          $(".shortrides").removeClass("red").addClass("green");
          $(".tallrides").removeClass("green").addClass("red");
          $(".heavyrides").removeClass("green").addClass("red");
        } else if (height >= 59 && weight !== 3){
          $(".tallrides").removeClass("red").addClass("green");
          $(".shortrides").removeClass("green").addClass("red");
          $(".heavyrides").removeClass("red").addClass("green");
        } else if (height >= 59 && weight === 3) {
          $(".heavyrides").removeClass("red").addClass("green");
          $(".tallrides").removeClass("green").addClass("red");
          $(".shortrides").removeClass("green").addClass("red");
        } else {
          $(".heavyrides").removeClass("green").addClass("red");
          $(".tallrides").removeClass("green").addClass("red");
          $(".shortrides").removeClass("green").addClass("red");
        }
      }


  });
});

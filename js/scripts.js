$(document).ready(function() {
  $("#formheight").submit(function(event) {
    event.preventDefault();
    var height = parseInt($("input#height").val());

    if (height <= 59) {
      $(".shortrides").addClass("green").removeClass("red");
      $(".tallrides").removeClass("green").addClass("red");
    } else {
      $(".tallrides").removeClass("red").addClass("green");
      $(".shortrides").removeClass("green").addClass("red");
    }

  });
});

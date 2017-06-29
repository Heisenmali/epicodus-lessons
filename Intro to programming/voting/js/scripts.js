$(document).ready(function() {
  $("#formage").submit(function(event) {
    event.preventDefault();
    var age = parseInt($("input#age").val());

    if (age >= 18) {
      $(".over18").show();
      $(".under18").hide();
    } else {
      $(".under18").show();
      $(".over18").hide();

    }



  });
});

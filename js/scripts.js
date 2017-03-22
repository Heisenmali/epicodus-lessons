$(document).ready(function() {

  $("#formOne").submit(function(event) {
    var fullname = $("input#fullname").val();

    $(".fullname").text(fullname);

    $("#letter").show();

    event.preventDefault();
  });


});

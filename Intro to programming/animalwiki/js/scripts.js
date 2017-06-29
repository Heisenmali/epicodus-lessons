$(document).ready(function() {
  $("form #select").change(function(event) {
    event.preventDefault();

    var anim = $("#select :selected").val();
    console.log(anim);

    if (anim === "Penguin") {
      $(".penguin").show();
      $(".panda").hide();
      $(".dodo").hide();
    } else if (anim === "Panda") {
      $(".panda").show();
      $(".penguin").hide();
      $(".dodo").hide();
    } else if (anim === "Dodo") {
      $(".dodo").show();
      $(".penguin").hide();
      $(".panda").hide();

    } else {
      $(".description").hide();
    }

  });
});

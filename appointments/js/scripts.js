$(document).ready(function() {
  $("form#app").submit(function(event) {
    var name = $("input#name").val();
    var desc = $("input#desc").val();
    var date = $("input#date").val();
    var start = $("input#start").val();
    var end = $("input#end").val();

    $("span#name").text(name);
    $("span#desc").text(desc);
    $("span#date").text(date);
    $("span#start").text(start);
    $("span#end").text(end);

    $("ul").show();

    event.preventDefault();
  });


});

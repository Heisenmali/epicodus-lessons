$(document).ready(function() {
  var async = function() {
    $.getJSON("http://localhost:4567/exp", function(data) {
      $('div').append(data.first)
    });
  }
  setInterval(async,2000);
  document.getElementsByTagName("html")[0].style.visibility = "visible";
});
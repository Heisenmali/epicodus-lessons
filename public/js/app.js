$(document).ready(function() {
  $.getJSON("http://localhost:4567/exp", function(data){
    $('div').text(data.first)
  });
  document.getElementsByTagName("html")[0].style.visibility = "visible";
});
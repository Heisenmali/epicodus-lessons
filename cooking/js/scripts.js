
  var toGallons = function(litres) {
    return litres * 3.785;
  };

  var toFarenheit = function(celcius) {
    return ((celcius * 9.0) / 5.0) + 32.0;
  };

  var toPounds = function(kg) {
    return (kg * 2.20462);
  };

$(document).ready(function(){

  $("form#vol").submit(function(event) {
    event.preventDefault();

    var litres = parseInt($("input#vol").val());
    var gallons = toGallons(litres);

    $("span#output1").text(gallons);
  });

  $("form#heat").submit(function(event) {
    event.preventDefault();

    var celcius = parseInt($("input#heat").val());
    var farenheit = toFarenheit(celcius);

    $("span#output2").text(farenheit);
  });

  $("form#weight").submit(function(event) {
    event.preventDefault();

    var kg = parseInt($("input#weight").val());
    var pounds = toPounds(kg);

    $("span#output3").text(pounds);
  });
});

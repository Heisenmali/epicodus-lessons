var apiKey = "eab4ef10a52f81ef6385eebafe9cd1bd";

$(document).ready(function() {
  $('#weather-location').click(function() {
    var city = $('#location').val();
    $('#location').val("");
    $('.showWeather').text("The city you have chosen is " + city + ".");
    $.get('http://api.openweathermap.org/data/2.5/weather?q=' + city + '&appid=' + apiKey, function(response) {

      var weather = (response.main.humidity);
      console.log(weather);
       $('.showWeather').text("The humidity in " + city + " is " + response.main.humidity + "%");
    });
  });
});

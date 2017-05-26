var Doctor = require('./../js/doctors.js').doctorModule;
var apiKey = require('./../.env').apiKey;

var doctors = [];

var displayData = function() {
  console.log('doctors[0]', doctors[0].apiData);
  
  $('#output').text("");

  for (var i = 0; i < doctors[0].apiData.length; i++) {
    $('#output').append(`<h2> ${doctors[0].apiData[i].profile.first_name} ${doctors[0].apiData[i].profile.last_name}</h2> <br> 
                         <p> ${doctors[0].apiData[i].specialties[0].actor} </p>`);
  }
};

$(function() {
  $('#api').click(function() {
    var medCond = $('#med-cond').val();
    console.log(medCond);
    doctors.push(new Doctor());
    doctors[0].getApi(medCond, apiKey, displayData);
  });
});
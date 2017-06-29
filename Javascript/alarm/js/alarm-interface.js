var Alarm = require('./../js/alarm.js').alarmModule;

var Alarms = {
  currentAlarms: []
};

$(document).ready(function(){
  var currentTime = function() {
    var now = moment().format("HH:mm")
    $('#current-time').text(moment());
    return now;
  };

  $('#alarm').submit(function(e){
    e.preventDefault();
    var name = $('#name').val();
    var time = $('#time').val();
    var newAlarm = new Alarm(name, time)
    Alarms.currentAlarms.push(newAlarm);
  });


  var alarm = function(newAlarm) {
    Alarms.currentAlarms.forEach(function(alarm) {
      if (alarm.time === currentTime() && alarm.status === true) {
        alert('Your alarm just went off.');
        alarm.status = false;
      }
    })
  };

  setInterval(currentTime, 1000);
  setInterval(alarm, 1000);
});

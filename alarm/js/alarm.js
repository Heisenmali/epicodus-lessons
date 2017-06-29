var Alarm = function(name, time) {
  this.alarm = name;
  this.time = time;
  this.status = true;
};

exports.alarmModule = Alarm;

function Calculator(name){
  this.name = name;
}

Calculator.prototype.add = function(num1, num2) {
  return (num1 + num2);
};
Calculator.prototype.subtract = function(num1, num2) {
  return (num1 - num2);
};
Calculator.prototype.multiply = function(num1, num2) {
  return (num1 * num2);
};
Calculator.prototype.devide = function(num1, num2) {
  return (num1 / num2);
};
Calculator.prototype.modulo = function(num1, num2) {
  return (num1 % num2);
};

exports.calc = Calculator;

var Calculator = require('./../js/belend.js').calc;

$(document).ready(function() {
  $('#calc-form').submit(function(event) {
    event.preventDefault();
    firstNum = parseInt($('#num1').val());
    secondNum = parseInt($('#num2').val());
    myCalc = new Calculator('myCalc');
    solu = myCalc.add(firstNum, secondNum);
    $('#solution').text(solu);
  });
});

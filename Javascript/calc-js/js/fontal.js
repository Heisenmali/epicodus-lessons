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

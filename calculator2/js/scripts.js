

var add = function(num1, num2) {
	return num1 + num2;
};

var subtract = function(num1, num2) {
  return num1 - num2;
};

var multiply = function(num1, num2) {
	return num1 * num2;
};


var divide = function(num1, num2) {
  return num1 / num2;
};



$(document).ready(function() {
  $("form#calculator").submit(function(event) {
    event.preventDefault();
    var num1 = parseInt($("#input1").val());
    var num2 = parseInt($("#input2").val());
    var operator = $("input:radio[name=operator]:checked").val();
    var result;
    if (operator === "add") {
      result = add(num1, num2);
    } else if (operator === "subtract") {
      result = subtract(num1, num2);
    } else if (operator === "multiply") {
      result = multiply(num1, num2);
    } else {
      result = divide(num1, num2);
    }

    $("#output").text(result);
  });
});

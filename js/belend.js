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

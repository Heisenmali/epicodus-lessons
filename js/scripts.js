// calculator

var multiply = function(num1, num2) {
	return num1 * num2;
};

var num1 = parseInt(prompt("Pick a number"));
var num2 = parseInt(prompt("Pick another number"));
var result = multiply(num1, num2);
// alert(result);


var divide = function(num1, num2) {
  return num1 / num2;
};

var num1 = parseInt(prompt("Pick a number"));
var num2 = parseInt(prompt("Pick a number"));
var result = divide(num1, num2);
// alert(result);


var add = function(num1, num2) {
  return num1 + num2;
};
var num1 = parseInt(prompt("Pick a number"));
var num2 = parseInt(prompt("Pick a number"));
var result = add(num1, num2);
// alert(result);


var subtract = function(num1, num2) {
  return num1 - num2;
};

var num1 = parseInt(prompt("Pick a number"));
var num2 = parseInt(prompt("Pick another number"));
var result = subtract(num1, num2);
// alert(result);

// bmi

var bmi = function(height, weight) {
  return (weight / (height * height)) * 703;
};

var height = parseInt(prompt("How tall are you?"));
var weight = parseInt(prompt("How heavy are you?"));
var result = bmi(height, weight);

alert(result);

// Temp

var toCelcius = function(farenheit) {
  return ((farenheit - 32.0) * 5.0) / 9.0;
};

var toFarenheit = function(celcius) {
  return ((celcius * 9.0) / 5.0) + 32.0;
};

var celcius = parseFloat(prompt("What is the temp in C"));
// var farenheit = parseFloat(prompt("What is the temp in F"));

alert(toFarenheit(celcius));

// Volumes

var toGallon = function(litres) {
  return litres * 3.785;
};

var toLitre = function(gallons) {
  return gallons / 3.785;
};

var litres = parseFloat(prompt("How many litres do you convert to gallons?"));
var gallons = parseFloat(prompt("How many gallons do you want to convert to litres?"));

alert(toLitre(gallons));

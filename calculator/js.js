var greeting = function() {
	var saySomething = function(whatToSay) {
	alert(whatToSay);
	};
  var name = prompt("What is your name?");
	saySomething("Hi " + name + "!");
}

greeting();




var subtract = function(number1, number2) {
	return number1 - number2;
}

alert(subtract(9, 3));






var saySomething = function(whatToSay) {
	alert(whatToSay);
}

var subtract = function(number1, number2) {
	return number1 - number2;
}

saySomething("The result is " + subtract(9, 3));



var multiply = function(num1, num2) {
	return num1 * num2;
};

alert(multiply(4, 5));



var mult = function(num1, num2, num3){
	return num1 * num2 * num3;
}

alert(mult(3, 4, 5));



var div = function(num1, num2){
	return num1 / num2;
};

alert(div(12, 3));



var remainder = function(num1, num2) {
	return num1 % num2;
};

alert(remainder(45, 6));



var name = prompt("What is your name?");

var age = prompt("What is your age!");

var food = prompt("What's your favourite food?");

alert("Your name is " + name + " , you are " + age + " and you like " + food + ".");



var phrase = function(name, age, food) {
	return "Your name is " + name + " , you are " + age + " and you like " + food + ".";
};

alert(phrase("Trevor", "39", "Pickles"));





var mult = function(num1, num2) {
	return num1 * num2;
};

var num1 = parseInt(prompt("Pick a number"));
var num2 = parseInt(prompt("Pick another number"));

alert(mult(num1, num2));

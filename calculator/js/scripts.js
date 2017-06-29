





// calculator


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

	$("form#add").submit(function(event) {
		event.preventDefault();

		var num1 = parseInt($("input#add1").val());
		var num2 = parseInt($("input#add2").val());
		var result = add(num1, num2);

		$(".addresult").text(result);
	});




	$("form#subtract").submit(function(event) {
		event.preventDefault();

		var num1 = parseInt($("input#sub1").val());
		var num2 = parseInt($("input#sub2").val());
		var result = subtract(num1, num2);


		$(".subresult").text(result);

	});

	$("form#multiply").submit(function(event) {
			event.preventDefault();


			var num1 = parseInt($("input#mult1").val());
			var num2 = parseInt($("input#mult2").val());
			var result = multiply(num1, num2);

		$(".multresult").text(result);
	});


		$("form#divide").submit(function(event) {
			event.preventDefault();

			var num1 = parseFloat($("input#div1").val());
			var num2 = parseFloat($("input#div2").val());
			var result = divide(num1, num2);
			$(".divresult").text(result);
	});

	$("form #beverage").change(function(event) {
		event.preventDefault();

		var beverage = $("#beverage :selected").val();

		if (beverage === "First number") {
			$(".firstnum").show();
			$(".secondnum").hide();
		} else {
			$(".firstnum").hide();
			$(".secondnum").show();
		};

	});


});











// bmi
//
// var bmi = function(height, weight) {
//   return (weight / (height * height)) * 703;
// };
//
// var height = parseInt(prompt("How tall are you?"));
// var weight = parseInt(prompt("How heavy are you?"));
// var result = bmi(height, weight);
//
// alert(result);
//
// // Temp
//
// var toCelcius = function(farenheit) {
//   return ((farenheit - 32.0) * 5.0) / 9.0;
// };
//
// var toFarenheit = function(celcius) {
//   return ((celcius * 9.0) / 5.0) + 32.0;
// };
//
// var celcius = parseFloat(prompt("What is the temp in C"));
// // var farenheit = parseFloat(prompt("What is the temp in F"));
//
// alert(toFarenheit(celcius));
//
// // Volumes
//
// var toGallon = function(litres) {
//   return litres * 3.785;
// };
//
// var toLitre = function(gallons) {
//   return gallons / 3.785;
// };
//
// var litres = parseFloat(prompt("How many litres do you convert to gallons?"));
// var gallons = parseFloat(prompt("How many gallons do you want to convert to litres?"));
//
// alert(toLitre(gallons));

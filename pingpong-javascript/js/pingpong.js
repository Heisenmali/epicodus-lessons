// business logic
function Calculator(skinName) {
  this.skin = skinName;
}

Calculator.prototype.pingPong = function(goal) {
  var output = [];
  var pingsArray = ["ping", "pong"];
  for (var i = 1; i <= goal; i++) {
    if (i % 15 === 0) {
      output.push(pingsArray.join(''));
    } else if (i % 3 === 0) {
      output.push(pingsArray[0]);
    } else if (i % 5 === 0) {
      output.push(pingsArray[1]);
    } else {
      output.push(i);
    }
  }
  return output;
};

exports.calculatorModule = Calculator;
// allows the calculator module with its function to be accessed in other parts of the project.

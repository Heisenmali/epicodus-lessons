// Business logic
function Game(players){
  this.players = [];
}
// Making constructor for player
function Player(score, tempScore, exit) {
  this.score = score;
  this.tempScore = tempScore;
  this.exit = exit;
}

Game.prototype.turn = function () {

  if(this.players[0].exit === true ) {
    this.players[1].exit = false;
    console.log("switch to player 2");  

  } else if(this.players[1].exit === true) {
    console.log("player 0" , this.players[0].exit);
    console.log("player 1" , this.players[1].exit);
    this.players[0].exit = false;
    console.log("player 0 after change" , this.players[0].exit);
    console.log("switch to player 1");
  } else {
    console.log("Nope");
  }
};

// Dice roll generator
Player.prototype.roll = function () {
  return Math.floor(Math.random() * (7 - 1)) + 1;
};

//keeps score
Player.prototype.check = function () {

  const diceRoll = this.roll(); //stores die roll by calling roll function
  console.log("roll: " , diceRoll);

  if (this.exit) {
    var exitScore = this.score += this.tempScore; //add tempScore to the total score, and exits the function
    console.log("score at hold: " , this.score);

    return exitScore; //returns total score
  }

  if(diceRoll === 1) {
    this.tempScore = 0; //change tempScore to 0 when dieroll is a 1
    console.log("score: " , this.score);
    this.exit = true;
    return this.score += this.tempScore; //adds 0 to score

  } else {
    this.tempScore += diceRoll; //adds roll value to tempScore
    console.log("tempscore: " , this.tempScore);
  }
};


// UI logic

$(function() {
  var game = new Game();

  game.players.push(new Player(0, 0, false)); //adds player to players array in game object
  game.players.push(new Player(0, 0, true));
  console.log(game);

  $("button#roll").click(function() {
    game.turn();
  });

  $("button#exit").click(function(){

    game.turn();
  });

});

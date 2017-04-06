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

//returns the current player (whichever player has an exit property of false)
Game.prototype.currentPlayer = function () {
  var player = null;

  //current player is player 0
  if (this.players[0].exit === false) {
    player = this.players[0];

  //current player is player 1  
  } else {
    player = this.players[1];

  }
  return player;
}


Game.prototype.turn = function () {
  //Adds tempScore to the score property of the player object
  this.currentPlayer().score += this.currentPlayer().tempScore;
  //reset tempScore to 0
  this.currentPlayer().tempScore = 0;
  console.log("score at hold: " , this.currentPlayer().score);
  //changes from player 0, to player 1
  if (this.currentPlayer() === this.players[0]) {
    this.players[0].exit = true;
    this.players[1].exit = false;
    console.log("switch to player 1");

  //changes from player 1, to player 0
  } else {
    this.players[0].exit = false;
    this.players[1].exit = true;
    console.log("switch to player 0");
  }
};

//Main game loop. Runs when you hit 'roll dice'
Game.prototype.playerRoll = function () {
  //runs check() on currentPlayer() even when the statement evaluates to false
  //The check function will store tempScore in the object each time playerRoll is run
  if(this.currentPlayer().check() === 1){
     this.turn();
  }
}


// Dice roll generator
var roll = function () {
  return Math.floor(Math.random() * (7 - 1)) + 1;
};


//keeps score
Player.prototype.check = function () {
  //stores die roll by calling roll function
  const diceRoll = roll();
  console.log("roll: " , diceRoll);

  if(diceRoll === 1) {
    this.tempScore = 0; //change tempScore to 0 when dieroll is a 1
    console.log("score: " , this.score);

    return diceRoll; //adds 0 to score

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
    game.playerRoll();
  });

  $("button#exit").click(function(){
    game.turn();
  });
});

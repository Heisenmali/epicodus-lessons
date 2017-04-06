// Business logic
function Game(players){
  this.players = [];
}

// Making constructor for player
function Player(playerName, score, tempScore, currentRoll, exit) {
  this.playerName = playerName;
  this.score = score;
  this.tempScore = tempScore;
  this.currentRoll = currentRoll;
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
  var score = this.currentPlayer().score += this.currentPlayer().tempScore;
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

  return score;
};

//Main game loop. Runs when you hit 'roll dice'
Game.prototype.playerRoll = function () {
  //runs check() on currentPlayer() even when the statement evaluates to false
  //The check function will store tempScore in the object each time playerRoll is run
  if(this.currentPlayer().check() === 1){
    var roll = this.currentPlayer().currentRoll;
    this.turn();
    return roll;
  }
}


// Dice roll generator
Player.prototype.roll = function () {
  var dieRoll = Math.floor(Math.random() * (7 - 1)) + 1;
  this.currentRoll = dieRoll;
  return dieRoll;
};


//keeps score
Player.prototype.check = function () {
  //stores die roll by calling roll function
  const diceRoll = this.roll();
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

  game.players.push(new Player("Player 1", 0, 0, 1, false)); //adds player to players array in game object
  game.players.push(new Player("Player 2",0, 0, 1, true));
  console.log(game);

  //displays the score of the current player
  var scoreDisplay = function() {
    if (game.currentPlayer() === game.players[0]) {
      $("#player-0 .score").text("Score: " + game.currentPlayer().score);
      $("#player-0 .temp-score").text("Round score: " + game.currentPlayer().tempScore);

    } else {
      $("#player-1 .score").text("Score: " + game.currentPlayer().score);
      $("#player-1 .temp-score").text("Round score: " + game.currentPlayer().tempScore);
    }
  }

  var scoreHold = function() {
    var totalScore = null;
    if (game.currentPlayer() === game.players[0]) {
      $("#player-0 .score").text("Score: " + (totalScore = game.turn()));
      $("#player-0 .temp-score").text("Round score: " + game.currentPlayer().tempScore);


    } else {
      $("#player-1 .score").text("Score: " + (totalScore = game.turn()));
      $("#player-1 .temp-score").text("Round score: " + game.currentPlayer().tempScore);
    }

    if (totalScore >= 60) {
      $(".container").hide();
      $("body").append("<h1 id='victory'>" + game.currentPlayer().playerName + ", YOU LOSE!</h1>");
    }
  }

  var rollDisplay = function(playerRoll) {
    if (playerRoll === 1){
      $("#dice-roll").text("You rolled a 1. It's " + game.currentPlayer().playerName + "'s turn to SHRED!");

    } else {
      $("#dice-roll").text("Current roll: " + game.currentPlayer().currentRoll);
    }

  }

  $("button#roll").click(function() {
    var playerRoll = game.playerRoll();

    scoreDisplay();
    rollDisplay(playerRoll);

    $("#playing").text("Currently Playing: " + game.currentPlayer().playerName);
  });

  $("button#exit").click(function(){

    scoreHold();

    $("#dice-roll").text(game.currentPlayer().playerName + "'s turn")
    $("#playing").text("Currently Playing: " + game.currentPlayer().playerName);
  });
});

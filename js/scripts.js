//back-end
function Data(color) {
  this.color = color;
  this.json = {
    timeSignature: [4, 4],
    tempo: 100,
    instruments: {
      rightHand: {
        name: 'square',
        pack: 'oscillators'
      },
    },
    notes: {
      rightHand: [],
    }
  };
}

function System() {
  this.grid = [];
  this.coords = [0, 0];
  this.gridSize = 3;
  this.conductor = null;
  this.player = null;
  this.keys = [];
}

System.prototype.initialize = function() {
  this.generateArray();
  this.initializeConductor();
  this.staticJSON();
  this.loadSounds();
}

System.prototype.generateArray = function() {
  for (var i = 0; i < this.gridSize; i++) {
    this.grid.push([]);
    for (var n = 0; n < this.gridSize; n++) {
      this.grid[i].push(`-`);
    }
  }
}

System.prototype.initializeConductor = function() {
  this.conductor = new BandJS();
}

System.prototype.staticJSON = function() {
  this.grid[0][0] = new Data("rgb(234,120,98)");
  this.grid[0][1] = new Data(" rgb(254,240,145) ");
  this.grid[0][2] = new Data("rgb(53,209,133)");
  this.grid[1][0] = new Data("rgb(246,86,71)");
  this.grid[1][1] = new Data("rgb(246,246,246)");
  this.grid[1][2] = new Data("rgb(86,185,199)");
  this.grid[2][0] = new Data("rgb(214,105,137)");
  this.grid[2][1] = new Data("rgb(105,96,160)");
  this.grid[2][2] = new Data("rgb(83,129,217)");

  this.grid[0][0].json.notes.rightHand = ['sixteenth|B2|tie', 'sixteenth|D3|tie', 'sixteenth|G3|tie'];
  this.grid[0][1].json.notes.rightHand = ['sixteenth|B2|tie', 'sixteenth|E3|tie', 'sixteenth|G3|tie'];
  this.grid[0][2].json.notes.rightHand = ['sixteenth|A2|tie', 'sixteenth|D3|tie', 'sixteenth|F3|tie'];
  this.grid[1][0].json.notes.rightHand = ['sixteenth|G3|tie', 'sixteenth|B3|tie', 'sixteenth|D4|tie'];
  this.grid[1][1].json.notes.rightHand = ['sixteenth|C3|tie', 'sixteenth|E3|tie', 'sixteenth|G3|tie'];
  this.grid[1][2].json.notes.rightHand = ['sixteenth|B2|tie', 'sixteenth|D3|tie', 'sixteenth|G3|tie'];
  this.grid[2][0].json.notes.rightHand = ['sixteenth|B2|tie', 'sixteenth|D3|tie', 'sixteenth|F3|tie'];
  this.grid[2][1].json.notes.rightHand = ['sixteenth|C3|tie', 'sixteenth|F3|tie', 'sixteenth|A3|tie'];
  this.grid[2][2].json.notes.rightHand = ['sixteenth|B2|tie', 'sixteenth|D3|tie', 'sixteenth|F3|tie'];
}

System.prototype.updateSound = function(){
  this.stopSound();
  this.reinitializeConductor();
  this.loadSounds();
  this.startSound();
}

System.prototype.reinitializeConductor = function() {
  this.conductor.audioContext.close();
  this.conductor.destroy();
}

System.prototype.loadSounds = function() {
  this.player = this.conductor.load(this.grid[this.coords[0]][this.coords[1]].json);
}

System.prototype.startSound = function() {
  this.player.play();
  this.player.loop(true);
}

System.prototype.stopSound = function() {
  this.player.stop(true);
}

System.prototype.update = function(keyCode, eventType) {
  if(eventType === "keydown"){
    this.addKeys(keyCode)
  } else if(eventType === "keyup") {
    this.removeKeys(keyCode)
  }
  this.updateCoords();
  this.updateSound();
}
System.prototype.addKeys = function(key){
  this.keys.push(key);
  if(this.keys.length > 2){
    this.keys.shift();
  }
}

System.prototype.removeKeys = function(key){
  if(this.keys.indexOf(key) === 0){
    this.keys.shift();
  } else {
    this.keys.pop();
  }
}

System.prototype.getCoords = function(){
  return this.coords;
}

System.prototype.updateCoords = function(){
  //left: 37 right: 39 up: 38 down: 40
  if(this.keys.includes(37) && this.keys.includes(38)){
    this.coords = [0,0]
  } else if(this.keys.includes(38) && this.keys.includes(39)) {
    this.coords = [2,0]
  } else if(this.keys.includes(39) && this.keys.includes(40)) {
    this.coords = [2,2]
  } else if(this.keys.includes(40) && this.keys.includes(37)) {
    this.coords = [0,2]
  } else if(this.keys[this.keys.length-1] === 38) {
    this.coords = [1,0]
  } else if(this.keys[this.keys.length-1] === 39) {
    this.coords = [2,1]
  } else if(this.keys[this.keys.length-1] === 40) {
    this.coords = [1,2]
  } else if(this.keys[this.keys.length-1] === 37) {
    this.coords = [0,1]
  } else if(this.keys.length === 0) {
    this.coords = [1,1]
  }
}

//front-end
var generateDomGrid = function(){
  for (var i = 0; i < 3; i++){
    $(".container").append(`<div class="grid-row" id="row-${i}"></div>`);
    for (var n = 0; n < 3; n++) {
        $(`#row-${i}`).append(`<div class="grid-space" id="s${n}${i}"><div class="circle-boy"></div></div>`);
    }
  }
  $(".container").append(`<div id="instructions"><h1>arrow keys</h1><h1>kick it</h1></div>`);
}

var updateHighlight = function(system){
  var coords = system.getCoords();
  $(`.circle-boy`).css({
    width: "60%",
    height: "60%",
    "margin" : "20%",
    "box-shadow": "0 0 0 0"
  });
  $(`#s${coords[0]}${coords[1]} .circle-boy`).css({
    width: "90%",
    height: "90%",
    "box-shadow": "5px 5px 20px -3px grey",
    transition: "box-shadow .2s ease-in-out",
    "margin" : "5%"
  });
}

var clearInitial = function(){
  $("#instructions h1").css({
    "text-shadow": "rgb(246,246,246) 0 0 0",
    transition: "text-shadow .3s ease-in-out",
  });
  $(".circle-boy").css({
    "box-shadow": "0 0 0 0",
  });
  return false;
}

$(document).ready(function() {
  var newSystem = new System();
  var initial = true;
  newSystem.initialize();
  generateDomGrid();

  $(document).keydown(function(event) {
    if(initial){initial = clearInitial();}
    var keyCode = event.keyCode;
    if(!newSystem.keys.includes(keyCode)){
      newSystem.update(keyCode, event.type);
      updateHighlight(newSystem);
    }
  });

  $(document).keyup(function(event){
    var keyCode = event.keyCode;
    if(newSystem.keys.includes(keyCode)){
      newSystem.update(keyCode, event.type);
      updateHighlight(newSystem);
    }
  });
});

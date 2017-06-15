{type: 'safe'}

var grid =

[
  [{type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}],
  [{type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}],
  [{type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}],
  [{type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}],
  [{type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}],
  [{type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}],
  [{type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}],
  [{type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}, {type: 'safe'}]
];

//grid[y][x]

var compareObjects = function(one, two) {
  if (one === undefined) {
    return false
  }

  var x_values = false;
  var y_values = false;

  if (one.x === two.x)
    x_values = true;

  if (one.y === two.y)
    y_values = true;

  if (x_values === true && y_values === true) {
    return true;
  } else {
    return false;
  }
}

var addMines = function() {
  var mines = generateMines();

  console.log(mines)

  for (var i in mines) {
    var grid_x = mines[i].x;
    var grid_y = mines[i].y;

    grid[grid_y][grid_x].type = "mine";
  }
}


//  1. Select a random square from the grid record its coordinates
//  2. Assign it as a mine
//  3. Keep count of mine number
//  4. select  new random square check if it's already been selected. If so select a new one. If not go to step 2
var generateMines = function() {

  var mines = [];

  while (mines.length < 10) {
    var selectedMine = {x: 0, y: 0}
    var duplicates = false;

    selectedMine.x = Math.floor(Math.random() * 8); // 0 <= x <= 7
    selectedMine.y = Math.floor(Math.random() * 8);
    // console.log(selectedMine)

    if (mines.length === 0 ) {
      mines.push(selectedMine);
      continue;
    }

    for (var i in mines) {
      if (!compareObjects(mines[i], selectedMine)) {
        duplicates = false;
      } else {
        duplicates = true;
      }
    }
    if (!duplicates) {
      mines.push(selectedMine);
    }
  }
  return mines;
}



//running the app
var run = function() {
  console.log(grid);
}

window.onload = function() {
  addMines();
  run();
}

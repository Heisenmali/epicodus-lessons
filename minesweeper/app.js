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

// –––––––––––––––––– GRID GENERATION

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

  // console.log(mines)

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


// ––––––––––––– Neighbor check

var mineCheck = function(neighbor, node) {
  if (neighbor.type === 'mine') {
    node.counter +=1;
    return true;
  } else {
    return false;
  }
}

var propagation = function(ny, nx) {

  if(marked) {return}

  var node = grid[ny][nx];
  var endProp = false;

  node.counter = 0;
  node.marked = true;


    // endProp = mineCheck(grid[ny][nx-1], node)    // left
    // endProp = mineCheck(grid[ny][nx], node)
    // endProp = mineCheck(grid[ny][nx+1], node)    //right
    //
    // endProp = mineCheck(grid[ny-1][nx+1], node)  //up-right
    // endProp = mineCheck(grid[ny-1][nx], node)    //up
    // endProp = mineCheck(grid[ny-1][nx-1], node)  //up-left
    //
    // endProp = mineCheck(grid[ny+1][nx-1], node)  //down-left
    // endProp = mineCheck(grid[ny+1][nx], node)    //down
    // endProp = mineCheck(grid[ny+1][nx+1], node)  //down-right

  for (var i = -1; i < 2; i++) {
    for (var j = -1; j < 2; j++) {
      if (mineCheck(grid[ny + i][nx + j])) {
        endProp = true;
      }
    }
  }


  if (endprop === true) {
    return false;
  }




  if (!endProp) {

    for (var i = -1; i < 2; i++) {
      for (var j = -1; j < 2; j++) {
        propagation(ny + i, nx + j)
      }
    }
  }
}






//running the app
var run = function() {
  console.log(grid);
  propagation(3, 3);
  console.log(grid);
}

window.onload = function() {
  addMines();
  run();
}

// BE logic

function Viewer(movieName, age, timeOfDay) {
  this.movieName = movieName;
  this.age = age;
  this.timeOfDay = timeOfDay;
}

// function Movie(movieName, ageRating, time) {
//   this.movieName = movieName;
//   this.ageRating = ageRating;
//   this.time = time;
// }
// function MovieTheater() {
//   this.movies = {
//     theDouble: {
//       movieName: "The Double",
//       ageRating: 18,
//       time: [2, 4],
//       price: 10
//     },
//
//     waterWorld: {
//       movieName: "Waterworld",
//       ageRating: 15,
//       time: [1, 4],
//       price: 12
//     },
//
//     avatar2: {
//       movieName: "Avatar 2",
//       ageRating: 16,
//       time: [1, 3],
//       price: 20
//     },
//
//     avatar3: {
//       movieName: "Avatar 3",
//       ageRating: 12,
//       time: [1, 2, 3],
//       price: 3
//     }
//   }
// }

var movies = {
  theDouble: {
    movieName: "The Double",
    ageRating: 18,
    time: [2, 4],
    price: 10
  },

  waterWorld: {
    movieName: "Waterworld",
    ageRating: 15,
    time: [1, 4],
    price: 12
  },

  avatar2: {
    movieName: "Avatar 2",
    ageRating: 16,
    time: [1, 3],
    price: 20
  },

  avatar3: {
    movieName: "Avatar 3",
    ageRating: 12,
    time: [1, 2, 3],
    price: 3
  }
}

var agePrice = function(inputtedMovieName, newViewer, MovieTheater) {

  var newPrice = movies[inputtedMovieName].price;
  console.log(movies[inputtedMovieName].price);

  if (newViewer.age <= 26) {
    newPrice -= 1;
  } else if (newViewer.age > 26 && newViewer.age < 70) {
    newPrice += 1;
  } else {
    newPrice -= 2;
  }
  console.log(newPrice);
  return newPrice;
}



var ageCheck = function(inputtedMovieName, newViewer) {


  if (movies[inputtedMovieName]["ageRating"] <= newViewer.age) {
    return "Please pay $" + agePrice(inputtedMovieName, newViewer, movies) + " and enjoy your overpriced movie, don't forget to pay a fortune for popcorn!";
  } else {
    return "Sorry you are too young to see this movie..."
  }
}


// UI logic

$(function() {
  $("form#viewer-info").submit(function(e) {
    e.preventDefault();

    var inputtedMovieName = $("select#movie-name").val();
    var inputtedAge = parseInt($("#viewer-age").val());
    var inputtedTime = $("select#movie-time").val();

    var newViewer = new Viewer(inputtedMovieName, inputtedAge, inputtedTime);

    $("#output #para").text(ageCheck(inputtedMovieName, newViewer));

  });

});

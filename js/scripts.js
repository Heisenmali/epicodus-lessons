// BE logic

function Viewer(movieName, age, timeOfDay) {
  this.movieName = movieName;
  this.age = age;
  this.timeOfDay = timeOfDay;
}

function Movie(movieName, ageRating, time) {
  this.movieName = movieName;
  this.ageRating = ageRating;
  this.time = time;
}

var theDouble = new Movie("The Double", 18, [2, 4]);
var waterWorld = new Movie("Waterworld", 15, [1, 4]);
var Avatar2 = new Movie("Avatar 2", 16, [1, 3]);
var Avatar3 = new Movie("Avatar 3", 12, [1, 2, 3]);


// UI logic

$(function() {
  $("form#viewer-info").submit(function(e) {
    e.preventDefault();

    var inputtedMovieName = $("select#movie-name").val();
    console.log(inputtedMovieName);
    var inputtedAge = parseInt($("#viewer-age").val());
    console.log(inputtedAge);
    var inputtedTime = $("select#movie-time").val();
    console.log(inputtedTime);

    var newViewer = new Viewer(inputtedMovieName, inputtedAge, inputtedTime);
    console.log(newViewer);


  });

});

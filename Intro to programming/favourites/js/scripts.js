$(document).ready(function() {
  $('form').submit(function(event) {
    event.preventDefault();

    var things = [];
    $('form input').each(function(idx, elem) {
      things.push($(elem).val())
    });
    // var a = things[0];
    // var b = things[1];
    // var c = things[2];
    // var newArray = [];
    // newArray.push(a,b,c);

    things.forEach(function(thing) {
      $('<li>').text(thing).appendTo('ul');
    });

  });
});

$(function(){
  $("#hot-button").click(function(){
    var getDinos = $.get('http://dinoipsum.herokuapp.com/api/?format=html&paragraphs=1&words=1'),
        fillContainer = function(html) {
          $('#dino').html(html);
        },
        oops = function() {
          console.log('Oh no! There are no dinos!');
        };

    getDinos.then(fillContainer, oops);
  });
});

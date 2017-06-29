$(function() {

  $("form#userinput").submit(function(e) {
    e.preventDefault();

    $("#output").text("");

    var countUp = function(j, k) {

      alert("the function got this far!");
      var j = parseInt($("#countby").val());
      var k = parseInt($("#countto").val());

      for (i = 0; i <= k; i += j) {

        if (i === k) {
          $("#output").append(i);
        } else {
          $("#output").append(i + ", ");
        }
      }


   }

   countUp();
 });
});

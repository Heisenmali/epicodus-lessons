$(document).ready(function(){

  $("form").submit(function(e) {

    e.preventDefault();

    $("input:checkbox[name=work-transportation]:checked").each(function() {
      var workTrans = $(this).val();
      $("#output").append(workTrans + "<br>");
    });
    $("#output").append("<hr>");
    $("input:checkbox[name=fun-transportation]:checked").each(function() {
      var funTrans = $(this).val();
      $("#output").append(funTrans + "<br>");
    });

    $("form").hide();

  });

});

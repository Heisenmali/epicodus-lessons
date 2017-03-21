$(document).ready(function() {

  $(".clickable").click(function() {
    $(this).find("#initially-hidden").toggle();
    $(this).find("#initially-visible").toggle();

  });




js attempt at finding an attribute and assigning it a value.
  //
  // div.onclick = function() {
  //   var divClass = div.getAttribute("class");
  //   if(divClass === "initially-visible") {
  //     div.setAttribute("class", "initially-hidden");
  //   } else {
  //     div.setAttribute("class", "initially-visible");
  //   }
  // }


});

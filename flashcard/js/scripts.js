$(document).ready(function() {

  // Children Method
  //
  // $(".clickable").click(function() {
  //   $(this).children().toggle();
  // });

// Find Method

$(".clickable").click(function() {
  $(this).find("#initially-visible").toggle();
  $(this).find("#initially-hidden").toggle();
  });
});


//
// js attempt at finding an attribute and assigning it a value.
//   //
  // div.onclick = function() {
  //   var divClass = div.getAttribute("class");
  //   if(divClass === "initially-visible") {
  //     div.setAttribute("class", "initially-hidden");
  //   } else {
  //     div.setAttribute("class", "initially-visible");
  //   }
  // }

$(document).ready(function() {
  $("form#langpick").submit(function (event) {
    event.preventDefault();

    var name = $("#name").val();
    var age = parseInt($("#age").val());
    var company = $("input:radio[name=company]:checked").val();
    var worktype = $("input:radio[name=worktype]:checked").val();
    var specialisation = $("input:radio[name=specialisation]:checked").val();
    var result;

    if ((company === "startup") && (worktype === "webapp") && (specialisation === "generalist")) {
      result = "Ruby";
    } else if ((company === "agency") && (worktype === "android") && (specialisation === "generalist")) {
      result = "Java";
    } else if ((company === "agency") && (worktype === "heavyweb") && (specialisation === "specialist")) {
      result = "PHP";
    } else if ((worktype !== "heavyweb") && (specialisation === "specialist")) {
      result = "Design/css";
    } else {
      result = "It's ok if your confused, you can choose later!"
    }

    $("div#result").text(result);
  });

});

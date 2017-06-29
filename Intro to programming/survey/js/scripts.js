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
      result = "RUBY.";
    } else if ((company === "agency") && (worktype === "android") && (specialisation === "generalist")) {
      result = "JAVA.";
    } else if ((company === "agency") && (worktype === "heavyweb") && (specialisation === "specialist")) {
      result = "PHP.";
    } else if ((worktype !== "heavyweb") && (specialisation === "specialist")) {
      result = "DESIGN / CSS.";
    } else {
      result = "we don't know. I mean come on, we can't know everything! We just think you should seriously reconsider all the life choices that have led you here!"
    }

    $("span#result").text(result);
    $("p").show();
    $(".footer h4").show();
    $("span#name").text(name + ",");
    $("span#age").text(age);

    // DISCLAIMER : The following line of code was added following my reading of numerous articles discussing how to use jQuery to scroll to the bottom of the page. It wasn't written by me. I left it in, as it suits the project very well and improves the UX. I have a basic understanding of how it works, but wouldn't be able to reproduce it, or come up with it by myself at this point unless I memorised it. This is the most relevant article : https://www.electrictoolbox.com/jquery-scroll-bottom/

    $('html, body').animate({scrollTop:$(document).height()}, 500);

  });
});

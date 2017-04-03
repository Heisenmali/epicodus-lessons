
function Contact(first, last, address, city, state) {
  this.firstName = first;
  this.lastName = last;
  this.address = address;
  this.city = city;
  this.state = state;
}

Contact.prototype.fullName = function() {
  return this.firstName + " " + this.lastName;
}


$(document).ready(function() {
  $("form#new-contact").submit(function(event) {
    event.preventDefault();

    var inputtedFirstName = $("input#new-first-name").val();
    var inputtedLastName = $("input#new-last-name").val();
    var inputtedaddress = $("input#address").val();
    var inputtedcity = $("input#city").val();
    var inputtedstate = $("input#state").val();

    var newContact = new Contact(inputtedFirstName,inputtedLastName,inputtedaddress,inputtedcity, inputtedstate);



    $("ul.contact").append("<li><span class='contact'>" + newContact.fullName() + "</span></li>");
    // $("ul#contacts").append("<li><span class='contact'>" +  newContact.address + "</span></li>");
    // $("ul#contacts").append("<li><span class='contact'>" +  newContact.city + "</span></li>");
    // $("ul#contacts").append("<li><span class='contact'>" +  newContact.state + "</span></li>");
    $(".contact").last().click(function() {
      $("#show-contact").show();
      $("#show-contact h2").text(newContact.firstName + " " + newContact.lastName);
      $(".first-name").text(newContact.firstName);
      $(".last-name").text(newContact.lastName);
      $(".address").text(newContact.address);
      $(".city").text(newContact.city);
      $(".state").text(newContact.state);

    });

    $("input#new-first-name").val("");
    $("input#new-last-name").val("");
  });
});

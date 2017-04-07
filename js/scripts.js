function Pizza(size) {
  this.size = size;
  this.topping = [];
}


Pizza.prototype.toppingPrice = function() {
  var toppingPrice = 0;

  this.topping.forEach(function(topping) {
    console.log(topping);
    if (topping !== "none") {
      toppingPrice += 2;
    }
  });
  return toppingPrice
};


Pizza.prototype.pizzaPrice = function () {
  var toppingPrice = this.toppingPrice();

  if (this.size === "small") {
    return toppingPrice + 7;

  } else if (this.size === "medium") {
    return toppingPrice + 9;

  } else if (this.size === "large") {
    return toppingPrice + 10;

  } else {
    return toppingPrice + 12;
  }
};



$(function() {

  var pizza = new Pizza("small");

  console.log(pizza);

  $("button[name='add-topping']").click(function() {
    $("#topping").append("<select class='pizza-topping form-control'>" +
    "<option value='none' selected>None</option>" +
    "<option value='olive'>Olives</option>" +
    "<option value='cheese'>Cheese</option>" +
    "<option value='pepperoni'>Pepperoni</option>" +
    "<option value='artichoke'>Artichoke</option>" +
    "</select>");
  });


  $("#pizza-info").submit(function(e) {
    e.preventDefault();

    pizza.size = $("#pizza-size").val();
    var topping;



    $(".pizza-topping").each(function() {
      topping = $(this).val();
      pizza.topping.push(topping);
    });

    console.log(pizza);

    console.log(pizza.pizzaPrice());

    // $(".pizza-topping).prop("selectedIndex", 0);
    $("#pizza-size").prop("selectedIndex", 0);



  });
});

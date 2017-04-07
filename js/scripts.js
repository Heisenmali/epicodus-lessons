// Business logic

function Pizza(size, price) {
  this.size = size;
  this.topping = [];
  this.price = null;
}


function Order(price) {
  this.orderedPizza = [];
  this.price = null;
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
    this.price = toppingPrice + 7;

  } else if (this.size === "medium") {
    this.price = toppingPrice + 9;

  } else if (this.size === "large") {
    this.price = toppingPrice + 10;

  } else {
    this.price = toppingPrice + 12;
  }
  return this.price;
};


// UI logic


$(function() {

  var order = new Order(null);
  var i = 0;


  var currentOrder = function() {
    var pizza = new Pizza("Cake", null);

    order.orderedPizza.push(pizza);
    order.orderedPizza[i].size = $("#pizza-size").val();

    var topping;

    $(".pizza-topping").each(function() {
      topping = $(this).val();
      order.orderedPizza[i].topping.push(topping);
    });


    order.price += order.orderedPizza[i].pizzaPrice();
    i++;
  };


  $("button[name='add-topping']").click(function() {
    $("#topping").append("<select class='pizza-topping form-control'>" +
    "<option value='none' selected>None</option>" +
    "<option value='olive'>Olives</option>" +
    "<option value='cheese'>Cheese</option>" +
    "<option value='pepperoni'>Pepperoni</option>" +
    "<option value='artichoke'>Artichoke</option>" +
    "</select>");
  });


  $("button[name='add-pizza']").click(function() {

    currentOrder();

  });


  $("#pizza-info").submit(function(e) {
    e.preventDefault();

    currentOrder();

    console.log(order);

    // $(".pizza-topping).prop("selectedIndex", 0);
    $("#pizza-size").prop("selectedIndex", 0);

  });
});

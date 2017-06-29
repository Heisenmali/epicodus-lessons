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
    if (topping !== "none") {
      toppingPrice += 2;
    }
  });

  return toppingPrice
};


Pizza.prototype.pizzaPrice = function () {
  var toppingPrice = this.toppingPrice();

  if (this.size === "Small") {
    this.price = toppingPrice + 7;

  } else if (this.size === "Medium") {
    this.price = toppingPrice + 9;

  } else if (this.size === "Large") {
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
  var pizzaCount = 0;


  var currentOrder = function() {
    var pizza = new Pizza("Cake", null);
    var topping;
    pizzaCount++;

    order.orderedPizza.push(pizza);
    order.orderedPizza[i].size = $("#pizza-size").val();


    $(".pizza-topping").each(function() {
      topping = $(this).val();
      order.orderedPizza[i].topping.push(topping);
    });

    order.price += order.orderedPizza[i].pizzaPrice();
    i++;
    $("#output").show();
    $("#pizza-count").text("Your pizza count : " + pizzaCount);
  };


  var toppingList = function() {
    $("#topping").append("<select class='pizza-topping form-control'>" +
                           "<option value='none' selected>None</option>" +
                           "<option value='olive'>Olives</option>" +
                           "<option value='cheese'>Cheese</option>" +
                           "<option value='pepperoni'>Pepperoni</option>" +
                           "<option value='artichoke'>Artichoke</option>" +
                         "</select>");
  };


  var displayOrder = function() {
    for (j = 0; j < order.orderedPizza.length; j++) {
      $("#output").append("<p>" + order.orderedPizza[j].size + " pizza with : </p>" +
                          "<p>" + order.orderedPizza[j].topping.join(", ") + " - toppings</p>" + "<p>$" + order.orderedPizza[j].price + "</p><br>");
      $("#pizza-info").hide();
    }

    $("#output").append("Total : $" + order.price);
  };


  $("button[name='add-topping']").click(function() {

    toppingList();
  });


  $("button[name='add-pizza']").click(function() {

    currentOrder();

    $("#pizza-size").prop("selectedIndex", 0);
    $(".pizza-topping").remove();
  });


  $("#pizza-info").submit(function(e) {
    e.preventDefault();

    currentOrder();
    displayOrder();

    $("#pizza-size").prop("selectedIndex", 0);
  });
});

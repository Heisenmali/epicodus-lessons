function Pizza(size, topping) {
  this.size = size;
  this.topping = topping;
}

// Pizza.prototype.price = function() {
//   console.log(this.topping);
// };



$(function() {


  $("#pizza-info").submit(function(e) {
    e.preventDefault();

    var size = $("#pizza-size").val();
    var topping = $("#pizza-topping").val();

    console.log(size);
    console.log(topping);

    var pizza = new Pizza(size, topping)

    console.log(pizza);


  });
});

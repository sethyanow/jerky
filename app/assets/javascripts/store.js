$(function() {
  store_setup();
});

function store_setup() {
  $("#item_quantity").val(1);
  $("#item_flavor_id").val(11);
  $("#item_type_id").val(1);
  $("#item_size_id").val(1);

  $("#checkout_button").click(function() {
    window.location.replace("/checkout");
    return false; // prevent default behavior
  });
}

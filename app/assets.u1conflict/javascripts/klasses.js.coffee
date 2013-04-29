# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

$(document).ready ->
  field_errors = $(".field_with_errors")
  txtNameClass = $(".field_with_errors #klass_name")
  msg_error = $("<span>Invalid Input</span>")
  msg_error.css("color", "red").appendTo field_errors[1]
  txtNameClass.css "border-color", "red"

jQuery ->
  $("#rails-gen.display.table-custom-klass").dataTable
    sPaginationType: "full_numbers"
    bJQueryUI: true
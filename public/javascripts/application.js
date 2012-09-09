// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $("#main_register_Proprietary_id").tokenInput("/proprietaries.json", {
    crossDomain: false,
    prePopulate: $("#main_register_Proprietary_id").data("pre"),
    theme: "facebook"
  });
});


//vehicles
$(function() {
  $("#main_register_Vehicle_id").tokenInput("/vehicles.json", {
    crossDomain: false,
    prePopulate: $("#main_register_Vehicle_id").data("pre"),
    theme: "facebook"
  });
});


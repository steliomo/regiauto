// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults
$(function() {
  $("#process_register_proprietary_id").tokenInput("/proprietaries.json", {
    crossDomain: false,
    prePopulate: $("#process_register_proprietary_id").data("pre"),
    theme: "facebook"
  });
});


//vehicles
$(function() {
  $("#process_register_vehicle_id").tokenInput("/vehicles.json", {
    crossDomain: false,
    prePopulate: $("#process_register_vehicle_id").data("pre"),
    theme: "facebook"
  });
});


function remove_fields(link) {
	$(link).prev("input[type=hidden]").val("1");
	$(link).closest(".field").hide();
}

function add_fields(link, association, content) {  
    var new_id = new Date().getTime();  
    var regexp = new RegExp("new_" + association, "g");  
    $(link).before(content.replace(regexp, new_id));  
}
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
	$(".process_menu").after(content.replace(regexp,new_id));  
}

/*$(this).ready(function() {
	$(".main_register,.hypothec, .sale_register, .proprietary_register").hide();
});*/

$(function(){$("#process_register_register_type").click(function() {
  var a = $("#process_register_register_type").val();
  if (a== "registo_inicial"){
	$(".hypothec, .sale_register, .proprietary_register").hide();
	$(".main_register").show();
  }else if(a=="compra_venda"){
	$(".main_register, .hypothec, .proprietary_register").hide();
	$(".sale_register").show();
  }else if(a=="hipoteca"){
	$(".main_register, .sale_register, .proprietary_register").hide();
	$(".hypothec").show();
  }else{
	$(".main_register, .sale_register, .hypothec").hide();
	$(".proprietary_register").show();
 }
});
});

$(function () {  
 //search action
 $('#search').submit(function () {  
   $.get(this.action, $(this).serialize(), null, 'script');  
   return false;  
 });
 
 //pagination
 /*$('.pagination a').live('click',
    function(){
	$.getScript(this.href);
	return false;
 });*/
});
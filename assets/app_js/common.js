$(document).ready(function(){

	buildMenu();	
});


setInterval( function() {
	// Create a newDate() object and extract the seconds of the current time on the visitor's
	var seconds = new Date().getSeconds();
	// Add a leading zero to seconds value
	$("#sec").text(( seconds < 10 ? "0" : "" ) + seconds);
},1000);

setInterval( function() {
	// Create a newDate() object and extract the minutes of the current time on the visitor's
	var minutes = new Date().getMinutes();
	// Add a leading zero to the minutes value
	$("#min").text(( minutes < 10 ? "0" : "" ) + minutes);
},1000);
	
setInterval( function() {
	// Create a newDate() object and extract the hours of the current time on the visitor's
	var hours = new Date().getHours();
	// Add a leading zero to the hours value
	$("#hours").text(( hours < 10 ? "0" : "" ) + hours);
}, 1000);

function buildMenu(){

	$.ajax({

		type:"POST",
		url:base_url+"Common/get_menu",
		dataType:"JSON",		
		success:function(data){

			var str_menu = "";

			$.each(data, function(index, value) {

				str_menu += "<li class='nav-item'>";
                str_menu += "<a href='"+value['url']+"' class='nav-link nav-toggle'>";
                str_menu += "<i class='"+value['icon']+"'></i>";
                str_menu += "<span class='title'>"+value['menu_title']+"</span>";

				var child_menu = buildChildMenu(value['child']);

				if(child_menu!='') str_menu+="<span class='arrow'></span>";

				str_menu += "</a>";
				str_menu += child_menu;
				str_menu += "</li>";
			});

			$('#side_menu').append(str_menu);
		}
	});
}

function buildChildMenu(obj_child={},str_child=''){

	if($.isEmptyObject(obj_child)){

		return "";
	}
	else{

		str_child += "<ul class='sub-menu'>";

		$.each(obj_child, function(index, value) {

			str_child += "<li class='nav-item'>";
            str_child += "<a href='"+value['url']+"' class='nav-link nav-toggle'>";
            str_child += "<i class='"+value['icon']+"'></i>";
            str_child += "<span class='title'>"+value['menu_title']+"</span>";

            var child_menu = buildChildMenu(value['child'],str_child);

            if(child_menu!='') str_menu+="<span class='arrow'></span>";

			str_child += "</a>";
			str_child += child_menu;
			str_child += "</li>"
		});

		str_child += "</ul>";

		return str_child;
	}
}
var obj_wilayah={
	url : base_url+"Master_wilayah/",
	table: undefined,
	init : function(){
		//init map
		map_obj.init();

		var opt =  {
			selector: "#form_editing",
			rules:{
	            wilayah: {
	                minlength: 5,
	                maxlength:50,
	                required: true
	            },
	            radius: {
	                required: true, 
	                number:true                      
	            },
	            lat:{
	            	required:true
	            },
	            lng:{
	            	required:true
	            },
	            address:{
	            	required:true
	            }
	        },
	        callback: obj_wilayah.f_simpan
	    };

		form_validation.validateDefault(opt);
		obj_wilayah.f_setTable();
		obj_wilayah.f_setEvent();
	},
	f_showAlert: function(title, msg, alertType){
		var str_title = "<span class='fa fa-exclamation-triangle text-warning'>" + title + "</span>";
		if(alertType==1){
			str_title = title;
		}
		var str_message = msg;

		bootbox.alert({
			size:'small',
			title:str_title,
			message:str_message,
			buttons:{
				ok:{
					label: 'OK',
					className: alertType==1?'btn-success':'btn-error'
				}
			}
		});
	},
	f_clearForm: function(){
		document.getElementById("form_editing").reset();
		map_obj.marker.setMap(null);
	},
	f_setEvent : function(){
	   $('#modal_editing').on('shown.bs.modal', function(e) {
	        map_obj.init();
	   });

   		$('.masterwilayah .showmodal').on('click', function(){
			obj_wilayah.f_clearForm();
			$('#modal_editing').modal('show');
		});
	},
	f_setTable : function(){
		obj_wilayah.table = $('#tb_list2').DataTable( {
			"order": [[ 0, "desc" ]],
	        "processing": true,
			"serverSide": true,
			ajax: {
				'url':base_url+"Master_wilayah/ajax_list",
				'type':'POST'			
			}
	    });
	},
	f_simpan: function(form){
		var postData = $(form).serialize();
		console.log(postData);

		var url = obj_wilayah.url + "simpan_data";
		$.ajax({
	        url: url,
	        type: "POST",
	        data: postData,
	        success: function(res) {
	          console.log(res);
	          var result = {};
	          try{
	          	result = JSON.parse(res);	          	
	          }catch(er){
	          	result = {status:0, msg:er};
	          }

	          if(result.status==0){
	          	obj_wilayah.f_showAlert("Simpan error", result.msg);
	          }else{
	          	//$('#modal_editing').modal('hide');
	          	obj_wilayah.f_showAlert("Simpan sukses", "Data telah disimpan.", 1);
	          	obj_wilayah.table.draw();
	          	obj_wilayah.f_clearForm();
	          }
	        },
	        error: function() {
	        	obj_wilayah.f_showAlert("Simpan error", "Tidak bisa simpan data, silahkan hubungi administrator");
	        }
	    });
	}
}

var map_obj = {
	marker: undefined,
	mapa : undefined,
	init: function(){
		google.maps.event.addDomListener(window, 'load', map_obj.init);

		var mapOptions1 = {
            zoom: 13,
            center: new google.maps.LatLng(-6.2825729,107.1270065),
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            draggableCursor: 'url(images/mouse5.png), default'
        };

        var mapElement1 = document.getElementById('mapa');

        // Create the Google Map using elements
        map_obj.mapa = new google.maps.Map(mapElement1, mapOptions1);
        map_obj.marker = new google.maps.Marker({ 
            draggable: false,
            map: map_obj.mapa
        });


        google.maps.event.addListener(map_obj.mapa, 'click', function(event) {
           map_obj.f_setMarkerPos(event.latLng);
        });
	},
	f_setMarkerPos: function (location) {
        map_obj.marker.setPosition(location);
        map_obj.f_getLatLngAddress(location.lat(), location.lng(), function(res){
			var address = "";            
            if(res.status=="OK"){
                address = res.results[0].formatted_address;                
                $('#alamat').val(address);
            }
            $('#lat').val(location.lat());
            $('#lng').val(location.lng());

        });
    },
    f_getLatLngAddress: function(lat, lng, callback){
    	var url = "http://maps.googleapis.com/maps/api/geocode/json?latlng=" + lat + "," + lng + "&sensor=true";
        $.get(url, function(res){
            if(callback){callback(res)};
        });
    }

}

$(document).ready(function(){

	obj_wilayah.init();
	
	
	$(".select2").select2();
	
	$('.numbers-only').keypress(function(event) {
		var charCode = (event.which) ? event.which : event.keyCode;
			if ((charCode >= 48 && charCode <= 57)
				|| charCode == 46
				|| charCode == 44
				|| charCode == 8)
				return true;
		return false;
	});




	function simpanData(){

		$("#form_editing").ajaxSubmit({
			url:base_url+"Master_wilayah/simpan_data",
			type: 'post',
			success: function(){

				var table = $('#tb_list2').DataTable();
				table.ajax.reload( null, false );
				table.draw();
				$('#modal_editing').modal('toggle');
			},
			error: function(){

				var title 		= "<span class='fa fa-exclamation-triangle text-warning'></span>&nbsp;Error.";
				var str_message = "Simpan Data gagal.";

				bootbox.alert({
					size:'small',
					title:title,
					message:str_message,
					buttons:{
						ok:{
							label: 'OK',
							className: 'btn-error'
						}
					}
				});
				return false;
			}
		});	
	}
});




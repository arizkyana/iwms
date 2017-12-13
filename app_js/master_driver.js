$(document).ready(function(){

	setTable();
	
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
});

function modalNew(){

	clearForm();
	$('#modal_editing').modal('show');
}

function setTable(){

	$('#tb_list').DataTable( {
		"order": [[ 0, "desc" ]],
        "processing": true,
		"serverSide": true,
		ajax: {
			'url':base_url+"Master_driver/ajax_list",
			'type':'POST'			
		}
    });
}

function validateForm(){

	var nik = $('#txt_nik').val();
	var nama = $('#txt_nama').val();

	nik.trim();
	nama.trim();

	if(nik=='' || nama==''){

		var title 		= "<span class='fa fa-exclamation-triangle text-warning'></span>&nbsp;Invalid Data";
		var str_message = "Semua field dengan tanda (*) harus diisi.";

		bootbox.alert({
			size:'small',
			title:title,
			message:str_message,
			buttons:{
				ok:{
					label: 'OK',
					className: 'btn-warning'
				}
			}
		});
		return false;	
	}

	if($('txt_nik').val()==''){

		//cek nik di database
		$.ajax({

			type:"POST",
			url:base_url+"Master_driver/cek_nik/"+nik,
			dataType:"html",
			success:function(data){

				var data = $.parseJSON(data);

				if(data==null){

					//form submit
					simpanData();	
				}
				else{

					var title 		= "<span class='fa fa-exclamation-triangle text-warning'></span>&nbsp;Invalid Data";
					var str_message = "No.Polisi tersebut sudah ada di Database.";

					bootbox.alert({
						size:'small',
						title:title,
						message:str_message,
						buttons:{
							ok:{
								label: 'OK',
								className: 'btn-warning'
							}
						}
					});
					return false;
				}
			}
		});
	}
	else{

		simpanData();
	}
}

function simpanData(){

	$("#form_editing").ajaxSubmit({
		url:base_url+"Master_driver/simpan_data",
		type: 'post',
		success: function(){

			var table = $('#tb_list').DataTable();
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

function editData(id){

	$.ajax({

		type:"POST",
		url:base_url+"Master_driver/get_fleet_data/"+id,
		dataType:"html",
		success:function(data){

			var data = $.parseJSON(data);

			$('input[name="hid_id"]').val(data['id_mobil']);
			$('#txt_nik').val(data['nik']);
			$('#txt_nama').val(data['nama']);
			$("input[name='opt_jenis']").filter('[value='+data['jenis']+']').prop('checked', true).trigger("click");
			$('#txt_tahun').val(data['thn_produksi']);

			$('#modal_editing').modal('show');
		}
	});
}

function deleteData(id){

	bootbox.confirm("Anda yakin akan menghapus data ini ?",
		function(result){
			if(result==true){

				$.post(
					base_url+"Master_driver/delete_data/"+id,function(){

						var table = $('#tb_list').DataTable();
						table.ajax.reload( null, false );
						table.draw();
					}
				);
			}
		}
	);
}


function clearForm(){

	document.getElementById("form_editing").reset();
}
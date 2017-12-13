
<style type="text/css">
html, body {
    height:100%;
}
</style>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkJA4ZGFREZKM8AmN8wSaSRcNooR2H6gI"></script>
<script src="<?=base_url();?>assets/app_js/map_obj.js"></script>

<?php if(isset($jenis)){
	if($jenis=='baksampah'){ 
		?>
		<script src="<?=base_url();?>assets/app_js/map_baksampah.js"></script>
<?php }} ?>

<div class="portlet box blue" style="min-height:100%!important;padding:0!important;margin:0!important">
	<div class="portlet-title">
		
		<?php if(isset($jenis)){
			if($jenis=='baksampah'){ 
				?>
					<div class="actions" style="float:left">
						<div class="btn-group">
							<a class="btn yellow btn-sm btn-lg mt-ladda-btn ladda-button" href="javascript:;" data-toggle="dropdown" aria-expanded="false">
							<i class="fa fa-map-marker"></i> Filter <i class="fa fa-angle-down"></i>
							<span class="ladda-spinner"></span>
							</a>
							<ul class="dropdown-menu">
								<li>
									<a href="javascript:;" selected="true" value="Pemukiman" class="menu_filter">
									<img src="https://maps.gstatic.com/mapfiles/place_api/icons/civic_building-71.png" width="16" /></i> Pemukiman 
									<i class="fa fa-check"></i></a>
								</li>
								<li>
									<a href="javascript:;" selected="false" value="Pendidikan" class="menu_filter">
									<img src="https://maps.gstatic.com/mapfiles/place_api/icons/school-71.png" width="16" /></i> Pendidikan </a>
								</li>
								<li>
									<a href="javascript:;" selected="false" value="Faskes" class="menu_filter">
									<img src="https://maps.gstatic.com/mapfiles/place_api/icons/doctor-71.png" width="16" /></i> Fasilitas Kesehatan </a>
								</li>
								
							</ul>
						</div>
					</div>
		<?php }
			} 
		?>

		<ul class="nav nav-tabs map_tabs">
			<li class="active">
				<a href="#main_tab" data-toggle="tab" aria-expanded="true">
					Main Map
				 </a>
			</li>
		</ul>
	</div>
	<div class="portlet-body" style="min-height:100%!important;padding:0!important;margin:0!important">
		<div class="tab-content" style="min-height:100%!important;padding:0!important;margin:0!important">
			<div id="mapa" style="min-height:100px;width:100%"></div>
		</div>
	</div>
</div>
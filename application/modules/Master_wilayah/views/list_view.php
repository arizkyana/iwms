<link href="<?php echo base_url(); ?>assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />

<link href="<?php echo base_url(); ?>assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />

<script src="<?php echo base_url(); ?>assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>

<script src="<?php echo base_url(); ?>assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/jquery-validation/js/jquery.validate.min.js" type="text/javascript"></script>

<script src="<?=base_url();?>assets/app_js/form_validation.js"></script>

<script src="<?=base_url();?>assets/app_js/master_wilayah.js"></script>
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyAkJA4ZGFREZKM8AmN8wSaSRcNooR2H6gI"></script>

<style type="text/css">
    body {font:10pt arial; }

    #mapa {width:100%; height:340px; border:5px solid #DEEBF2;}

    span.required{
        color:red;
    }
</style>
</head>
<body>
    <div class="row masterwilayah">
        <div class="col-md-12">
            <div class="portlet box blue">
                <div class="portlet-title">
                    <div class="caption">
                        <i class="fa fa-truck"></i>&nbsp;<span><?php echo $title;?></span>
                    </div>
                    <div class="tools">
                      <div class="btn-group pull-right">
                          
                      </div>
                    </div>
                    <div class="btn-group btn-group-sm button-tools pull-right" style="padding-top: 7px">
                        <button class="btn btn-default showmodal" type="button" data-toggle="dropdown">
                            <i class="icon-note"></i>&nbsp;Tambah Data&nbsp;
                        </button>                    
                    </div>
                    <input type="hidden" name="hid_param" id="hid_param" />
                </div>
                <div class="portlet-body">
                    <table class="table table-striped table-bordered table-hover" id="tb_list2">
                        <thead>
                            <tr>                            
                                <th>Nama Wilayah</th>
                                <th>Alamat</th>
                                <th>Lat</th>                            
                                <th>Lng</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr><td colspan="5" align="center">Tidak ada data ditemukan.</td></tr>
                        </tbody>                    
                    </table>
                </div>
            </div>
        </div>
    </div>

<!-- MODAL EDITING FORM -->
<div id="modal_editing" class="modal fade bs-modal" data-backdrop="static" aria-hidden="true">
    <div class="modal-dialog" id="portlet_form_scan" style="width: 90%;">
        <div class="portlet light bg-inverse">
            <div class="portlet-title">
                <div class="caption tight-bottom">                    
                    <span class="caption-subject font-blue bold" id="span_title"><?php echo $title;?> - Tambah Data</span>
                </div>
                <div class="actions tight-bottom">
                    <a href="#" data-dismiss="modal"><i class="icon-close"></i></a>
                </div>
            </div>
            <div class="portlet-body form">                                     
                        <div id="mapa"></div>
                        <form action="#" class="form-horizontal form-bordered" id="form_editing">
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Nama Wilayah <span class="required">*</span> </label>
                                <div class="col-md-4">
                                    <div class="input-icon right">
                                        <i class="fa"></i>
                                        <input type="text" id="wilayah" name="wilayah" class="form-control"> 
                                    </div>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Alamat </label>
                                <div class="col-sm-4">
                                    <textarea id="alamat" name="alamat" class="form-control" style="width:100%"> </textarea>
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Latitude </label>
                                <div class="col-sm-4">
                                    <input type="number" id="lat" name="lat" class="form-control">
                                </div>
                            </div>
                            <div class="form-group">
                                <label class="col-sm-3 control-label">Longitude </label>
                                <div class="col-sm-4">
                                    <input type="number" id="lng" name="lng" class="form-control">
                                </div>
                            </div>
                            <div class="form-group last">
                                <label class="col-sm-3 control-label">Radius </label>
                                <div class="col-sm-4">
                                    <input type="number" id="radius" name="radius" class="form-control" value="1000">
                                </div>
                            </div>
                            <div class="form-actions">
                                <div class="col-md-offset-3 col-md-4">
                                    <button type="submit" class="btn green">
                                        <i class="fa fa-check"></i> Submit</button>
                                    <button type="button" class="btn btn-outline grey-salsa" onclick="$('#modal_editing').modal('hide')">Cancel</button>
                                </div>
                            </div>
                         </form>
                    
            </div> <!-- end of portlet-body-->
        </div>
    </div>
</div>
            
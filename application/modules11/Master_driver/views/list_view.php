<link href="<?php echo base_url(); ?>assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />

<link href="<?php echo base_url(); ?>assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />

<script src="<?php echo base_url(); ?>assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>

<script src="<?php echo base_url(); ?>assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
<script src="<?=base_url();?>assets/app_js/master_driver.js"></script>

<div class="row">
    <div class="col-md-12">
        <!-- BEGIN EXAMPLE TABLE PORTLET-->
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
                    <button class="btn btn-default " type="button" data-toggle="dropdown" onclick="modalNew()">
                        <i class="icon-note"></i>&nbsp;Tambah Data&nbsp;
                    </button>                    
                    <!-- <button type="button" class="btn btn-default" title="Search Data" onclick="Modalcari()">
                        <i class="fa fa-search"></i>&nbsp;Search
                    </button>
                    <button type="button" class="btn btn-default" title="Export Data to Excel" onclick="downloadExcel()">
                        <i class="fa fa-file-excel-o"></i>&nbsp;Excel
                    </button> -->
                </div>
            </div>
            <input type="hidden" name="hid_param" id="hid_param" />
            <div class="portlet-body">
                <table class="table table-striped table-bordered table-hover" id="tb_list">
                    <thead>
                        <tr>                            
                            <th>NIK</th>
                            <th>Nama</th>
                            <th>Jenis KL</th>
                            <th>Alamat</th>                            
                            <th>Nomor Tlp</th>
                             <th>Action</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td colspan="5" align="center">Tidak ada data ditemukan.</td></tr>
                    </tbody>                    
                </table>
            </div>
        </div>
        <!-- END EXAMPLE TABLE PORTLET-->
    </div>
</div>

<!-- MODAL EDITING FORM -->
<div id="modal_editing" class="modal fade bs-modal" data-backdrop="static" aria-hidden="true">
    <div class="modal-dialog" id="portlet_form_scan">
        <div class="portlet light bg-inverse">
            <div class="portlet-title">
                <div class="caption tight-bottom">                    
                    <span class="caption-subject font-blue bold" id="span_title">Form Data Fleet</span>
                </div>
                <div class="actions tight-bottom">
                    <a href="#" data-dismiss="modal"><i class="icon-close"></i></a>
                </div>
            </div>
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal" id="form_editing">
                    <div class="form-body">
                        <div class="form-group">
                            <label class="col-md-3 control-label">
                                NIK
                                <span class="asterisk">*</span>
                            </label>
                            <div class="col-md-9">
                                <input type="text" name="txt_nik" id="txt_nik" class="form-control input-small" placeholder="NIK">                                
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">
                                Nama
                                <span class="asterisk">*</span>
                            </label>
                            <div class="col-md-9">
                                <input type="text" name="txt_nama" id="txt_nama" class="form-control input-inline input-medium" placeholder="Nama">                                
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">
                                Jenis Kelamin
                                <span class="asterisk">*</span>
                            </label>
                            <div class="col-md-9">
                                <div class="mt-radio-inline">
                                    <label class="mt-radio">
                                        <input type="radio" name="opt_jns_kelamin" id="opt_jns_kelamin" value="wanita" checked>Wanita
                                        <span></span>
                                    </label>                                    
                                    <label class="mt-radio">
                                        <input type="radio" name="opt_jns_kelamin" id="opt_jns_kelamin" value="pria">Pria
                                        <span></span>
                                    </label>                                    
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">Alamat</label>
                            <div class="col-md-9">
                                <input type="text" name="txt_alamat" id="txt_alamat" class="form-control input-inline input-medium" placeholder="Alamat" />
                            </div>
                        </div>
                        <div class="form-group">
                            <label class="col-md-3 control-label">No Telepon</label>
                            <div class="col-md-9">
                                <input type="text" name="txt_no_telepon" id="txt_no_telepon" class="form-control input-inline input-medium" placeholder="No Telepon" />
                            </div>
                        </div>
                    </div>
                    <div class="form-actions tight-bottom">
                        <div class="row">
                            <div style="text-align:right;padding-right:15px;">
                                <button type="button" class="btn blue" onclick="validateForm();" id="btn_submit">Simpan Data</button>
                                <button type="button" data-dismiss="modal" class="btn default">Cancel</button>
                            </div>
                        </div>
                    </div>                    
                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>
<!-- END MODAL EDITING FORM -->
  

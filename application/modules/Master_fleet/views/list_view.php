<link href="<?php echo base_url(); ?>assets/global/plugins/select2/css/select2.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>assets/global/plugins/select2/css/select2-bootstrap.min.css" rel="stylesheet" type="text/css" />

<link href="<?php echo base_url(); ?>assets/global/plugins/datatables/datatables.min.css" rel="stylesheet" type="text/css" />
<link href="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url(); ?>assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url(); ?>assets/global/plugins/bootstrap-timepicker/css/bootstrap-timepicker.min.css" rel="stylesheet" type="text/css" />
        <link href="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datetimepicker/css/bootstrap-datetimepicker.min.css" rel="stylesheet" type="text/css" />
<script src="<?php echo base_url(); ?>assets/global/plugins/select2/js/select2.full.min.js" type="text/javascript"></script>

<script src="<?php echo base_url(); ?>assets/global/scripts/datatable.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/datatables/datatables.min.js" type="text/javascript"></script>
<script src="<?php echo base_url(); ?>assets/global/plugins/datatables/plugins/bootstrap/datatables.bootstrap.js" type="text/javascript"></script>
        <script src="<?php echo base_url(); ?>assets/global/plugins/moment.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-daterangepicker/daterangepicker.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-timepicker/js/bootstrap-timepicker.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url(); ?>assets/global/plugins/bootstrap-datetimepicker/js/bootstrap-datetimepicker.min.js" type="text/javascript"></script>
        <script src="<?php echo base_url(); ?>assets/global/plugins/clockface/js/clockface.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL PLUGINS -->
        <!-- BEGIN THEME GLOBAL SCRIPTS -->
        <script src="<?php echo base_url(); ?>assets/global/scripts/app.min.js" type="text/javascript"></script>
        <!-- END THEME GLOBAL SCRIPTS -->
        <!-- BEGIN PAGE LEVEL SCRIPTS -->
        <script src="<?php echo base_url(); ?>assets/admin/pages/scripts/components-date-time-pickers.min.js" type="text/javascript"></script>
        <!-- END PAGE LEVEL SCRIPTS -->
<script src="<?=base_url();?>assets/app_js/master_fleet.js"></script>


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
                            <th>Nomor Kendaraan</th>
                            <th>Nama Kendaraan</th>
                            <th>Merek</th>
                            <!--<th>Tipe Kendaraan</th>-->
                            <th>Tahun Registrasi</th>                           
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
    <div class="modal-dialog" id="portlet_form_scan" style="margin-left:10px;width: 100%;margin-top: 1%">
        <div class="portlet light bg-inverse">
                
            <div class="portlet-body form">
                <!-- BEGIN FORM-->
                <form action="#" class="form-horizontal" id="form_editing">
                    <input type="text" name="hid_id" class="hidden" />
                    <div class="row">
                        <div class="col-md-12">
                            <div class="portlet light bordered">
                                <div class="portlet-title">
                                    <div class="caption">
                                        <i class="icon-social-dribbble font-purple-soft"></i>
                                        <span class="caption-subject font-purple-soft bold uppercase">Form Kendaraan</span>
                                    </div>
                                    <div class="actions tight-bottom">
                                        <a href="#" data-dismiss="modal"><i class="icon-close"></i></a>
                                    </div>
                                </div>
                                <div class="portlet-body form">
                                    <ul class="nav nav-tabs">
                                        <li class="active">
                                            <a href="#tab_1_1" data-toggle="tab"> Informasi Umum </a>
                                        </li>
                                        <li>
                                            <a href="#tab_1_2" data-toggle="tab"> Detil Kendaraan </a>
                                        </li>
                                    </ul>
                                    <div class="tab-content">
                                        <div class="tab-pane fade active in" id="tab_1_1">
                                            <p> 
                                            <div class="portlet-body form">
                                                <div class="col-md-4">
                                                    <h1 class="page-title"> Informasi Kendaraan</h1>
                                                </div>
                                                <div class="col-md-6" style="float: right;">
                                                        <div class="form-body">
                                                        <div class="form-group">
                                                                    <label>Nomor Kendaraan</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="txt_nopol" id="txt_nopol" class="form-control"> </div>
                                                                        <label>Nama Kendaraan</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="txt_nmkendaraan" id="txt_nmkendaraan" class="form-control"> </div>
                                                                        <label>Tipe Kendaraan</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="txt_tipekendaraan" id="txt_tipekendaraan" class="form-control">  </div>
                                                                        <label>Merek</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="txt_merk" id="txt_merk" class="form-control"> </div>
                                                                        <label>Model</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="vhcModel" id="vhcModel" class="form-control">  </div>
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                            </p>
                                        </div>
                                        <div class="tab-pane fade" id="tab_1_2">
                                            <p>
                                                <div class="portlet-body form">
                                                <div class="col-md-4">
                                                    <h1 class="page-title"> Informasi Kendaraan</h1>
                                                </div>
                                                <div class="col-md-4">
                                                        <div class="form-body">
                                                        <div class="form-group">
                                                        <div class="col-md-12">
                                                                    <label>Tahun Produksi</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="TahunProduksi" id="TahunProduksi" class="form-control"> </div>
                                                                        <label>Kapasitas Mesin</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="KapasitasMesin" id="KapasitasMesin" class="form-control"> </div>
                                                                        <label>Nomor Rangka</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="NomorRangka" id="NomorRangka" class="form-control">  </div>
                                                                        <label>Nomor Mesin</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="NomorMesin" id="NomorMesin" class="form-control"> </div>
                                                                        <label>Warna Kendaraan</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="WarnaKendaraan" id="WarnaKendaraan" class="form-control">  </div>
                                                            </div>
                                                            </div>
                                                        </div>
                                                </div>
                                                <div class="col-md-4">
                                                        <div class="form-body">
                                                        <div class="form-group">
                                                        <div class="col-md-12">
                                                                    <label>Bahan Bakar</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="BahanBakar" id="BahanBakar" class="form-control"> </div>
                                                                        <label>Kapasitas Bahan Bakar</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="KapasitasBahanBakar" id="KapasitasBahanBakar" class="form-control"> </div>
                                                                        <label>Kapasitas Oli Mesin</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="KapasitasOliMesin" id="KapasitasOliMesin" class="form-control">  </div>
                                                                        <label>Tahun Registrasi</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="txt_tahun" id="txt_tahun" class="form-control"> </div>
                                                                        <label>No BPKB</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="NoBPKB" id="NoBPKB" class="form-control">  </div>
                                                                        <label>Masa Berlaku BPKB</label>
                                                                    <div class="input-group">
                                                                        <span class="input-group-addon">
                                                                        </span>
                                                                        <input type="text" name="MasaBerlakuBPKB" id="MasaBerlakuBPKB" class="form-control form-control-inline date-picker datepicker" data-date-format="yyyy-mm-dd"> </div>
                                                            </div>
                                                            </div>
                                                        </div>
                                                </div>
                                            </div>
                                            </p>
                                        </div>
                                    </div>
                                    <div class="clearfix margin-bottom-10"> </div>
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
                    </div>                    
                </form>
                <!-- END FORM-->
            </div>
        </div>
    </div>
</div>
<!-- END MODAL EDITING FORM -->
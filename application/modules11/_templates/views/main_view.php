<?php $this->load->view('header_view'); ?>
<!-- BEGIN CONTAINER -->
<div class="page-container">
    <?php $this->load->view('sidemenu_view'); ?>
    <!-- BEGIN CONTENT -->
    <div class="page-content-wrapper">
        <!-- BEGIN CONTENT BODY -->
        <div class="page-content">
            <div class="row">
                <div class="col-md-12">
                    <?php if(isset($content)) echo $content; ?>
                </div>
            </div> 
        </div>
        <!-- END CONTENT BODY -->
    </div>
    <!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<?php $this->load->view('footer_view'); ?>
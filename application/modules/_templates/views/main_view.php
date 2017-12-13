<?php $this->load->view('header_view'); ?>
<!-- BEGIN CONTAINER -->
<div class="page-container">
<?php

    $page_title = "";

    if(!isset($hide_menu)){
        $this->load->view('sidemenu_view');
    }
?>

<?php
    if(!isset($hide_menu)){
?>
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
<?php
    }else{
?>
        <div class="page-content-wrapper">
             <div class="page-content" style="min-height:100%!important;padding:0!important;margin:0!important">
                <?php if(isset($content)) echo $content; ?>
             </div>
        </div>
<?php
    }
?>
</div>
<!-- END CONTAINER -->
<?php $this->load->view('footer_view'); ?>
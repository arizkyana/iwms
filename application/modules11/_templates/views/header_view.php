<?php

	$page_title = "";

	if(isset($title)) $page_title=" | ".$title;

?>
<!DOCTYPE html>
<html lang="en">
	<head>
	    <meta charset="utf-8" />
	    <title>IWWMIS<?php echo $page_title; ?></title>
	    <meta http-equiv="X-UA-Compatible" content="IE=edge">
	    <meta content="width=device-width, initial-scale=1" name="viewport" />
	    <meta content="" name="author" />
	    <!-- END THEME LAYOUT STYLES -->
	    <link rel="shortcut icon" href="<?=base_url()?>assets/images/logo.png" />
	    <?php require_once('inc_css.php'); ?>
	    <?php require_once('inc_js.php'); ?>
	</head>
	    <body class="page-header-fixed page-sidebar-closed-hide-logo page-sidebar-mobile-offcanvas">
        <div class="page-wrapper">
            <!-- BEGIN HEADER -->
            <div class="page-header navbar navbar-fixed-top">
                <!-- BEGIN HEADER INNER -->
                <div class="page-header-inner ">
                    <!-- BEGIN LOGO -->
                    <div class="page-logo">
                        <a href="<?=base_url();?>">
                            <img style="height: 30px;" src="<?=base_url();?>assets/images/logo.png" alt="logo" class="logo-default" /> </a>
                        <div class="menu-toggler sidebar-toggler">
                            <span></span>
                        </div>
                    </div>
                    <!-- END LOGO -->
                    <!-- BEGIN RESPONSIVE MENU TOGGLER -->
                    <a href="javascript:;" class="menu-toggler responsive-toggler">
                        <span></span>
                    </a>
                    <!-- END RESPONSIVE MENU TOGGLER -->
                    <!-- BEGIN TOP NAVIGATION MENU -->
                    <div class="top-menu">
                        <ul class="nav navbar-nav pull-right">
                            <!-- BEGIN USER LOGIN DROPDOWN -->
			                <!-- DOC: Apply "dropdown-dark" class after below "dropdown-extended" to change the dropdown styte -->
			                <li class="dropdown dropdown-user">
			                    <a href="javascript:;" class="dropdown-toggle" data-toggle="dropdown" data-hover="dropdown" data-close-others="true">
			                        <img alt="" class="img-circle" src="<?php echo base_url(); ?>/assets/images/user/<?php echo $this->session->userdata('foto'); ?>" />
			                        <span class="username username-hide-on-mobile"><?php echo $this->session->userdata('full_name'); ?></span>
			                        <i class="fa fa-angle-down"></i>
			                    </a>
			                    <ul class="dropdown-menu dropdown-menu-default">
			                        <li>
			                            <a href="<?php echo base_url(); ?>/auth/logout_act">
			                                <i class="icon-key"></i> Log Out
			                            </a>
			                        </li>
			                    </ul>
			                </li>
			                <!-- END USER LOGIN DROPDOWN -->
                        </ul>
                    </div>
                    <!-- END TOP NAVIGATION MENU -->
                </div>
                <!-- END HEADER INNER -->
            </div>
            <!-- END HEADER -->
            <!-- BEGIN HEADER & CONTENT DIVIDER -->
			<div class="clearfix"> </div>
			<!-- END HEADER & CONTENT DIVIDER -->

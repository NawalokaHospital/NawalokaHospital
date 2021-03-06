<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html class=" ">
    <head>
       
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8" />
        <title>Ultra Admin : Accordions & Tabs</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="" name="description" />
        <meta content="" name="author" />




        <link rel="shortcut icon" href="<c:url value="/assets/mod1/images/favicon.png"/>" type="image/x-icon" />    <!-- Favicon -->
        <!-- CORE CSS FRAMEWORK - START -->
        <link href="<c:url value="/assets/mod1/css/pace-theme-flash.css"/>" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<c:url value="/assets/mod1/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod1/css/bootstrap-theme.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod1/css/font-awesome.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod1/css/animate.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod1/css/perfect-scrollbar.css"/>" rel="stylesheet" type="text/css"/>
        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <link href="<c:url value="/assets/mod1/css/orange.css"/>" rel="stylesheet" type="text/css" media="screen"/>        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 
        <!-- CORE CSS TEMPLATE - START -->
        <link href="<c:url value="/assets/mod1/css/style.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod1/css/responsive.css"/>" rel="stylesheet" type="text/css"/>



    </head>
    <!-- END HEAD -->

    <!-- BEGIN BODY -->
    <body class=" "><!-- START TOPBAR -->
        <div class='page-topbar '>
            <div class='logo-area'>


            </div>
            <div class='quick-area'>
                <div class='pull-left'>
                    <ul class="info-menu left-links list-inline list-unstyled">
                        <li class="sidebar-toggle-wrap">
                            <a href="#" data-toggle="sidebar" class="sidebar_toggle">
                                <i class="fa fa-bars"></i>
                            </a>
                        </li>


                    </ul>
                </div>		
                <div class='pull-right'>
                    <ul class="info-menu right-links list-inline list-unstyled">
                        <li class="profile">
                            <a href="#" data-toggle="dropdown" class="toggle">
                                <img src="assets/mod1/images/naw.png" alt="user-image" class="img-circle img-inline">
                                <span>Nawaloka Hospital <i class="fa fa-angle-down"></i></span>
                            </a>
                            <ul class="dropdown-menu profile animated fadeIn">






                                <li class="last">
                                    <a href="ui-login.html">
                                        <i class="fa fa-lock"></i>
                                        Logout
                                    </a>
                                </li>
                            </ul>
                        </li>
                        <li class="chat-toggle-wrapper">

                        </li>
                    </ul>			
                </div>		
            </div>

        </div>
        <!-- END TOPBAR -->
        <!-- START CONTAINER -->
        <div class="page-container row-fluid">

            <!-- SIDEBAR - START -->
            <div class="page-sidebar ">


                <!-- MAIN MENU - START -->
                <div class="page-sidebar-wrapper" id="main-menu-wrapper"> 

                    <!-- USER INFO - START -->
                    <div class="profile-info row">

                        <div class="profile-image col-md-4 col-sm-4 col-xs-4">
                            <a href="ui-profile.html">
                                <img src="assets/mod1/images/naw.png" class="img-responsive img-circle">
                            </a>
                        </div>

                        <div class="profile-details col-md-8 col-sm-8 col-xs-8">

                            <h3>
                                <a href="ui-profile.html">Nawaloka Hospital</a>

                                <!-- Available statuses: online, idle, busy, away and offline -->
                                <span class="profile-status online"></span>
                            </h3>

                            <p class="profile-title">Report Management System</p>

                        </div>

                    </div>
                    <!-- USER INFO - END -->

                    <ul class='wraplist'>



                        <li class="open">
                            <a href="javascript:;">

                                <span class="title">Patient Registration</span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu" style='display:block;'>
                            </ul>
                        </li>
                        <li class="">
                            <a href="javascript:;">

                                <span class="title">Patient Information</span>
                                <span class="arrow "></span>
                            </a>

                        </li>

                        <li class="">
                            <a href="javascript:;">

                                <span class="title">Patient Profile</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu" >

                            </ul>
                        </li>


                        <li class="">
                            <a href="javascript:;">

                                <span class="title">Add New User</span>
                                <span class="arrow "></span>
                            </a>

                        </li>

                        <li class="">
                            <a href="javascript:;">

                                <span class="title">User Information</span>
                                <span class="arrow "></span>
                            </a>

                        </li>



                        <li class="">
                            <a href="javascript:;">

                                <span class="title">Upload Report</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu" >


                            </ul>
                        </li>
                </div>
                <!-- MAIN MENU - END -->







            </div>
            <!--  SIDEBAR - END -->
            <!-- START CONTENT -->
            <section id="main-content" class=" ">
                <section class="wrapper" style='margin-top:60px;display:inline-block;width:100%;padding:15px 0 0 15px;'>

                    <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
                        <div class="page-title">

                            <div class="pull-left">
                                <h1 class="title">Report Management System</h1>                            </div>

                            <div class="pull-right hidden-xs">

                            </div>

                        </div>
                    </div>
                    <div class="clearfix"></div>


                    <div class="col-lg-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2 class="title pull-left">Patient Profile</h2>
                                <div class="actions panel_actions pull-right">
                                    <i class="box_toggle fa fa-chevron-down"></i>


                                </div>
                            </header>
                            <div class="content-body">    <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">

                                        <div class="row">

                                            <!-- Accordion START -->
                                            <div class="col-md-6">

                                                <h4>Welcome to Patient Profile</h4>

                                                <div class="panel-group" id="accordion" role="tablist" aria-multiselectable="true">
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading" role="tab" id="headingOne">
                                                            <h4 class="panel-title">
                                                                <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                                                    <i class='fa fa-check'></i> Prescription 
                                                                </a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapseOne" class="panel-collapse collapse in" role="tabpanel" aria-labelledby="headingOne">
                                                            <div class="panel-body">
                                                                You Can prescribe medicine here.  

                                                                <a href="doc-medi.html" class="btn btn-info" role="button">Enter</a> 

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading" role="tab" id="headingTwo">
                                                            <h4 class="panel-title">
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                                                    <i class='fa fa-check'></i> Test Order

                                                                </a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapseTwo" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingTwo">
                                                            <div class="panel-body">
                                                                you can check test order here.


                                                                <a href="doc-test order.html" class="btn btn-info" role="button">Enter</a> 

                                                            </div>
                                                        </div>
                                                    </div>
                                                    <div class="panel panel-default">
                                                        <div class="panel-heading" role="tab" id="headingThree">
                                                            <h4 class="panel-title">
                                                                <a class="collapsed" data-toggle="collapse" data-parent="#accordion" href="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                                                    <i class='fa fa-check'></i> Medical Report
                                                                </a>
                                                            </h4>
                                                        </div>
                                                        <div id="collapseThree" class="panel-collapse collapse" role="tabpanel" aria-labelledby="headingThree">
                                                            <div class="panel-body">
                                                                You can see patient report here
                                                                <a href="form-fileupload.html" class="btn btn-info" role="button">Enter</a> 

                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>

                                            </div>












                                            <br><div class="clearfix"></div><br>














                                        </div>
                                    </div>
                                    </section></div>


                        </section>
                </section>
                <!-- END CONTENT -->
                <div class="page-chatapi hideit">

                    <div class="search-bar">
                        <input type="text" placeholder="Search" class="form-control">
                    </div>

                    <div class="chat-wrapper">
                        <h4 class="group-head">Groups</h4>
                        <ul class="group-list list-unstyled">
                            <li class="group-row">
                                <div class="group-status available">
                                    <i class="fa fa-circle"></i>
                                </div>
                                <div class="group-info">
                                    <h4><a href="#">Work</a></h4>
                                </div>
                            </li>
                            <li class="group-row">
                                <div class="group-status away">
                                    <i class="fa fa-circle"></i>
                                </div>
                                <div class="group-info">
                                    <h4><a href="#">Friends</a></h4>
                                </div>
                            </li>

                        </ul>


                        <h4 class="group-head">Favourites</h4>
                        <ul class="contact-list">

                            <li class="user-row" id='chat_user_1' data-user-id='1'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-1.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Clarine Vassar</a></h4>
                                    <span class="status available" data-status="available"> Available</span>
                                </div>
                                <div class="user-status available">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_2' data-user-id='2'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-2.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Brooks Latshaw</a></h4>
                                    <span class="status away" data-status="away"> Away</span>
                                </div>
                                <div class="user-status away">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_3' data-user-id='3'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-3.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Clementina Brodeur</a></h4>
                                    <span class="status busy" data-status="busy"> Busy</span>
                                </div>
                                <div class="user-status busy">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>

                        </ul>


                        <h4 class="group-head">More Contacts</h4>
                        <ul class="contact-list">

                            <li class="user-row" id='chat_user_4' data-user-id='4'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-4.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Carri Busey</a></h4>
                                    <span class="status offline" data-status="offline"> Offline</span>
                                </div>
                                <div class="user-status offline">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_5' data-user-id='5'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-5.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Melissa Dock</a></h4>
                                    <span class="status offline" data-status="offline"> Offline</span>
                                </div>
                                <div class="user-status offline">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_6' data-user-id='6'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-1.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Verdell Rea</a></h4>
                                    <span class="status available" data-status="available"> Available</span>
                                </div>
                                <div class="user-status available">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_7' data-user-id='7'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-2.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Linette Lheureux</a></h4>
                                    <span class="status busy" data-status="busy"> Busy</span>
                                </div>
                                <div class="user-status busy">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_8' data-user-id='8'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-3.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Araceli Boatright</a></h4>
                                    <span class="status away" data-status="away"> Away</span>
                                </div>
                                <div class="user-status away">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_9' data-user-id='9'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-4.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Clay Peskin</a></h4>
                                    <span class="status busy" data-status="busy"> Busy</span>
                                </div>
                                <div class="user-status busy">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_10' data-user-id='10'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-5.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Loni Tindall</a></h4>
                                    <span class="status away" data-status="away"> Away</span>
                                </div>
                                <div class="user-status away">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_11' data-user-id='11'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-1.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Tanisha Kimbro</a></h4>
                                    <span class="status idle" data-status="idle"> Idle</span>
                                </div>
                                <div class="user-status idle">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>
                            <li class="user-row" id='chat_user_12' data-user-id='12'>
                                <div class="user-img">
                                    <a href="#"><img src="data/profile/avatar-2.png" alt=""></a>
                                </div>
                                <div class="user-info">
                                    <h4><a href="#">Jovita Tisdale</a></h4>
                                    <span class="status idle" data-status="idle"> Idle</span>
                                </div>
                                <div class="user-status idle">
                                    <i class="fa fa-circle"></i>
                                </div>
                            </li>

                        </ul>
                    </div>

                </div>


                <div class="chatapi-windows ">


                </div>    </div>
        <!-- END CONTAINER -->
        <!-- LOAD FILES AT PAGE END FOR FASTER LOADING -->


        <!-- CORE JS FRAMEWORK - START --> 
        <!-- CORE JS FRAMEWORK - START --> 
        <script src="<c:url value="/assets/mod1/js/jquery-1.11.2.min.js"/>" type="text/javascript"></script> 
        <script src="<c:url value="/assets/mod1/js/jquery.easing.min.js"/>" type="text/javascript"></script> 
        <script src="<c:url value="/assets/mod1/js/bootstrap.min.js"/>" type="text/javascript"></script> 
        <script src="<c:url value="/assets/mod1/js/pace.min.js"/>" type="text/javascript"></script>  
        <script src="<c:url value="/assets/mod1/js/perfect-scrollbar.min.js"/>" type="text/javascript"></script> 
        <script src="<c:url value="/assets/mod1/js/viewportchecker.js"/>" type="text/javascript"></script>  
        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <script src="<c:url value="/assets/mod1/js/icheck.min.js"/>" type="text/javascript"></script><!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 
        <!-- CORE TEMPLATE JS - START --> 
        <script src="<c:url value="/assets/mod1/js/scripts.js"/>" type="text/javascript"></script>  
        <!-- Sidebar Graph - START --> 
        <script src="<c:url value="/assets/mod1/js/jquery.sparkline.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/mod1/js/chart-sparkline.js"/>" type="text/javascript"></script>













        <!-- General section box modal start -->
        <div class="modal" id="section-settings" tabindex="-1" role="dialog" aria-labelledby="ultraModal-Label" aria-hidden="true">
            <div class="modal-dialog animated bounceInDown">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        <h4 class="modal-title">Section Settings</h4>
                    </div>
                    <div class="modal-body">

                        Body goes here...

                    </div>
                    <div class="modal-footer">
                        <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                        <button class="btn btn-success" type="button">Save changes</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- modal end -->
    </body>
</html>




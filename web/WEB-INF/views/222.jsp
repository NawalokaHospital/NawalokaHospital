<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html class=" boxed">
    <head>

        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8" />
        <title>Ultra Admin : Boxed Layout</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="" name="description" />
        <meta content="" name="author" />

      



        <!-- CORE CSS FRAMEWORK - START -->

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

     <!-- START TOPBAR -->
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
                        
                        </li>
                    </ul>
                </div>		
                <div class='pull-right'>
                    <ul class="info-menu right-links list-inline list-unstyled">
                        <li class="profile">
                            <a href="#" data-toggle="dropdown" class="toggle">
                                <img src="assets/images/naw.png" alt="user-image" class="img-circle img-inline">
                                <span>Nawaloka Hospital <i class="fa fa-angle-down"></i></span>
                            </a>
                            <ul class="dropdown-menu profile animated fadeIn">
                                <li>
                                   
                                <li class="last">
                                    <a href="ui-login.html">
                                        <i class="fa fa-lock"></i>
                                        Logout
                                    </a>
                                </li>
                            </ul>
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
                                <img src="assets/images/naw.png" class="img-responsive img-circle">
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

                            

                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2 class="title pull-left">Test Order</h2>
                                
                            </header>
                            <div class="content-body">    <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">


                                        <div class="form-group">
                                            <label class="form-label" for="field-1">Enter Date</label>
                                            <div class="controls">
                                                <input type="text" class="form-control datepicker" data-format="D, dd MM yyyy" value="Mon, 02 February 2015">
                                            </div>
                                        </div>


 
                                        <label class="form-label" for="field-1">Enter time</label>
                                        <div class="form-group input-group">
                                            <input type="text" class="form-control timepicker" data-template="dropdown" data-show-seconds="true" data-default-time="09:45 PM" data-show-meridian="true" data-minute-step="5" data-second-step="5">
                                            <div class="input-group-addon">
                                                <i class="fa fa-clock-o"></i>
                                            </div>
                                        </div>












   <label class="form-label" for="field-2"><strong>Test Type:category 1:</label>

                                        
                                   <br>
                                        <select class="form-control m-bot15">
                                            <option>type1 </option>
                                            <option>type 2</option>
                                            <option>type 3</option>
                                             <option>type 4</option>
                                         <option>type 5</option>
                                            <option>type 6</option>
                                           <option>type 7</option>
                                           <option>type 8</option>

                                        </select>
                                        <br>

   <label class="form-label" for="field-2"><strong>Test Type:category 2:</label>                                     
                                   <br>
                                        <select class="form-control m-bot15">
                                            <option>type 1</option>
                                            <option>type 2</option>
                                            <option>type 3</option>
                                          <option>type 4</option>
                                         <option>type 5</option>
                                            <option>type 6</option>
                                           <option>type 7</option>
                                           <option>type 8</option>




                                        </select>
                                        <br>




 <label class="form-label" for="field-2"><strong>Test Type:category 3:</label>                                     
                                   <br>
                                        <select class="form-control m-bot15">
                                            <option>type 1</option>
                                            <option>type 2</option>
                                            <option>type 3</option>
                                          <option>type 4</option>
                                         <option>type 5</option>
                                            <option>type 6</option>
                                           <option>type 7</option>
                                           <option>type 8</option>




                                        </select>
                                        <br>



      <div class="col-md-4 col-sm-12 col-xs-12">
                                         
                                            <br>
                                           
                                            <a class="btn btn-warning btn-block" data-toggle="modal" href="#ultraModal-2">Confirm</a><br>
                                            
                                        </div>
                                       
                                          
                                       
                                            

                                         <!-- modal start -->
                                        <div class="modal fade" id="ultraModal-2" tabindex="-1" role="dialog" aria-labelledby="ultraModal-Label" aria-hidden="true">
                                            <div class="modal-dialog">
                                                <div class="modal-content">
                                                    <div class="modal-header">
                                                        <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                                                        <h4 class="modal-title">Test Order</h4>
                                                    </div>
                                                    <div class="modal-body">

                                                       <strong>Successfully send the test order</strong>

                                                    </div>
                                                    <div class="modal-footer">
                                                        <button data-dismiss="modal" class="btn btn-default" type="button">Close</button>
                                                        <button class="btn btn-warning" type="button"> Confirm</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <!-- modal end -->

<br/>
<a href="patientprofile.html" class="btn btn-info" role="button">Back</a> 















                                    </div>
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




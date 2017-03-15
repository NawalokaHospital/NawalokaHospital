<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%
    String val = (String) session.getAttribute("name");
%>
<% if (val == null) { %>
<%response.sendRedirect("login");%>
<% }%>

<!DOCTYPE html>
<html class=" ">
    <head>
        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8" />
        <title>Ultra Admin : File Uploader</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="" name="description" />
        <meta content="" name="author" />

         <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="shortcut icon" href="<c:url value="/assets/mod2/images/favicon.png"/>" type="image/x-icon" />    <!-- Favicon -->
        <!-- CORE CSS FRAMEWORK - START -->
        <link href="<c:url value="/assets/mod2/css/pace-theme-flash.css"/>" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<c:url value="/assets/mod2/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod2/css/bootstrap-theme.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod2/css/font-awesome.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod2/css/animate.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod2/css/perfect-scrollbar.css"/>" rel="stylesheet" type="text/css"/>
        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <link href="<c:url value="/assets/mod2/css/orange.css"/>" rel="stylesheet" type="text/css" media="screen"/>        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 
        <!-- CORE CSS TEMPLATE - START -->
        <link href="<c:url value="/assets/mod2/css/style.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod2/css/responsive.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod2/css/dropzone.css"/>" rel="stylesheet" type="text/css"/>

    </head>
    <!-- END HEAD -->

    <!-- BEGIN BODY -->
    <body class=" ">
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


                    </ul>
                </div>		
                <div class='pull-right'>
                    <ul class="info-menu right-links list-inline list-unstyled">
                        <li class="profile">
                            <a href="#" data-toggle="dropdown" class="toggle">
                                <img src="<c:url value="/assets/mod1/images/avatar-1.png"/>" alt="user-image" class="img-circle img-inline">
                                <span style="color: black">UserName : <%=val%> <i class="fa fa-angle-down"></i></span>
                            </a>
                            <ul class="dropdown-menu profile animated fadeIn">
                                <li>
                                    <a href="#settings">
                                        <i class="fa fa-wrench"></i>
                                        Settings
                                    </a>
                                </li>
                                <li>
                                    <a href="#profile">
                                        <i class="fa fa-user"></i>
                                        Profile
                                    </a>
                                </li>
                                <li>
                                    <a href="#help">
                                        <i class="fa fa-info"></i>
                                        Help
                                    </a>
                                </li>
                                <li class="last">
                                    <a href="logout">
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
                                <img src="https://cdn2.iconfinder.com/data/icons/medicine-9/512/hospital-512.png" class="img-responsive img-circle" style="background-color: white">
                            </a>
                        </div>

                        <div class="profile-details col-md-8
                             col-sm-8 col-xs-8">

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
                                <ol class="breadcrumb">
                                    <li>
                                        <a href="index.html"><i class="fa fa-home"></i>Home</a>
                                    </li>

                                    <li class="active">
                                        <strong>Report Management System</strong>
                                    </li>
                                </ol>
                            </div>

                        </div>
                    </div>
                    <div class="clearfix"></div>
                    <div class="form-group has-warning">
                        <label class="form-label" for="field-9">Patient ID</label>
                        <span class="desc">e.g. "55615"</span>
                        <div class="controls">
                            <input type="text" class="form-control" id="field-9" placeholder="Enter your number" >
                        </div>
                    </div>
                    <div class="form-group has-warning">
                        <label class="form-label" for="field-9">Lab Assistant ID</label>
                        <span class="desc">e.g. "65248"</span>
                        <div class="controls">
                            <input type="text" class="form-control" id="field-9" placeholder="Enter your number" >
                        </div>
                    </div>
                    <div class="col-lg-12">
                        <section class="box ">
                            <header class="panel_header">
                                <h2 class="title pull-left">Custom Uploader</h2>
                                <div class="actions panel_actions pull-right">
                                    <i class="box_toggle fa fa-chevron-down"></i>

                                </div>
                            </header>
                            <div class="content-body">    <div class="row">
                                    <div class="col-md-12 col-sm-12 col-xs-12">


                                        <div class="custom-dropzone">
                                            <div class="col-sm-8 drop-table">

                                                <table class="table" id="custom-droptable">
                                                    <thead>
                                                        <tr>
                                                            <th width="1%" class="text-center">#</th>
                                                            <th width="50%">Name</th>
                                                            <th width="20%">Progress</th>
                                                            <th>Size</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td colspan="4">No Files Uploaded Yet!</td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                            <div class="col-sm-4 drop-area text-center">
                                                <div id="customDZ" class="droppable-area">
                                                </div>
                                            </div>

                                        </div>
                                        <button type="button" class="btn btn-success">Submit</button>
                                        <a href="ui-accordion.html" class="btn btn-info" role="button">Back</a> 

                                    </div>
                                </div>
                            </div>
                        </section></div>



                </section>
            </section>
            <!-- END CONTENT -->




            <!-- CORE JS FRAMEWORK - START --> 
            <script src="<c:url value="/assets/mod2/js/jquery-1.11.2.min.js"/>" type="text/javascript"></script> 
            <script src="<c:url value="/assets/mod2/js/jquery.easing.min.js"/>" type="text/javascript"></script> 
            <script src="<c:url value="/assets/mod2/js/bootstrap.min.js"/>" type="text/javascript"></script> 
            <script src="<c:url value="/assets/mod2/js/pace.min.js"/>" type="text/javascript"></script>  
            <script src="<c:url value="/assets/mod2/js/perfect-scrollbar.min.js"/>" type="text/javascript"></script> 
            <script src="<c:url value="/assets/mod2/js/viewportchecker.js"/>" type="text/javascript"></script>  
            <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
            <script src="<c:url value="/assets/mod2/js/icheck.min.js"/>" type="text/javascript"></script><!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 
            <!-- CORE TEMPLATE JS - START --> 
            <script src="<c:url value="/assets/mod2/js/scripts.js"/>" type="text/javascript"></script>  
            <!-- Sidebar Graph - START --> 
            <script src="<c:url value="/assets/mod2/js/jquery.sparkline.min.js"/>" type="text/javascript"></script>
            <script src="<c:url value="/assets/mod2/js/chart-sparkline.js"/>" type="text/javascript"></script>
            <!-- Sidebar Graph - END --> 
            <script src="<c:url value="/assets/mod2/js/dropzone.min.js"/>" type="text/javascript"></script>












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




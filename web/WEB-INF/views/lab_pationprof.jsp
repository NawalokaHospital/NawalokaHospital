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
<html>
    <head>

        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <meta charset="utf-8" />
        <title>Ultra Admin : Form Elements</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="" name="description" />
        <meta content="" name="author" />

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="shortcuticon" href="<c:url value="/assets/mod4/images/favicon.png"/>" type="image/x-icon" />    <!-- Favicon -->




        <!-- CORE CSS FRAMEWORK - START -->
        <!-- CORE CSS FRAMEWORK - START -->
        <link href="<c:url value="/assets/mod4/css/pace-theme-flash.css"/>" rel="stylesheet" type="text/css" media="screen"/>
        <link href="<c:url value="/assets/mod4/css/bootstrap.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod4/css/bootstrap-theme.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod4/css/font-awesome.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod4/css/animate.min.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod4/css/perfect-scrollbar.css"/>" rel="stylesheet" type="text/css"/>
        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <link href="<c:url value="/assets/mod4/css/orange.css"/>" rel="stylesheet" type="text/css" media="screen"/>        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 
        <!-- CORE CSS TEMPLATE - START -->
        <link href="<c:url value="/assets/mod4/css/style.css"/>" rel="stylesheet" type="text/css"/>
        <link href="<c:url value="/assets/mod4/css/responsive.css"/>" rel="stylesheet" type="text/css"/>
        <!-- CORE CSS TEMPLATE - END -->
        <link href="<c:url value="/assets/mod4/css/all.css"/>" rel="stylesheet" type="text/css" media="screen"/> 
        <style>
            table {
                font-family: arial, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            td, th {
                border: 1px solid #dddddd;
                text-align: left;
                padding: 8px;
            }

            tr:nth-child(even) {
                background-color: #dddddd;
            }
        </style>
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
                                <img src="<c:url value="/assets/mod2/images/lab.png"/>" alt="user-image" class="img-circle img-inline">
                                <span style="color: black">UserName : <%=val%> <i class="fa fa-angle-down"></i></span>
                            </a>
                            <ul class="dropdown-menu profile animated fadeIn">
                             
                                <li class="last">
                                    <a href="logout">
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
                                <img src="assets/mod2/images/naw.png" class="img-responsive img-circle" style="background-color: white">
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



                        <li class="">

                            <ul class="sub-menu" style='display:block;'>
                            </ul>
                        </li>
                        <li class="">
                            <a href="lab_test_view.html" class="list-group-item active">Medical Test</a>
                            <ul class="sub-menu" >

                            </ul>
                        </li>
                </div>
                <!-- MAIN MENU - END -->





            </div>



        </div>
        <!--  SIDEBAR - END -->
        <!-- START CONTENT -->
        <section id="main-content" class=" ">
            <section class="wrapper" style='margin-top:60px;display:inline-block;width:100%;padding:15px 0 0 15px;'>

                <div class='col-lg-12 col-md-12 col-sm-12 col-xs-12'>
                    <div class="page-title">

                        <div class="pull-left">
                            <h1 class="title">Labassistant main page</h1>                 
                        </div>                           
                        <div class="pull-right">
                            <ul>
                                <li>
                                    <a href="doc_mainpage">Home</a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="clearfix"></div>

                <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                    <section class="box ">

                        <div class="col-md-12">
                            <div class="col-md-6">
                                <h4>Welcome to Patient Profile</h4>
                                <h2> Test Reports</h2> <br>
                                First Name: <input style="text-align: center" disabled="disabled" type="text" value='${patientinfo.patientFirstname}'/><br><br>
                                Last Name: <input style="text-align: center" disabled="disabled" type="text" value='${patientinfo.patientLastname}'/><br><br>                                                                
                                Create Date: <input style="text-align: center" disabled="disabled" type="text" value='${patientinfo.patientCreatedDate}'/><br><br>
                                Type: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input style="text-align: center" disabled="disabled" type="text" value='${patirec.recordFrequency}'/><br><br>                             
                                Test Image:<br>
                                <img src="<c:url value="/assets/uplodeimade/${patirec.recordImage}"/>">
                            </div>
                            <div class="col-md-6">
                                <div style="max-width: 650px; margin: auto; padding-top: 40px">
                                    <h1 class="page-header">Test Image Upload Form</h1>
                                    <p class="lead">Select a PNG or JPEG image, having maximum size <span id="max-size"></span> 500KB.</p>



                                    <form id="upload-image-form" action="uploadimage" method="post" enctype="multipart/form-data">                                        
                                        <div class="form-group">  
                                            <input type="hidden" name="recodid" value="${patirec.recordId}"/>
                                            <input type="hidden" name="patientid" value="${patientinfo.patientId}"/>
                                            <input type="file" name="image" id="file" required>
                                        </div>
                                        <button class="btn btn-lg btn-primary" id="upload-button" type="submit" >Upload image</button>
                                    </form>


                                    <br>
                                    <div class="alert alert-info" id="loading" style="display: none;" role="alert">
                                        Uploading image...
                                        <div class="progress">
                                            <div class="progress-bar progress-bar-striped active" role="progressbar" aria-valuenow="45" aria-valuemin="0" aria-valuemax="100" style="width: 100%">
                                            </div>

                                        </div>
                                    </div>
                                    <div id="message"></div>
                                </div>
                            </div>

                        </div>




                </div>


            </section>



        </section>


        <!-- LOAD FILES AT PAGE END FOR FASTER LOADING -->


        <!-- CORE JS FRAMEWORK - START --> 
        <script src="<c:url value="/assets/mod4/js/jquery-1.11.2.min.js"/>" type="text/javascript"></script> 
        <script src="<c:url value="/assets/mod4/js/jquery.easing.min.js"/>" type="text/javascript"></script> 
        <script src="<c:url value="/assets/mod4/js/bootstrap.min.js"/>" type="text/javascript"></script> 
        <script src="<c:url value="/assets/mod4/js/pace.min.js"/>" type="text/javascript"></script>  
        <script src="<c:url value="/assets/mod4/js/perfect-scrollbar.min.js"/>" type="text/javascript"></script> 
        <script src="<c:url value="/assets/mod4/js/viewportchecker.js"/>" type="text/javascript"></script>  
        <!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - START --> 
        <script src="<c:url value="/assets/mod4/js/icheck.min.js"/>" type="text/javascript"></script><!-- OTHER SCRIPTS INCLUDED ON THIS PAGE - END --> 
        <!-- CORE TEMPLATE JS - START --> 
        <script src="<c:url value="/assets/mod4/js/scripts.js"/>" type="text/javascript"></script>  
        <!-- Sidebar Graph - START --> 
        <script src="<c:url value="/assets/mod4/js/jquery.sparkline.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/mod4/js/chart-sparkline.js"/>" type="text/javascript"></script>

        <script src="<c:url value="/assets/mod4/js/autosize.min.js"/>" type="text/javascript"></script>
        <script src="<c:url value="/assets/mod4/js/jquery.sparkline.min.js"/>" type="text/javascript"></script>









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




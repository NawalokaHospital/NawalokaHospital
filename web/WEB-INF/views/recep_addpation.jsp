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
        <title>Nawaloka Hospital : Editors</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
        <meta content="" name="description" />
        <meta content="" name="author" />






        <link rel="shortcut icon" href="<c:url value="/assets/mod1/images/favicon.png"/>" type="image/x-icon" />    <!-- Favicon -->
        <!-- CORE CSS FRAMEWORK - START -->
        <link href="<c:url value="/assets/mod1/css/pace-theme-flash.css"/>" rel="stylesheet" type="text/css" media="screen"/>

        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

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
                                <img src="<c:url value="/assets/mod4/images/rec.png"/>" alt="user-image" class="img-circle img-inline">
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
                                <img src="assets/mod4/images/naw.png" class="img-responsive img-circle" style="background-color: white">
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
                            <a href="recep_mainpage">

                                <span class="title">Dashboard</span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu" style='display:block;'>
                            </ul>
                        </li>
                      

                        <li class="open">
                            <a href="recep_addpation">

                                <span class="title">Patient Registration</span>
                                <span class="arrow "></span>
                            </a>
                            <ul class="sub-menu" >

                            </ul>
                        </li>  
                    </ul>
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
                                <h1 class="title">Add Patient</h1>                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>                    

                    <div class="col-lg-8" style="margin: 0px 15% 0px">
                        <section class="box " style="padding: 8%;text-align: left">

                            <form:form method="POST" modelAttribute="pation">    

                                <p>
                                    <label for="user_login"/>First Name: 
                                    <form:input path="patientFirstname" class="input"/>
                                    <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                                </p>

                                <p>
                                    <label for="user_login"/>Last Name:
                                    <form:input path="patientLastname" class="input"/>
                                    <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                                </p>
                                <p>
                                    <label for="user_login">NIC NO:&nbsp;&nbsp;
                                        <form:input path="patientNicid" class="input"/>
                                        <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                                </p>
                                <p>
                                    <label for="user_login">UserName:
                                        <form:input path="patientUname" class="input"/>
                                        <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                                </p>

                                <p>
                                    <label for="user_login">Password:
                                        <form:input type="password" path="patientPassword" class="input"/>
                                        <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                                </p>

                                <p>
                                    <label for="user_login">Gender:
                                        <form:input path="patientGender" class="input"/>
                                        <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                                </p>
                                <p>
                                    <label for="user_login">Age:
                                        <form:input path="patientAge" type="number" class="input"/>
                                        <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                                </p>
                                <p>
                                    <label for="user_login">T:no:
                                        <form:input path="patientTelno" type="number" class="input"/>
                                        <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                                </p>
                                <p>
                                    <label for="user_login">Address:
                                        <form:input path="patientAddress" class="input"/>
                                        <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                                </p>
                                <p class="submit">
                                    <input type="submit" style="width: 100px;" class="btn btn-orange btn-block" value="Submit" />
                                </p>

                            </form:form>

                        </section></div>

                </section>
            </section>
        </div>

       

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

 </body>
</html>





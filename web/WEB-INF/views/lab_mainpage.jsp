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
                                <img src="<c:url value="/assets/mod2/images/lab.png"/>" alt="user-image" class="img-circle img-inline">
                                <span style="color: black">UserName : <%=val%> <i class="fa fa-angle-down"></i></span>
                            </a>
                            <ul class="dropdown-menu profile animated fadeIn">
                             
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
                                <img src="assets/mod2/images/naw.png" class="img-responsive img-circle" style="background-color: white">
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
                                <h1 class="title">Patient login</h1>                            </div>                            
                        </div>
                    </div>
                    <div class="clearfix"></div>


                    <div style="margin-left: 40%;">

                        <form:form method="POST" modelAttribute="logdata">    

                            <p>
                                <label for="user_login">Patient UserName<br />
                                    <form:input path="username" id="username"/>
                                    <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                            </p>

                            <p>
                                <label for="user_login">Patient Password<br />
                                    <form:input type="password" path="password" id="password" class="input"/>
                                    <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                            </p>


                            <p class="submit">
                                <input style="width: 20%;" type="submit" name="wp-submit" id="wp-submit" class="btn btn-orange btn-block" value="Submit" />
                            </p>

                        </form:form>

                    </div>



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












            <!-- modal end -->
    </body>
</html>




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

    <body class=" ">

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
                            <a href="doc_pationhistry?pationId=${patientinfo.patientId}" class="list-group-item active">Patient History </a>
                            <ul class="sub-menu" >

                            </ul>
                        </li>
                </div>






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
                        <div class="col-md-3"></div>
                        <div class="col-md-6" style="padding-left: 6%">
                            <div class="col-md-12">
                                <h4>Welcome to Patient Profile</h4>
                                <h2> Test Reports</h2> <br>
                                First Name: <input style="text-align: center" disabled="disabled" type="text" value='${patientinfo.patientFirstname}'/><br><br>
                                Last Name: <input style="text-align: center" disabled="disabled" type="text" value='${patientinfo.patientLastname}'/><br><br>                                                                
                                Create Date: <input style="text-align: center" disabled="disabled" type="text" value='${patientinfo.patientCreatedDate}'/><br><br>
                                Record Create Date: <input style="text-align: center" disabled="disabled" type="text" value='${patirec.recordCreatedDate}'/><br><br>
                                <form:form method="POST" action="saverecorddoc" modelAttribute="addrecdoc">
                                    <input type="hidden" id="recordId" name="recordId" value="${patirec.recordId}"/>
                                    <input type="hidden" id="patId" name="patId" value="${patientinfo.patientId}"/>
                                    Type: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                                                                                                            
                                    <c:choose>
                                        <c:when test="${empty patirec.recordFrequency}">
                                            <select id="type" name="type">
                                                <c:forEach var="testtype" items="${addrecdoc.testtype}">
                                                    <option value="${testtype}">${testtype}</option>
                                                </c:forEach>
                                            </select> <br><br>                                       
                                        </c:when>
                                        <c:otherwise>
                                            <input style="text-align: center" disabled="disabled" type="text" value='${patirec.recordFrequency}'/><br><br>
                                        </c:otherwise>
                                    </c:choose>

                                    Description:<br>
                                    <c:choose>
                                        <c:when test="${empty patirec.recordCondition}">                                            
                                            <form:textarea name="discriptiontype" path="discriptiontype"/><br>
                                        </c:when>
                                        <c:otherwise>
                                            <textarea disabled="disabled">${patirec.recordCondition}</textarea><br>
                                        </c:otherwise>
                                    </c:choose>

                                    <c:choose>
                                        <c:when test="${empty patirec.recordImage}">
                                        </c:when>
                                        <c:otherwise>
                                            Test Image:<br>
                                            <img src="<c:url value="/assets/uplodeimade/${patirec.recordImage}"/>"><br><br>

                                            Description:<br>
                                            <c:choose>
                                                <c:when test="${empty patirec.recordResultPrescription}">                                            
                                                    <form:textarea name="discription" path="discription"/><br>
                                                </c:when>
                                                <c:otherwise>
                                                    <textarea disabled="disabled">${patirec.recordResultPrescription}</textarea><br>
                                                </c:otherwise>
                                            </c:choose>
                                        </c:otherwise>
                                    </c:choose>

                                    <p class="submit">
                                        <input type="submit" style="width: 40%" name="wp-submit" id="wp-submit" class="btn btn-orange btn-block" value="Save" />
                                    </p>
                                </form:form>
                            </div>                            
                            <div class="col-md-3"></div>
                        </div>
                    </section>
                </div>


            </section>



        </section>

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



    </body>
</html>




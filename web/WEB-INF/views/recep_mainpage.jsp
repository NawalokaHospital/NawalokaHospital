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



                        <li class="open">
                            <a href="javascript:;">

                                <span class="title">Dashboard</span>
                                <span class="arrow open"></span>
                            </a>
                            <ul class="sub-menu" style='display:block;'>
                            </ul>
                        </li>


                        <li class="">
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
                                <h1 class="title">Reception main page</h1>                 
                            </div>                           

                        </div>
                    </div>
                    <div class="clearfix"></div>

                    <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12">
                        <section class="box ">

                            <div class="col-md-12">
                                <div class="col-xs-12 col-md-4" style="float: left;text-align: center">
                                    <h2>Search Patient</h2>
                                    <label>Patient Id:</label>
                                    <p>Patient-ID:<input type="text" onkeyup="loadpatient();" id="keyval" /></p>                                      
                                    <table>
                                        <tr>
                                            <th>Patient No</th>
                                            <th>Patient Name</th>
                                            <th>patientAge</th> 
                                            <th></th>
                                        </tr>
                                        <tbody id="tdatapatient">

                                        </tbody>
                                    </table>

                                </div>
                                <div class="col-xs-12 col-md-4" style="text-align: center">

                                    <h2>Available Lab</h2> <br>
                                    <table>
                                        <tr>
                                            <th>Lab No</th>
                                            <th>Start Time</th>
                                            <th>End Time</th>
                                            <th>Type</th>                                            
                                        </tr>
                                        <c:forEach var="Labassistants" items="${laball}">
                                            <tr>
                                                <td>${Labassistants.labassistantId}</td>
                                                <td>${Labassistants.labassistantStime}</td>
                                                <td>${Labassistants.labassistantEtime}</td>
                                                <td>${Labassistants.labassistantType}</td>
                                            </tr>
                                        </c:forEach>
                                    </table>

                                </div>
                                <div class="col-xs-12 col-md-4" style="float: right;text-align: center">
                                    <h2>Available Doctor</h2> <br>
                                    <table>
                                        <tr>
                                            <th>Doctore Id</th>
                                            <th>Name</th>
                                            <th>Start Time</th>
                                            <th>End Time</th>
                                            <th>Type</th>
                                        </tr>
                                        <c:forEach var="Doctors" items="${docall}">
                                            <tr>
                                                <td>${Doctors.doctorId}</td>
                                                <td>${Doctors.doctorFirstname}</td>
                                                <td>${Doctors.doctorStime}</td>
                                                <td>${Doctors.doctorEtime}</td>
                                                <td>${Doctors.doctorType}</td>
                                            </tr>
                                        </c:forEach>
                                    </table>



                                </div>
                            </div>


                        </section>
                    </div>



                </section>
            </section>
        </div>
        <script>
            function loadpatient() {
                var val = $('#keyval').val();
                if (val !== '') {
                    $.ajax({
                        type: 'GET',
                        url: '/NawalokaHospital/user/' + val,
//                    data: kk,
                        contentType: 'application/json',
                        success: function (data, textStatus, jqXHR) {
                            console.log(data);
                            console.log(data.length);
                            $('#tdatapatient').html("");
                            if (data.length !== 0) {
                                $.each(data, function (index, patient) {
                                    $('#tdatapatient').append("<tr> ");
                                    $('#tdatapatient').append("<th>" + patient.patientNicid + "</th>");
                                    $('#tdatapatient').append("<th>" + patient.patientFirstname + "</th>");
                                    $('#tdatapatient').append("<th>" + patient.patientAge + "</th>");
                                    $('#tdatapatient').append("<th><form action='recep_pationprof'><input type='hidden' name='user_name' id='user_name' value='" + patient.patientId + "'/><input value='View' type='submit' class='btn-success'/></form></th>");
                                    $('#tdatapatient').append("</tr>");
                                });
                            } else {
                                $('#tdatapatient').html("<tr>");
                                $('#tdatapatient').append("<th colspan='3' style='color:red;text-align:center'>No Existing patient</th>");
                                $('#tdatapatient').append("<th><form action='recep_addpation'><input value='Add' type='submit' class='btn-primary'/></form></th>");
                                $('#tdatapatient').append("</tr>");
                            }
                        },
                        error: function (jqXHR, textStatus, errorThrown) {
                        }
                    });
                } else {
                    $('#tdatapatient').html("");
                }
            }
        </script>







        <!-- END CONTENT -->



        <!-- END CONTAINER -->
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

</body>
</html>




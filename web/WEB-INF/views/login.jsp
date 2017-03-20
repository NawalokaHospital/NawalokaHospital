<%-- 
    Document   : logindoc
    Created on : Mar 4, 2017, 3:48:17 PM
    Author     : user
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>login Page</title>

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

    <body class=" login_page">

        <div class="register-wrapper">
            <div id="register" class="login loginpage col-lg-offset-4 col-lg-4 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8">
                <h1  class="text-warning"><strong>Login Page</strong></h1>
                <h3 style="color: red;text-align: left">
                    <%String message = (String) request.getAttribute("message"); %>
                    <% if (message != null) { %>
                    ${message}
                    <% }%>
                </h3>


                <!--<form name="loginform" id="loginform" action="index.html" method="post">-->
                <form:form method="POST" modelAttribute="logdata">    

                    <p>
                        <label for="user_login">UserName<br />
                            <form:input path="username" id="username"/>
                            <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                    </p>

                    <p>
                        <label for="user_login">Password<br />
                            <form:input type="password" path="password" id="password" class="input"/>
                            <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                    </p>

                    <p>
                        <label for="user_login">Conform Password<br />                           
                            <input type="text"  id="conpassword" class="input" value="" /></label>
                    </p>

                    <p class="submit">
                        <input type="submit" name="wp-submit" id="buttonsubmit" class="btn btn-orange btn-block" value="Submit" />
                    </p>

                </form:form>

                <button onclick="window.location.href = '/NawalokaHospital/reg_page'" class="btn btn-info btn-block">Register</button>

            </div>
        </div>


        <!-- CORE JS FRAMEWORK - START --> 
        <script src="<c:url value="/assets/mod1/js/jquery-1.11.2.min.js"/>" type="text/javascript"></script> 
        <script>
                    $(document).ready(function () {
                        $('#buttonsubmit').attr("disabled", "disabled");
                    };
        </script>
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


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>		

        <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
        <title>Register Page : Nawaloka Hospital</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

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
        <!-- CORE CSS TEMPLATE - END -->

    </head>
    <!-- END HEAD -->

    <!-- BEGIN BODY -->
    <body class=" login_page">

        <div class="register-wrapper">
            <div id="register" class="login loginpage col-lg-offset-4 col-lg-4 col-md-offset-3 col-md-6 col-sm-offset-3 col-sm-6 col-xs-offset-2 col-xs-8">
                <h1  class="text-warning"><strong>Nawaloka Hospital</strong></h1>
                <h3 style="color: red;text-align: left">
                    <%String message = (String) request.getAttribute("message"); %>
                    <% if (message != null) { %>
                    ${message}
                    <% }%>
                </h3>

                <!--<form name="loginform" id="loginform" action="index.html" method="post">-->
                <form:form method="POST" modelAttribute="regObj">                    

                    <p>
                        <label for="user_login">First Name<br />
                            <form:input path="firstname" id="firstname" required="true"/>
                            <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                    </p>

                    <p>
                        <label for="user_login">Last Name<br />
                            <form:input path="lastname" id="lastname" required="true"/>
                            <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                    </p>

                    <p>
                        <label for="user_login">User Role<br />                           
                            <select class="input" style="color: black" id="setuserrole" name="setuserrole" >
                                <c:forEach var="userrole" items="${regObj.userrole}">
                                    <option value="${userrole}">${userrole}</option>
                                </c:forEach>
                            </select>                                                      
                    </p>

                    <p>
                        <label for="user_login">UserName<br />
                            <form:input path="username" id="username" required="true"/>
                            <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                    </p>

                    <p>
                        <label for="user_login">Password<br />
                            <form:input type="password" path="password" id="password" class="input" required="true"/>
                            <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                    </p>
                    
                      <p>
                        <label for="user_login">Conform Password<br />                           
                            <input type="password"  id="conpassword" class="input" value="" /></label>
                    </p>

                    <p>
                        <label for="user_login">T No:<br />
                            <form:input path="mobileno" id="mobileno" required="true"/>
                            <!--<input type="text" name="log" id="user_login" class="input" value="" size="20" /></label>-->
                    </p>




                    <p class="submit">
                        <input type="submit" name="wp-submit" id="wp-submit" class="btn btn-orange btn-block" value="Submit" />
                    </p>

                </form:form>
                <!--</form>-->

                <p id="nav">
                    <a class="pull-left" href="#" title="Password Lost and Found">Forgot password?</a>
                    <a class="pull-right" href="login" title="Sign Up">Sign In</a>
                </p>
                <div class="clearfix"></div>
                <div class="col-md-12 text-center register-social">

                </div>

            </div>
        </div>
                
                 <script>
                    $(document).ready(function () {
                        $('#wp-submit').attr("disabled", "disabled");
                    });
                    $("#conpassword").keyup(function () {
                        var pass = $('#password').val();
                        var passconf = $('#conpassword').val();
                        if (pass === passconf) {
                            $('#wp-submit').attr("disabled", false);
                        }
                    });
        </script>

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

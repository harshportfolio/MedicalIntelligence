<!DOCTYPE html> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


<html lang="en">
	
<head>
		<title>Log In</title>
		
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
		
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/demo.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/sky-forms.css">
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/adminResources/image/favicon.png" />
		
	<style>
	.btn{
	float:left;height: 39px;overflow: hidden;margin: 10px 0 0 20px;padding: 0 25px;outline: none;
	border: 0;font: 300 15px/39px 'Open Sans', Helvetica, Arial, sans-serif;text-decoration: none;color: #fff;cursor: pointer;
	}
	
	 .bg-cyan
	 {
  		background-image: url(${pageContext.request.contextPath}/adminResources/image/bg-cyan.jpg);
  	 }
  	
	</style>	
	</head>
	<body class="bg-cyan">
		<div class="body body-s">
		
			<form action="j_spring_security_check" method="post" class="sky-form">
				<header>Login</header>
				
				<fieldset>					
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="text" placeholder="Username" name="username">
							    <i class="mdi mdi-account"></i>
							<b class="tooltip tooltip-bottom-right">Enter your username.</b>
						</label>
					</section>
					
					<section>
						<label class="input">
							<i class="icon-append icon-lock"></i>
							<input type="password" placeholder="Password" name="password">
							      <i class="mdi mdi-eye"></i>
							<b class="tooltip tooltip-bottom-right">Minimum 8 digits are required.</b>
						</label>
					</section>
					
					<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>          
					
				</fieldset>
				<footer>
				<div align="center">
					<input type="submit" class="button" value="Login">
					</form>
					<a href="#" class="btn">Forget Password</a>
			<br><br>
		  <a href="addDoctor" class="button" class="padding:0 px 10px 0px 10px">New User Registration</a>	</label>
			</div>
			</footer>		
	</div>
</body>
</html>














<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Victory Admin</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/simple-line-icons.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/flag-icon.min.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/perfect-scrollbar.min.css">
  
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/demo.css">
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/perfect-scrollbar.css">
  
  
  <!-- endinject -->
  <!-- plugin css for this page -->
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <link rel="stylesheet" href="${pageContext.request.contextPath}/adminResources/css/style.css">
  <!-- endinject -->
  <link rel="shortcut icon" href="${pageContext.request.contextPath}/adminResources/image/favicon.png" />
  
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper">
      <div class="row">
        <div class="content-wrapper full-page-wrapper d-flex align-items-center auth login-full-bg">
          <div class="row w-100">
            <div class="col-lg-4 mx-auto">
              <div class="auth-form-dark text-left p-5">
                <h2>Login</h2>
                <h4 class="font-weight-light">Hello! let's get started</h4>
                
                
                <form  action="j_spring_security_check" method="post">  
                  <div class="form-group">
                    <label for="exampleInputEmail1">Username</label>
                    <input type="email" class="form-control" placeholder="Username" name="username"> 
                    <i class="mdi mdi-account"></i>
                  </div>
                  <div class="form-group">
                    <label for="exampleInputPassword1">Password</label>
                    <input type="password" class="form-control" placeholder="Password" name="password">
                    <i class="mdi mdi-eye"></i>
                  </div>
                  <div class="mt-5">
                  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>          
                    <input type="submit" class="btn btn-block btn-warning btn-lg font-weight-medium" value="login">
                    <!-- <a  href="../../index.html">Login</a> -->
                  </div>
                  
                  <div class="mt-3 text-center">
                    <a href="#" class="auth-link text-white">Forgot password?</a>
                  </div>        
                  
                  <div class="mt-3 text-center">
                    <a href="addDoctor" class="auth-link text-white">New User Registration</a>
                  </div>
                </form>              
              </div>
            </div>
          </div>
        </div>
        <!-- content-wrapper ends -->
      </div>
      <!-- row ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- plugins:js -->
  <script src=".adminResources/js/jquery.min.js"></script>
  <script src="adminResources/js/popper.min.js"></script>
  <script src="adminResources/js/bootstrap.min.js"></script>
  <script src="adminResources/js/perfect-scrollbar.jquery.min.js"></script>
  <!-- endinject -->
  <!-- inject:js -->
  <script src="adminResources/js/off-canvas.js"></script>
  <script src="adminResources/js/hoverable-collapse.js"></script>
  <script src="adminResources/js/misc.js"></script>
  <script src="adminResources/js/settings.js"></script>
  <script src="adminResources/js/todolist.js"></script>
  <!-- endinject -->
</body>

</html>
 --%>
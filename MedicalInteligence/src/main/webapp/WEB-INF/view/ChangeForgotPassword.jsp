<!DOCTYPE html> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>


<html lang="en">
	
<head>
		<title>Forgot Password</title>
		
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
		
			<form action="step2" method="post" class="sky-form">
				<header>Create New Password</header>
				
				<fieldset>					
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="text" placeholder="Enter OTP" id="otp" name="otp">
							    <i class="mdi mdi-account"></i>
							<b class="tooltip tooltip-bottom-right">Enter OTP</b>
						</label>
					</section><span id="otpSpn"></span>
					
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="password" placeholder="New Password" id="password" name="password">
							
							    <i class="mdi mdi-account"></i>
							<b class="tooltip tooltip-bottom-right">New Password</b>
						</label>
					</section><span id="pwdSpn"></span>
					
					<section>
						<label class="input">
							<i class="icon-append icon-user"></i>
							<input type="password" placeholder="Confirm New Password" id="confirmpassword" name="confirmpassword">
							    <i class="mdi mdi-account"></i>
							<b class="tooltip tooltip-bottom-right">Confirm New Password</b>
						</label>
					</section>
                <span id="con_pwdSpn"></span>
				</fieldset>
				<footer>
				<div align="center">
					<input type="submit" class="button" value="Submit">
					</form>
				</div>
			</footer>		
	</div>
	
	<script type="text/javascript">
		
		var generatedOTP = <%=session.getAttribute("generatedOTP")%>;
		
		$("#otp").keyup(function(){
			
			
			
			if(generatedOTP == $("#otp").val()){
				$("#otpSpn").html("OTP Matched.");
				$("#otpSpn").css("color" , "green");
				$("#otpSpn").css("font-weight" , "bold");
				$("#calculate").attr("disabled" , false);
			}
			else{
				$("#otpSpn").html("Wrong OTP.");
				$("#otpSpn").css("color" , "red");
				$("#otpSpn").css("font-weight" , "bold");
				$("#calculate").attr("disabled" , true);
			}
			
		});
		
		
		$("#confirmpassword").keyup(function()
				{
					if($("#password").val() == $("#confirmpassword").val()){
						$("#con_pwdSpn").html("Password Matched.");
						$("#con_pwdSpn").css("color" , "green");
						$("#con_pwdSpn").css("font-weight" , "bold");
						$("#calculate").attr("disabled" , false);
					}
					else{
						$("#con_pwdSpn").html("Wrong Password.");
						$("#con_pwdSpn").css("color" , "red");
						$("#con_pwdSpn").css("color" , "red");
						$("#con_pwdSpn").css("font-weight" , "bold");
						$("#calculate").attr("disabled" , true);
						}
				});
		  
	</script>
</body>
</html>
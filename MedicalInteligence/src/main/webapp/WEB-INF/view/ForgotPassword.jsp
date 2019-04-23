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
		
			<form action="searchstep1" method="post" class="sky-form">
				<header>Forgot Password</header>
				
				<fieldset>					
					<section>
						<label class="input">
							<input type="email" placeholder="Enter Registered Email Address" name="username" required="required">
							<b class="tooltip tooltip-bottom-right">Enter Registered Email Address</b>
						</label>
					</section>
				</fieldset>
				<footer>
				<div align="center">
					<input type="submit" class="button" value="Submit">
					</form>
				</div>
			</footer>		
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>MI</title>
</head>
<body>
<header> 
    <div class="container">
    <!--======= LOGO =========-->
    <div class="logo"> <a href="index"><img src="<%=request.getContextPath()%>/doctorResources/image/logo.png" alt="MI" ></a> </div>
    
    <!--======= NAVIGATION =========-->
      <nav class="webimenu"> 
        <!-- MENU BUTTON RESPONSIVE -->
        <div class="menu-toggle"> <i class="fa fa-bars"> </i> </div>
        <ul class="ownmenu">
          <li class=""><a href="index">Home</a></li>
        <!--   <li><a href="02-about-us.html">About us </a>
            <ul class="dropdown animated-3s fadeIn">
              </ul>
          </li> -->
          
          
         <!--  
          <li><a href="index.html">Pages</a>  -->
          <li><a href="viewPackage">Package</a></li> 
          <li><a href="">Knee X-Ray</a> 
          	<ul class="dropdown animated-3s fadeIn">
          		<li><a href="uploadXray">Upload X-Ray</a> </li>
            	<li><a href="viewDetection">View Detection</a> </li>
            	<li><a href="uploadXray">Report</a> </li>
            </ul>
          </li>  
          
          <li><a href="">Complaint</a>
            <ul class="dropdown animated-3s fadeIn">
            	<li><a href="addComplain">Post Complaint</a> </li>
            	<li><a href="seeComplain">View Reply</a> </li>
            </ul>
          </li>
        
        <li><a href="">Feedback</a>
            <ul class="dropdown animated-3s fadeIn">
            <li><a href="addFeedback">Post Feedback</a> </li>
          <li><a href="viewFeedback">View Feedback</a> </li>
            </ul>
          </li>
          
          <li><a href="">Manage Profile</a>
            <ul class="dropdown animated-3s fadeIn">
            <li><a href="addFeedback">Edit Profile</a> </li>
          <li><a href="changePassword">Change Password</a> </li>
            </ul>
          </li>  

          <li><a href="/logout" class="deactive">Logout</a> </li>
        </ul>
      </nav>
    </div>
  </header>

</body>
</html>
          
            <!--======= MEGA MENU =========
            <ul class="megamenu full-width animated-3s fadeIn">
              <li class="row nav-post">
                <div class="col-sm-6 boder-da-r">
                  <ul>
                    <li><a href="index.html">Home</a></li>
                    <li><a href="index-1.html">Home Slider</a></li>
                    <li><a href="index-2.html">Home 2</a></li>
                    <li><a href="index-header.html">header 1</a></li>
                    <li><a href="appointment.html">Appointment</a></li>
                    <li><a href="02-about-us.html">About</a></li>
                    <li><a href="02-about-us-1.html">About 2</a></li>
                    <li><a href="services.html">SERVICES</a></li>
                    <li><a href="services-1.html">SERVICES 2</a></li>
                    <li><a href="03-department.html">Department</a></li>
                    <li><a href="04-department-detail.html">Department Detail</a></li>
                    <li><a href="team.html">TEAM</a></li>
                    <li><a href="05-doctors.html">Doctors</a></li>
                    <li><a href="05-doctors-1.html">Doctors 2</a></li>
                  </ul>
                </div>
                <div class="col-sm-6">
                  <ul>
                    <li><a href="08-blog.html">Blog</a></li>
                    <li><a href="09-blog-single.html">Blog Single</a></li>
                    <li><a href="10-shop.html">Shop</a></li>
                    <li><a href="11-product-detail.html">Product Detail</a></li>
                    <li><a href="12-contact.html">Contact</a></li>
                    <li><a href="shortcodes.html">Shortcodes</a></li>
                    <li><a href="coming-soon.html">Coming Soon</a></li>
                    <li><a href="404.html">404</a></li>
                  </ul>
                </div>
              </li>
            </ul>
          </li>-->
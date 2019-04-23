<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Medical Intelligence</title>
<meta name="keywords" content="HTML5,CSS3,HTML,Template,Multi-Purpose,M_Adnan,Corporate Theme,Medikal,Health Care,Medikal - Health Care & Medical HTML5 Template">
<meta name="description" content="Medical Intelligence">
<meta name="author" content="MI">

<!-- FONTS ONLINE -->
<link href='http://fonts.googleapis.com/css?family=Raleway:500,600,700,100,800,900,400,200,300' rel='stylesheet' type='text/css'>

<!--MAIN STYLE-->
<link href="<%=request.getContextPath()%>/doctorResources/css/bootstrap.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/doctorResources/css/main.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/doctorResources/css/style.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/doctorResources/css/responsive.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/doctorResources/css/animate.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/doctorResources/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link href="<%=request.getContextPath()%>/doctorResources/css/ionicons.min.css" rel="stylesheet" type="text/css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
<![endif]-->

</head>
<body>

<!-- Page Wrap ===========================================-->
<div id="wrap"> 
  
  <!-- TOP BAR ===========================================
  <div class="top-bar light">
    
    <jsp:include page="header.jsp"></jsp:include>
    
  </div>-->
  <!-- HEADER ===========================================-->
  <jsp:include page="menu.jsp"></jsp:include>
  
  <!--======= CONTENT =========-->
  <div class="content fix-nav-space"> 
    
    <!--======= SUB BANNER =========-->
    <section class="sub-banner" data-stellar-background-ratio="0.5">
      <div class="overlay">
        <div class="container">
          <h3>Doctors</h3>
          <p>Join Us for Health Care Automation</p>

          <!--======= Breadcrumbs =========-->
          <ol class="breadcrumb">
            <li><a href="index">Home</a></li>
            <li class="active">DOCTOR</li>
          </ol>
        </div>
      </div>
    </section>
    
    <!--======= FOUNDER =========-->
    <section id="founder">
      <div class="container">
        <div class="row"> 
          
          <!--Tittle-->
          <div class="col-lg-4 padding-r-80">
            <div class="tittle">
              <h2>Our Founders</h2>
            </div>
            
            <br>
            <p>I treasure my client's value with a user-friendly interface. I am continually improving the effectiveness of quality through teamwork, better tools, and better technology.
To become a prime performer, in providing quality software and to enhance the business growth of customers with creative Design and Development that gives a competitive advantage to our clients around the world.</p>
          </div>
          
          <!--======= founder sliders =========-->
          <div class="col-lg-8">
            <div class="founder-slide"> 
              
              <!-- Slider 1 -->
              <div class="slide"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/founder-1.jpg" alt="">
                <h4>Harsh Bhavsar</h4>
                <p>Software Developer</p>
              </div>
              
              <!-- Slider 2 -->
              <div class="slide"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/founder-2.jpg" alt="">
                <h4>Chirag Panchal</h4>
                <p>Software Developer</p>
              </div>
              
              <!-- Slider 3 -->
              <div class="slide"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/founder-1.jpg" alt="">
               <h4>Harsh Bhavsar</h4>
                <p>Software Developer</p>
              </div>
              
              <!-- Slider 4 -->
              <div class="slide"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/founder-2.jpg" alt="">
                <h4>Chirag Panchal</h4>
                <p>Software Developer</p>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    
    <section class="doctor-team">
      <div class="container"> 
        <!--======= TITTLE =========-->
        <div class="tittle">
          <h2>Our Team Of Highly Skilled </h2>
        </div>
      </div>
      
      <!--======= CONTAINER FUILD =========-->
      <div class="container-fluid">
        <ul class="row">
          
          <!-- Image -->
          <li class="col-md-4 no-padding"> <img src="<%=request.getContextPath()%>/doctorResources/image/doctor-1.jpg" alt="" > </li>
          <li class="col-md-4 no-padding"> 
            
            <!-- Doctor Info -->
            <div class="doctor-in left">
              <h4>Jane Butler</h4>
              <span>X-ray</span>
              <div class="personal-info">
                <p> <span>Education </span> MD, OB/GYN </p>
                <p> <span>Experience</span>2 years </p>
                <p> <span>Office</span>Office 12b, Hall A</p>
              </div>
              <ul class="social_icons">
                <li class="facebook"><a href="#."><i class="fa fa-facebook"></i> </a></li>
                <li class="twitter"><a href="#."><i class="fa fa-twitter"></i> </a></li>
                <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i> </a></li>
                <li class="googleplus"><a href="#."><i class="fa fa-google-plus"></i> </a></li>
                <li class="skype"><a href="#."><i class="fa fa-skype"></i> </a></li>
              </ul>
            </div>
            
            <!-- Doctor Info -->
            <div class="doctor-in right">
              <h4>Lynn Lambert</h4>
              <span>Cardiology</span>
              <div class="personal-info">
                <p> <span>Education </span> MD, OB/GYN </p>
                <p> <span>Experience</span>2 years </p>
                <p> <span>Office</span>Office 12b, Hall A</p>
              </div>
              
              <!-- Social Icons -->
              <ul class="social_icons">
                <li class="facebook"><a href="#."><i class="fa fa-facebook"></i> </a></li>
                <li class="twitter"><a href="#."><i class="fa fa-twitter"></i> </a></li>
                <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i> </a></li>
                <li class="googleplus"><a href="#."><i class="fa fa-google-plus"></i> </a></li>
                <li class="skype"><a href="#."><i class="fa fa-skype"></i> </a></li>
              </ul>
            </div>
          </li>
          
          <!-- Image 2 -->
          <li class="col-md-4 no-padding"> <img src="<%=request.getContextPath()%>/doctorResources/image/doctor-2.jpg" alt="" > </li>
        </ul>
      </div>
      
      <!--======= DOCTOR LIST =========-->
      <div class="doctor-list">
        <div class="container"> 
          
          <!-- Soctor List Slider -->
          <div class="doct-list-style">
            <div class="item"> <a href="#pop-open" class="link popup-vedio video-btn"><img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doc-img-1.jpg" alt="" ></a> </div>
            <div class="item"><a href="#pop-open-1" class="link popup-vedio video-btn"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doc-img-2.jpg" alt="" ></a> </div>
            <div class="item"> <a href="#pop-open" class="link popup-vedio video-btn"><img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doc-img-3.jpg" alt="" ></a> </div>
            <div class="item"> <a href="#pop-open-1" class="link popup-vedio video-btn"><img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doc-img-4.jpg" alt="" ></a> </div>
            <div class="item"> <a href="#pop-open" class="link popup-vedio video-btn"><img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doc-img-5.jpg" alt="" ></a> </div>
            <div class="item"> <a href="#pop-open-1" class="link popup-vedio video-btn"><img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doc-img-6.jpg" alt="" ></a> </div>
            <div class="item"> <a href="#pop-open" class="link popup-vedio video-btn"><img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doc-img-2.jpg" alt="" ></a> </div>
            <div class="item"> <a href="#pop-open-1" class="link popup-vedio video-btn"><img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doc-img-3.jpg" alt="" ></a> </div>
          </div>
        </div>
      </div>
    </section>
    
    <!--======= POPUP DOCTOR =========-->
    <div id="pop-open" class="zoom-anim-dialog mfp-hide pop-open-style">
      <div class="pop_up">
      <!-- Doctor Image -->
        <div class="col-sm-6 no-padding"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doctor-1-1.jpg" alt="" > </div>
        <div class="col-md-6 no-padding">
          <div class="doctor-in">
            <h4>Jane Butler</h4>
            <span>X-ray</span>
            <!-- Personal Info -->
            <div class="personal-info">
              <ul>
                <li class="col-sm-4"><strong>Education </strong></li>
                <li class="col-sm-8"> MD, OB/GYN </li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Experience </strong></li>
                <li class="col-sm-8">2 years</li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Office </strong></li>
                <li class="col-sm-8">Office 12b, Hall A</li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Work days </strong></li>
                <li class="col-sm-8">Monday, Friday, Sunday</li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Email </strong></li>
                <li class="col-sm-8">janebutler@medikalclinic.com</li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Trainning </strong></li>
                <li class="col-sm-8">Nam liber tempor cum soluta nobis eleif end option congue nihil impedo mingid quod mazim placerat facer <br>
                  <br>
                  Nulla vitae elit libero, a pharetra augue uris 
                  id Integer posuere erat</li>
              </ul>
              
              <!-- Social Icon -->
              <ul class="margin-t-20">
                <li class="col-sm-4"><strong class="t-10">Social info </strong></li>
                <li class="col-sm-8"> 
                  <!-- Social Icons -->
                  <ul class="social_icons">
                    <li class="facebook"><a href="#."><i class="fa fa-facebook"></i> </a></li>
                    <li class="twitter"><a href="#."><i class="fa fa-twitter"></i> </a></li>
                    <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i> </a></li>
                    <li class="googleplus"><a href="#."><i class="fa fa-google-plus"></i> </a></li>
                    <li class="skype"><a href="#."><i class="fa fa-skype"></i> </a></li>
                  </ul>
                </li>
              </ul>    
              
              <!-- View Table -->          
              <a href="#." class="table-link">View timetable <i class="fa fa-arrow-circle-o-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!--======= POPUP DOCTOR =========-->
    <div id="pop-open-1" class="zoom-anim-dialog mfp-hide pop-open-style">
      <div class="pop_up">
      <!-- Doctor Image -->
        <div class="col-sm-6 no-padding"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/doctor-2-2.jpg" alt="" > </div>
        <div class="col-md-6 no-padding">
          <div class="doctor-in">
            <h4>Lynn Lambert</h4>
            <span>Cardiology</span>
            <!-- Personal Info -->
            <div class="personal-info">
              <ul>
                <li class="col-sm-4"><strong>Education </strong></li>
                <li class="col-sm-8"> MD, OB/GYN </li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Experience </strong></li>
                <li class="col-sm-8">2 years</li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Office </strong></li>
                <li class="col-sm-8">Office 12b, Hall A</li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Work days </strong></li>
                <li class="col-sm-8">Monday, Friday, Sunday</li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Email </strong></li>
                <li class="col-sm-8">janebutler@medikalclinic.com</li>
              </ul>
              <ul>
                <li class="col-sm-4"><strong>Trainning </strong></li>
                <li class="col-sm-8">Nam liber tempor cum soluta nobis eleif end option congue nihil impedo mingid quod mazim placerat facer <br>
                  <br>
                  Nulla vitae elit libero, a pharetra augue uris 
                  id Integer posuere erat</li>
              </ul>
              
              <!-- Social Icon -->
              <ul class="margin-t-20">
                <li class="col-sm-4"><strong class="t-10">Social info </strong></li>
                <li class="col-sm-8"> 
                  <!-- Social Icons -->
                  <ul class="social_icons">
                    <li class="facebook"><a href="#."><i class="fa fa-facebook"></i> </a></li>
                    <li class="twitter"><a href="#."><i class="fa fa-twitter"></i> </a></li>
                    <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i> </a></li>
                    <li class="googleplus"><a href="#."><i class="fa fa-google-plus"></i> </a></li>
                    <li class="skype"><a href="#."><i class="fa fa-skype"></i> </a></li>
                  </ul>
                </li>
              </ul>    
              
              <!-- View Table -->          
              <a href="#." class="table-link">View timetable <i class="fa fa-arrow-circle-o-right"></i></a>
            </div>
          </div>
        </div>
      </div>
    </div>

  <!--======= FOOTER =========-->
   <jsp:include page="footer.jsp"></jsp:include>
</div>
<!-- Wrap End --> 
<script src="<%=request.getContextPath()%>/doctorResources/js/jquery-1.11.0.min.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/bootstrap.min.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/own-menu.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/owl.carousel.min.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/jquery.superslides.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/masonry.pkgd.min.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/jquery.stellar.min.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/jquery-ui-1.10.3.custom.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/jquery.magnific-popup.min.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/jquery.isotope.min.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/jquery.flexslider-min.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/appointment.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/jquery.downCount.js"></script>
<script src="<%=request.getContextPath()%>/doctorResources/js/counter.js"></script> 
<script src="<%=request.getContextPath()%>/doctorResources/js/main.js"></script>
</body>
</html>

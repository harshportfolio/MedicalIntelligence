<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Medikal - Health Care &amp; Medical HTML5 Template</title>
<meta name="keywords" content="HTML5,CSS3,HTML,Template,Multi-Purpose,M_Adnan,Corporate Theme,Medikal,Health Care,Medikal - Health Care & Medical HTML5 Template">
<meta name="description" content="Medikal - Health Care & Medical HTML5 Template">
<meta name="author" content="M_Adnan">

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
  
  <!-- TOP BAR ===========================================-->
  <div class="top-bar light">
    
    <jsp:include page="header.jsp"></jsp:include>
    
  </div>
  <!-- HEADER ===========================================-->
  <jsp:include page="menu.jsp"></jsp:include>
  
  <!--======= CONTENT =========-->
  <div class="content fix-nav-space"> 
    
    <!--======= SUB BANNER =========-->
    <section class="sub-banner" data-stellar-background-ratio="0.5">
      <div class="overlay">
        <div class="container">
          <h3>Doctors</h3>
          <p>Meet our team of highly skilled professionals</p>

          <!--======= Breadcrumbs =========-->
          <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
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
            <p>Claritas est etiam processus dynamicus,  lectorum. Mirum est notare quam est notare quam littera. Eodem modo typi, qui nunc nobis clari.</p>
            <br>
            <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam ut laoreet.</p>
          </div>
          
          <!--======= founder sliders =========-->
          <div class="col-lg-8">
            <div class="founder-slide"> 
              
              <!-- Slider 1 -->
              <div class="slide"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/founder-1.jpg" alt="">
                <h4>Dr. Forest Aalderink</h4>
                <p>Clinic president</p>
              </div>
              
              <!-- Slider 2 -->
              <div class="slide"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/founder-2.jpg" alt="">
                <h4>Dr. Bryce Butler</h4>
                <p>Clinic president</p>
              </div>
              
              <!-- Slider 3 -->
              <div class="slide"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/founder-1.jpg" alt="">
                <h4>Dr. Bryce Butler</h4>
                <p>Clinic president</p>
              </div>
              
              <!-- Slider 4 -->
              <div class="slide"> <img class="img-responsive" src="<%=request.getContextPath()%>/doctorResources/image/founder-2.jpg" alt="">
                <h4>Dr. Bryce Butler</h4>
                <p>Clinic president</p>
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
    
    <!--======= Contact Info =========-->
    <section class="contact-info">
      <div class="container"> 
        
        <!--Address-->
        <ul class="row">
          <li class="col-md-3"> <i class="ion-ios-location-outline"></i>
            <h5>Address</h5>
            <p>1800 Abbot Kinney Blvd. Unit D & E
              Venice, CA 90291</p>
          </li>
          
          <!-- Hot line -->
          <li class="col-md-3"> <i class="ion-iphone"></i>
            <h5>Hotline</h5>
            <p>+00-0122-123-0089</p>
          </li>
          
          <!--Email Contact-->
          <li class="col-md-3"> <i class="ion-ios-email-outline"></i>
            <h5>Email contact</h5>
            <p>medikal@gmail.com</p>
            <p> contact@medikalclinic.com</p>
          </li>
          
          <!--Website-->
          <li class="col-md-3"> <i class="ion-earth"></i>
            <h5>Website</h5>
            <p>www.medikalclinic.com </p>
          </li>
        </ul>
      </div>
    </section>
  </div>
  
  <!--======= FOOTER =========-->
  <footer>
    <div class="container"> 
      <!-- Row -->
      <div class="row"> 
        
        <!-- Latest Tweet -->
        <div class="col-md-3">
          <div class="latest-tweet">
            <h5>Latest tweets</h5>
            <ul>
              
              <!--Tweet 1 -->
              <li>
                <p><span>@medikal</span> Sweets and Bakers 
                  WordPress Theme' on @EnvatoMarket by themefore<a href="#."> http://t.co/we8Kf0</a></p>
                <span class="date"> - Thursday April 9, 2015</span> </li>
              
              <!--Tweet 2 -->
              <li>
                <p><span>@medikal</span> In hendrerit in molestie consequat in <a href="#."> http://t.co/we8Kf0</a></p>
                <span class="date"> - Thursday April 9, 2015</span> </li>
              
              <!--Tweet 3 -->
              <li>
                <p><span>@medikal</span> Duis autem vel eum iriure <span>@medikal</span> dolor in hendrerit in molestie consequat <a href="#."> http://t.co/we8Kf0</a></p>
                <span class="date"> - Thursday April 9, 2015</span> </li>
            </ul>
          </div>
        </div>
        
        <!-- About Us -->
        <div class="col-md-6">
          <div class="small-info"> <img src="<%=request.getContextPath()%>/doctorResources/image/logo-white.png" alt="">
            <p>We work in a friendly and efficient using the latest technologies and sharing our expertise to make a diagnosis and implement cutting-edge therapies.</p>
            <ul class="social_icons">
              <li class="facebook"><a href="#."><i class="fa fa-facebook"></i> </a></li>
              <li class="twitter"><a href="#."><i class="fa fa-twitter"></i> </a></li>
              <li class="linkedin"><a href="#."><i class="fa fa-linkedin"></i> </a></li>
            </ul>
            
            <!-- News Letter -->
            <h5>register newsletter</h5>
            <form>
              <input type="email" placeholder="Enter your email here" required>
              <button type="submit"> Subscribe</button>
            </form>
          </div>
        </div>
        
        <!-- Patient Guide -->
        <div class="col-md-3">
          <div class="links text-right">
            <h5>Patient Guide</h5>
            <ul>
              <li><a href="#."> Choosing a doctor</a></li>
              <li><a href="#."> Health journals</a></li>
              <li><a href="#."> Insurance converage</a></li>
              <li><a href="#."> Talking to your doctor</a></li>
              <li><a href="#."> Medikal error</a></li>
            </ul>
            
            <!-- Timing -->
            <div class="timing">
              <h5>opening hours</h5>
              <p>Mon to Fri <span> 8:00 am to 7:00pm</span></p>
              <p>Sun & Sat <span>9:00 am to 5:00pm</span></p>
            </div>
          </div>
        </div>
      </div>
    </div>
    
    <!-- Rights -->
    <div class="rights">
      <p>� 2015 Medikal. Made with by M_Adnan </p>
    </div>
  </footer>
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

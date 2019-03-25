
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
  
  <jsp:include page="header.jsp"></jsp:include>
  
  <!-- HEADER ===========================================-->

	<jsp:include page="menu.jsp"></jsp:include>
  
  <!--======= CONTENT =========-->
  <div class="content fix-nav-space"> 
    
    <!--======= SUB BANNER =========-->
    <section class="sub-banner" data-stellar-background-ratio="0.5">
      <div class="overlay">
        <div class="container">
          <h3>REPORT</h3>
          <p>Collect your report from here</p>

          <!--======= Breadcrumbs =========-->
          <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li class="active">REPORT</li>
          </ol>
        </div>
      </div>
    </section>
    
    <!--======= RECENT CASES =========-->
    <section class="gallery-pages">
      <div class="portfolio-wrapper">
        <div class="container"> 
        <!--   
          ======= FILTERS =========
          <ul class="filter">
            <li><a class="active" href="#." data-filter="*">Show All</a></li>
            <li><a href="#" data-filter=".dental">Dental</a></li>
            <li><a href="#" data-filter=".cardiology">Cardiology</a></li>
            <li><a href="#" data-filter=".disabled">For Disabled</a></li>
            <li><a href="#" data-filter=".ophthalmology">Ophthalmology</a></li>
            <li><a href="#" data-filter=".emergency">Emergency</a></li>
          </ul>
        </div> -->
        <div class="container popup-gallery"> 
          
          <!--======= GALLERY ROW =========-->
          <ul class="items gallery-item row">
            
            <!--======= GALLERY IMG 1 =========-->
            
            <%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
            
            <c:forEach items="${reportList}" var="i">
            	<li class="col-sm-4 item cardiology ophthalmology">
	              <section> <img class="img-responsive" src="<%=request.getContextPath()%>/output/${i.image_status}/${i.image_name}" alt="">
	                <div class="item-over"> <a href="<%=request.getContextPath()%>/output/${i.image_status}/${i.image_name}" class="item-in pa-20">
	                  <h5>${i.image_status}</h5>
	                  <hr>
	                  <p>DATE : ${i.image_Date}</p>
	                  <p>TIME : ${i.image_Time}</p>
	                  </a> </div>
	              </section>
            </li>
            </c:forEach>
            
            
            
          </ul>
        </div>
      </div>
    </section>
    
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
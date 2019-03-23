<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
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
          <h3>Complaint</h3>
      
                <!--======= Breadcrumbs =========-->
          <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li class="active">COMPLAINT</li>
          </ol>
        </div>
      </div>
    </section>
    
    <!--======= CONATCT =========-->
    <div class="contact">
      <div class="container">
        <div class="row">
          <div class="col-md-8"> 
            <h4>Complaint</h4>
            
            <!--======= CONTACT FORM =========-->
            <div class="contact-form"> 
            
          
              
              <!--======= Success Msg =========-->
              
              
              <!--======= COMPLAIN  =========-->
              <div id="contact_message" class="success-msg"> <i class="fa fa-paper-plane-o"></i>Thank You. Your Complain has been Submitted</div>
            <f:form  modelAttribute="complainVO" action="insertComplain"  method="post" enctype="multipart/form-data">
             
              <ul class="row">
                <li class="col-sm-12">
                  <label>Complaint Subject 
                    <f:input type="text" class="form-control" path="complaintSubject" id="name" placeholder=""/>
                  </label>
                </li>
                <li class="col-sm-12">
                  <label>Complaint Description 
                    <f:input type="text" class="form-control" path="complaintDescription"  placeholder=""/>
                  </label>
                </li>
              
                <li class="col-sm-12">
                  <label>File 
                    <input type="file" class="form-control" name="file"  placeholder="">
                  </label>
                </li>
                
                <li class="col-sm-12">
                  <button type="submit" value="submit" class="btn" id="btn_submit">Submit</button>
                </li>
              </ul>
            </f:form>
              
            </div>
          </div>
          
          
              </div>
      </div>
    </div>
    
    
        <!--======= GOOGLE MAP =========-->
        
    
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
<script type='text/javascript' src='http://maps.google.com/maps/api/js?sensor=false'></script> 
<!-- begin map script--> 
<script type="text/javascript">
/*==========  Map  ==========*/
var map;
function initialize_map() {
if ($('#map').length) {
	var myLatLng = new google.maps.LatLng(-37.814199, 144.961560);
	var mapOptions = {
		zoom: 17,
		center: myLatLng,
		scrollwheel: false,
		panControl: false,
		zoomControl: true,
		scaleControl: false,
		mapTypeControl: false,
		streetViewControl: false
	};
	map = new google.maps.Map(document.getElementById('map'), mapOptions);
	var marker = new google.maps.Marker({
		position: myLatLng,
		map: map,
		tittle: 'Envato',
		icon: './images/map-locator.png'
	});
} else {
	return false;
}
}
google.maps.event.addDomListener(window, 'load', initialize_map);
</script>
</body>
</html>
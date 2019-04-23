<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
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
          <h3>Edit Profile</h3>
      
                <!--======= Breadcrumbs =========-->
          <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li class="active">Edit Profile</li>
          </ol>
        </div>
      </div>
    </section>
    
    <!--======= CONATCT =========-->
    <div class="contact">
      <div class="container">
        <div class="row">
          <div class="col-md-8"> 
            <h4>Edit Profile</h4>
            
            <!--======= CONTACT FORM =========-->
            <div class="contact-form"> 
            
          
              
              <!--======= Success Msg =========-->
              
              
              <!--======= COMPLAIN  =========-->
              <div id="contact_message" class="success-msg"> <i class="fa fa-paper-plane-o"></i>Thank You. Your Complain has been Submitted</div>
            <f:form  modelAttribute="doctorVO" action="updateDoctor"  method="post" enctype="multipart/form-data">
             
             		<f:hidden path="loginVO.id"/>
                    <f:hidden path="doctorId"/> 
                    <f:hidden path="loginVO.enabled"/>
                    <f:hidden path="loginVO.role"/> 
             
              <ul class="row">
                <li class="col-sm-12">
                  <label>Firstname
                    <f:input type="text" class="form-control" path="firstName" id="name" placeholder=""/>
                  </label>
                </li>
                
                <li class="col-sm-12">
                  <label>Lastname
                    <f:input type="text" class="form-control" path="lastName"  placeholder=""/>
                  </label>
                </li>
              
                <li class="col-sm-12">
                  <label>Email
                    <f:input type="email" class="form-control" path="loginVO.username"  placeholder=""/>
                  </label>
                </li>
                
                  <li class="col-sm-12">
                  <label>Password
                    <f:input type="password" class="form-control" path="loginVO.password"  placeholder=""/>
                  </label>
                </li>
                
                 <li class="col-sm-12">
                <label for="gender">Gender <sup><span style="color: red;">*</span></sup></label>
                <f:radiobutton path="gender" id="male" class="form-control" value="male" checked="checked" required="required"></f:radiobutton><label for="male">Male</label>
                <f:radiobutton path="gender" id="female" class="form-control" value="female" required="required"></f:radiobutton><label for="female">Female</label>
				</li>              
              
             	 <label for="select">Educational Degree <sup><span style="color: red;">*</span></sup></label>
                   <f:select path="degree" class="form-control" required="required">
				   <f:option value="0" disabled="disabled" selected="selected" required="required">--Select--</f:option>
				   <f:option value="Orthopedic">Orthopedic</f:option>
				   <f:option value="M.B.B.S.">M.B.B.S.</f:option>
				   <f:option value="Other">Other</f:option>
				</f:select>
                
                <li class="col-sm-12">
                <label for="phone">Phone Number <sup><span style="color: red;">*</span></sup></label>
                        <f:input path="phoneNumber" id="phoneNumber" class="form-control"  type="number" required="required"/>
                 </li>
                       
                <li class="col-sm-12">
                
                <label for="hospitalname">Hospital Name <sup><span style="color: red;">*</span></sup></label>
                <f:input id="hospitalname" path="hospitalName" class="form-control"  type="text" required="required"/>
                </li>
                
                 <li class="col-sm-12">
                
                <label for="hospitalAddress">Hospital Address <sup><span style="color: red;">*</span></sup></label>
                <f:input id="hospitalAddress" path="hospitalAddress" class="form-control"  type="text" required="required"/>
                </li>
                
                 <li class="col-sm-12">
                 <label for="ccomment">Residential Address (Optional)</label> 
                    <f:textarea path="residentialAddress" id="ccomment" class="form-control" ></f:textarea>        
                  </li>
                  
                        
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
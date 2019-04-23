<%@page import="com.project.utils.BaseMethods"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<title>View Detection</title>

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



<script type="text/javascript" >

function fn1()
{
	var imageName = document.getElementById("imageName");
	
	path = imageName.value.replace("C:\\fakepath\\","");
	
	var htp=new XMLHttpRequest();

	var userName = '<%=BaseMethods.getUser()%>';
	
	console.log(userName);
	
	htp.onreadystatechange=function(){
	
		if(htp.readyState==4){
			
			
			alert(htp.responseText);
		}
	}
htp.open("get","http://127.0.0.1:5000/?imageName="+path+"&userName="+userName,true);
htp.send();
}

</script>
</head>
<body>
<!-- 	
	<input type="file" value="choose file" id ="imageName">
	
	<input type="button" value="Detection" onclick="fn1()">
	 -->
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
          <h3>View Detection</h3>
          

          <!--======= Breadcrumbs =========-->
          <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li class="active">View Detection</li>
          </ol>
        </div>
      </div>
    </section>
    
    <!--======= CONATCT =========-->
    <div class="contact">
      <div class="container">
        <div class="row">
          <div class="col-md-8"> 
            <h4>View Detection for Uploaded X-Rays</h4>
            
            <!--======= CONTACT FORM =========-->
            <div class="contact-form"> 
            
              <!--======= Success Msg =========-->
              
              
              <!--======= COMPLAIN  =========-->
             
              <ul class="row">
                <li class="col-sm-12">
                  <label>Select File for Detection
                    <input type="file" class="form-control" value="choose file" id ="imageName" placeholder="">
                  </label>
                </li>                
                <li class="col-sm-12">
                  <button value="submit" class="btn" id="btn_submit" onclick="fn1()">Submit</button>
                </li>
              </ul>
              
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
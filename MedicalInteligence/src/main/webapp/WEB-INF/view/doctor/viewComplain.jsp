<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@taglib prefix="f" uri="http://java.sun.com/jstl/core_rt" %>
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

<!-- 
<style>	   
					table.cyanTable {
					  border: 2px solid #3DC5DF;
					  background-color: #FFFFFF;
					  width: 60%;
					  text-align: center;
					  border-collapse: collapse;
					  margin: 5% 20% 5% 20%;
					}
					table.cyanTable td, table.cyanTable th {
					  border: 1px solid #AAAAAA;
					  padding: 3px 2px;
					}
					table.cyanTable tbody td {
					  font-size: 13px;
					}
					table.cyanTable tr:nth-child(even) {
					  background: #D0E4F5;
					}
					table.cyanTable thead {
					  background: #3DC5DF;
					}
					table.cyanTable thead th {
					  font-size: 19px;
					  font-weight: bold;
					  color: #FFFFFF;
					  text-align: center;
					  padding: 5px 10px 5px 10px;
					  border-left: 2px solid #3DC5DF;
					}
					table.cyanTable thead th:first-child {
					  border-left: none;
					}

					table.cyanTable tfoot {
					  font-size: 13px;
					  font-weight: bold;
					  color: #FFFFFF;
					  background: #3DC5DF;
					}
					table.cyanTable tfoot td {
					  font-size: 13px;
					}
					table.cyanTable tfoot .links {
					  text-align: right;
					}
					table.cyanTable tfoot .links a{
					  display: inline-block;
					  background: #FFFFFF;
					  color: #3DC5DF;
					  padding: 2px 8px;
					  border-radius: 5px;
					}
				
</style> -->

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
          <h3>View Complaint</h3>
         

          <!--======= Breadcrumbs =========-->
          <ol class="breadcrumb">
            <li><a href="#">Home</a></li>
            <li class="active">View Complaint</li>
          </ol>
        </div>
      </div>
    </section>
				
				<table class="cyanTable">	
					<thead>
					<tr>
					<th>Date</th>
					<th>Subject</th>
					<th>Description</th>
					<th>Reply</th>
					<th>Attachments</th>
					</tr>
					</thead>
					<tfoot>
					<tr>
					<td colspan="5">
					<!-- <div class="links"><a href="">&laquo;</a> <a class="active" href="">1</a> <a href="">2</a> <a href="">3</a> <a href="">4</a> <a href="">&raquo;</a></div> -->
					</td>
					</tr>
					</tfoot>
					<tbody>
					<f:forEach items="${complaintList}" var="i">
					<tr>
					<td>${i.complaintDate}</td>
					<td>${i.complaintSubject}</td>
					<td>${i.complaintDescription}</td>
					<td>${i.reply}</td>
					<td><a href="<%=request.getContextPath()%>/document/complain/${i.complaintFileName}">view</a></td>
					</tr>
					</f:forEach>
					</tbody>
					</table>
           
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
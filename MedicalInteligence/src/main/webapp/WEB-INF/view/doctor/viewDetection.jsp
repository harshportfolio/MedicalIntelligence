<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script type="text/javascript" >

function fn1()
{
	var imageName = document.getElementById("imageName");
	
	path = imageName.value.replace("C:\\fakepath\\","");
	
	var htp=new XMLHttpRequest();
	
	htp.onreadystatechange=function(){
	
		if(htp.readyState==4){
			
			
			alert(htp.responseText);
		}
	}
htp.open("get","http://127.0.0.1:5000/?imageName="+path,true);
htp.send();
}


/* function fn1()
	{
		var imageName = document.getElementById("imageName");
		
		path = imageName.value.replace("C:\\fakepath\\", "C:\\Users\\HP\\Documents\\ProjectWorkspace\\MedicalInteligence\\src\\main\\webapp\\document\\x-ray\\");
		
		var htp=new XMLHttpRequest();
		
		htp.onreadystatechange=function(){
		
			if(htp.readyState==4){
				alert(htp.responseText);
			}
		}
	htp.open("get","http://127.0.0.1:5000/?imageName="+path,true);
	htp.send();
} */

</script>
</head>
<body>
	
	<input type="file" value="choose file" id ="imageName">
	
	<input type="button" value="Detection" onclick="fn1()">
	
</body>
</html>
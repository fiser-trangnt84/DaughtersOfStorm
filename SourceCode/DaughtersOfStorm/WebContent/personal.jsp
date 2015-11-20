<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 
<html>
<head>
	<title>Profile</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/stylelogin.css">
	<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
	<link href='https://fonts.googleapis.com/css?family=Mountains+of+Christmas' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Exo' rel='stylesheet' type='text/css'>
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="js/index.js"></script>
  	<script src="js/mybag.js"></script>
  	<script src="js/personal.js"></script>
	<link rel="stylesheet" type="text/css" href="css/personal.css">
	<link rel="stylesheet" type="text/css" href="css/mybag.css">

</head>
<body>	
	<jsp:include page="header.jsp" />
	<div class="content">
		<div class="row">
			<div class="col-md-3 profile">				
				<div class="border">
					<p id="username"><strong><s:property value="Username"/></strong></p>
					<img id="profile-picture" src="img/personal/avatar.png">
				</div>
				<div class= "link">
					<a id="linkactive" href="personal.jsp" onclick="">Profile</a>
					<a id="link2" href="Mybag.jsp" onclick="">My bag</a>
					<a id="link3" href="following.jsp" onclick="">Following</a>
				</div>
			</div>

	</br></br>			
			<div class="col-md-9 infor inforprofile">
				<div class="row">
					<div class="col-md-3">
						<a  id="name" class = "font" href="#"><strong>User Name:</strong></a>
					</div>
					<div class="col-md-9 edit"><s:property value="Name"/></div>
				</div>
		
				<div class="row">
					<div class="col-md-3">
						<a id="email" class = "font" href="#"><strong>Email:</strong></a>
					</div>
					<div class="col-md-9 edit"><s:property value="Email"/></div>
				</div>
					
				<div class="row">
					<div class="col-md-3">
						<a id="phone" class ="font" href="#"><strong>Phone Number:</strong></a>
					</div>
					<div class="col-md-9 edit"><s:property value="phoneNumber"/></div>
				</div>
					
				<div class="row">
					<div class="col-md-3">
						<a id="adress" class = "font" href="#"><strong>Adress:</strong></a>
					</div>
					<div class="col-md-9 edit"><s:property value="address"/></div>
				</div>
				<div class="editButton">
					<a class="btn" href="#"><i class="fa fa-pencil-square-o"></i>Edit Profile</a>
					
				</div>	
<!-- >>>>>> origin/master -->
			</div>	
		</div>		
	</div>				
		
	
</body>
</html> 

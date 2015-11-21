<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
	<title>Following</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
	<link href='https://fonts.googleapis.com/css?family=Mountains+of+Christmas' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Exo' rel='stylesheet' type='text/css'>
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="js/mybag.js"></script>
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
					<a id="link1" href="profile.jsp" onclick="">Profile</a>
					<a id="link2" href="Mybag.jsp" onclick="">My bag</a>
					<a id="linkactive" href="following.jsp" onclick="">Following</a>
				</div>
			</div>
			
			<div class="col-md-9 infor">
				<h5 class="countItems"></h5> 
				<div class="row list-item">
					<div class="col-md-3">
						<a href="<s:url namespace='/' action='detailProduct'>
			  					 <s:param name="productId"> <s:property value="productCode" /></s:param>
		   						 </s:url>
								 ">
	 					<img src="<s:property value="images" />">
	 					</a>
					</div>
					<div class="col-md-3">
						<a id="name"><strong><s:property value="productName" /> </strong></a>
						<p class="price"><s:property value="buyPrice" /> $</p>
						<p class="state"><s:property value="quantityInStock" /></p>
						<p class="sale"><s:property value="saleOff"/> %</p>
					</div>
					<div class="col-md-2">
						<a class="btn " href="detailProduct.jsp">Detail</a>
					</div>
					<div class="col-md-2">
						<a class="btn w3-margin-bottom" href="order.jsp">Buy Now</a>
					</div>
					<div class="col-md-2 icon">
						<a href=""><i class="fa fa-trash-o" data-toggle="modal" data-target="#myModal"></i></a>
					</div>
					<hr>
				</div>
			</div>				
		</div>
	</div>
</body>
</html>


  
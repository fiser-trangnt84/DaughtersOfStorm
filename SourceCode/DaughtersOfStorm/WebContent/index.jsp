<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>Storm</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/index.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/stylelogin.css">
	<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
	<link href='https://fonts.googleapis.com/css?family=Mountains+of+Christmas' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Exo' rel='stylesheet' type='text/css'>
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="js/index.js"></script>
  	<script src="js/jslogin.js"></script>

</head>
<body>
	<jsp:include page="header.jsp" />
	
	<div class="content">
		<!--SLIDE -->
		<div class="container">
		  <br>
		  <div id="myCarousel" class="carousel slide" data-ride="carousel">
		    <!-- Indicators -->
		    <ol class="carousel-indicators">
		      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
		      <li data-target="#myCarousel" data-slide-to="1"></li>
		      <li data-target="#myCarousel" data-slide-to="2"></li>
		    </ol>

		    <!-- Wrapper for slides -->
		    <div class="carousel-inner" role="listbox">
		      <div class="item active">
		        <img src="img/home/slider/slide1.jpg" alt="Slide1" >
		      </div>

		      <div class="item">
		         <img src="img/home/slider/slide2.jpg" alt="Slide2" >
		      </div>
		    
		      <div class="item">
		         <img src="img/home/slider/slide3.jpg" alt="Slide3" >
		      </div>

		    <!-- Left and right controls -->
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
		  </div>
		</div>
		</div>
		<!--End slide -->

		<!-- Caption -->
		<div class="title">
			<h1>DO YOU LIKE?...</h1>
		</div>
		<!-- Intro type product -->
		<div class="row introType">
			<div class="col-md-8">
				<div class="row"> 
					<div class="col-md-6">
						<a id="link-image" href="
							<s:url namespace='/' action='printListProduct'>
		        	   			<s:param name="type">Top</s:param>
		        	   		</s:url>
						">
						<img class="hvr-bounce-to-right" src="img/home/type/top.jpg"></a>
						<button class="btn btn-default type-button">TOP</button>
					</div>
					<div class="col-md-6">
						<a id="link-image" href="
							<s:url namespace='/' action='printListProduct'>
		        	   			<s:param name="type">Cheap</s:param>
		        	   		</s:url>
						"><img src="img/home/type/shirt.jpg"></a>
						<button class="btn btn-default type-button">CHEAP</button>
					
					</div>
				</div>
				<div class="row play">
					<a id="link-image" href="
						<s:url namespace='/' action='printListProduct'>
		        	   		<s:param name="type">Sport</s:param>
		        	   	</s:url>
					"><img src="img/home/type/player.jpg"></a>
					<button class="btn btn-default type-button play-button">SPORT</button>
				</div>
			</div>
			<div class="col-md-4">
				<a id="link-image" href="
					<s:url namespace='/' action='printListProduct'>
		        	   		<s:param name="type">Style</s:param>
		        	</s:url>
				"><img src="img/home/type/art.jpg"></a>
				<button class="btn btn-default type-button">STYLE</button>
			</div>
			
		</div>

	</div>


	<footer>
		<div class="row">
			<div class="col-md-4 shipping"><a href=""><span>SHIPPING SERVICE</span></a></div>
			<div class="col-md-4 social">
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-google-plus"></i></a>
				<a href=""><i class="fa fa-rss"></i></a>
			</div>
			<div class="col-md-4 service">
				<a href=""><span>CUSTOMER SERVICE</span></a>
				<i class="fa fa-phone"></i>
				<span class="phone"> 888 888 888</span>
			</div>

		</div>
	</footer>

</body>
</html> 
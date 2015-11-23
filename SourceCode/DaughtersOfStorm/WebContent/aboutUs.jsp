<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>About Us</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/stylelogin.css">
	<link rel="stylesheet" type="text/css" href="css/aboutUs.css">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
	<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="js/index.js"></script>
  	<script src="js/jslogin.js"></script>
  	<script src="js/aboutUs.js"></script>
</head>
<body>
	<jsp:include page="header.jsp" />
	<div class="content">
		<!-- VIDEO -->
		<div class="videoBg">
			<h1> What our clients say about us? </h1>
			<div class="video" id="container" >
				<video loop id="bgvid">
					<source src="video/flowers.mp4" type="video/mp4">
				</video>
				<div class="contentvideo">
					<h2>Why should you choose STORM?</h2>
						<button class="btn" type="button" id="pause"><i class="fa fa-play-circle"></i></button>
					</div>
			</div>	
		</div>
		<!--TEAM -->
		<div class="team">
			<h1> Who are we? </h1>
			<div class="row">
				<div class="col-md-3">
					<figure><img src="img/aboutUs/trangnguyen.jpg"></figure>
					<div class="info">
						<p class="name"> Trang Nguyen</p>
						<p class="job"> Unemployed </p>
						<p class="social-links">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-google-plus"></i></a>
						</p>
					</div>
				</div>
				<div class="col-md-3">
					<figure><img src="img/aboutUs/doanhien.jpg"></figure>
					<div class="info">
						<p class="name"> Doan Hien</p>
						<p class="job"> Unemployed </p>
						<p class="social-links">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-google-plus"></i></a>
						</p>
					</div>
				</div>
				<div class="col-md-3">
					<figure><img src="img/aboutUs/tranguet.jpg"></figure>
					<div class="info">
						<p class="name"> Trang UET</p>
						<p class="job"> Unemployed </p>
						<p class="social-links">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-google-plus"></i></a>
						</p>
					</div>
				</div>
				<div class="col-md-3">
					<figure><img src="img/aboutUs/luongnguyen.jpg"></figure>
					<div class="info">
						<p class="name"> Luong Nguyen</p>
						<p class="job"> Unemployed </p>
						<p class="social-links">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-google-plus"></i></a>
						</p>
					</div>
				</div>
			</div>

			<!--- Row 2 -->
			<div class="row team2">
				<div class="col-md-4">
					<figure><img src="img/aboutUs/quynhtrang.jpg"></figure>
					<div class="info">
						<p class="name"> Quynh Trang</p>
						<p class="job"> Unemployed </p>
						<p class="social-links">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-google-plus"></i></a>
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<figure><img src="img/aboutUs/luuthom.jpg"></figure>
					<div class="info">
						<p class="name"> Luu Thom</p>
						<p class="job"> Unemployed </p>
						<p class="social-links">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-google-plus"></i></a>
						</p>
					</div>
				</div>
				<div class="col-md-4">
					<figure><img src="img/aboutUs/khuyennguyen.jpg"></figure>
					<div class="info">
						<p class="name"> Khuyen Nguyen</p>
						<p class="job"> Unemployed </p>
						<p class="social-links">
							<a href=""><i class="fa fa-facebook"></i></a>
							<a href=""><i class="fa fa-twitter"></i></a>
							<a href=""><i class="fa fa-google-plus"></i></a>
						</p>
					</div>
				</div>
				
			</div>

		</div>
		

		<div class="our-service">
			<h1> Our Service </h1>
			<p class="description"></p>
			<div class="row">
				<div class="row col-md-4">
					<div class = " col-md-4 icon-service">
						<a href=""><i class="fa fa-shopping-cart"></i></a>
					</div>
					<div class= "col-md-8 content-service">
						<div class="title-service"> Easy shopping
						</div>
						<div class="des-service">  Inteligula congue id elis donec sce sag ittis intes id laoreet aenean.
						</div>
					</div>
				</div>
				<div class="row col-md-4">
					<div class = " col-md-4 icon-service">
						<a href=""><i class="fa fa-comment-o"></i></a>
					</div>
					<div class= "col-md-8 content-service">
						<div class="title-service"> 24/7 Support
						</div>
						<div class="des-service">  Inteligula congue id elis donec sce sag ittis intes id laoreet aenean.
						</div>
					</div>
				</div>
				<div class="row col-md-4">
					<div class = " col-md-4 icon-service">
						<a href=""><i class="fa fa-truck"></i></a>
					</div>
					<div class= "col-md-8 content-service">
						<div class="title-service"> Fast Shipping
						</div>
						<div class="des-service">  Inteligula congue id elis donec sce sag ittis intes id laoreet aenean.
						</div>
					</div>
				</div>
			</div>
			<!--row2 copy -->
			<div class="row service2">
				<div class="row col-md-4">
					<div class = " col-md-4 icon-service">
						<a href=""><i class="fa fa-rocket"></i></a>
					</div>
					<div class= "col-md-8 content-service">
						<div class="title-service"> Update
						</div>
						<div class="des-service">  Inteligula congue id elis donec sce sag ittis intes id laoreet aenean.
						</div>
					</div>
				</div>
				<div class="row col-md-4">
					<div class = " col-md-4 icon-service">
						<a href=""><i class="fa fa-heart"></i></a>
					</div>
					<div class= "col-md-8 content-service">
						<div class="title-service"> Customer is No.1
						</div>
						<div class="des-service">  Inteligula congue id elis donec sce sag ittis intes id laoreet aenean.
						</div>
					</div>
				</div>
				<div class="row col-md-4">
					<div class = " col-md-4 icon-service">
						<a href=""><i class="fa fa-thumbs-o-up"></i></a>
					</div>
					<div class= "col-md-8 content-service">
						<div class="title-service"> Reliable Service
						</div>
						<div class="des-service">  Inteligula congue id elis donec sce sag ittis intes id laoreet aenean.
						</div>
					</div>
				</div>
			</div>

		</div>

	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
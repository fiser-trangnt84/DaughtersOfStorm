<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
	<header>
		<div class="user">
			<span><a href="personal.html" id="loginform">Login</a> | <a href="index.html" id="registerform">Register</a></span>
			<a href="Mybag.html" class="hvr-icon-bounce glyphicon glyphicon-shopping-cart">
			</a>
		</div>
		
		<div class="logo"><a href="index.html"><h1>STORM</h1></a></div>
		<nav class="navbar">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="index.html" class="hvr-underline-from-center">Home</a></li>
 				<li><a href="listProducts.html" class="hvr-underline-from-center">What's New</a></li>
		        <li><a href="listProducts.html" class="hvr-underline-from-center">Hot</a></li>
		        <li><a href="listProducts.html" class="hvr-underline-from-center">Sale</a></li>
		        <li><a href="listProducts.html" class="hvr-underline-from-center">Trend</a></li>
		        <li><a href="listProducts.html" class="hvr-underline-from-center">About Us</a></li>
		        <li>
		        	 <div class="form-group has-feedback">
			            <input type="text" id="name"  placeholder="Search..." class="form-control">
			            <span class="glyphicon glyphicon-search form-control-feedback"></span>
	       			 </div>
		        </li>
		      </ul>
		</nav>
	</header>
	
	<div class="content">
		<div class="row">
			<div class="col-md-3 profile">				
				<div class="border">
					<p id="username"><strong>abcxx</strong></p>
					<img id="profile-picture" src="img/personal/avatar.png">
				</div>
				<div class= "link">
					<a id="link1" href="profile.html" onclick="">Profile</a>
					<a id="link2" href="Mybag.html" onclick="">My bag</a>
					<a id="linkactive" href="following.html" onclick="">Following</a>
				</div>
			</div>
			
			<div class="col-md-9 infor">
				<h5 class="countItems"></h5> 
				<div class="row list-item">
					<div class="col-md-3">
						<a href=""><img id="clothe1" src="img/personal/kaki-mangto.jpg"></a>
					</div>
					<div class="col-md-3">
						<a id="name" href=""><strong>Kaki Mangto Coat</strong></a>
						<p class="price">100$</p>
						<p class="state">In Stock</p>
						<p class="sale"> Sale: 10%</p>
					</div>
					<div class="col-md-2">
						<a class="btn " href="detailProduct.html">Follow</a>
					</div>
					<div class="col-md-2">
						<a class="btn w3-margin-bottom" href="order.html">Buy Now</a>
					</div>
					<div class="col-md-2 icon">
						<a href=""><i class="fa fa-trash-o" data-toggle="modal" data-target="#myModal"></i></a>
					</div>
					<hr>
				</div>

				<div class="row list-item">
					<div class="col-md-3">
						<a href="#"> <img id="clothe2" src="img/personal/rosemary-dress.jpg"></a>
					</div>
					<div class="col-md-3">
						<a id="name" href=""><strong>Rosemary Dress</strong></a>
						<p class="price">250$</p>
						<p class="state">Sold Out</p>
						<p class="sale"> Sale: 5%</p>
					</div>
					<div class="col-md-2">
						<a class="btn w3-margin-bottom" href="detailProduct.html">Follow</a>
					</div>
					<div class="col-md-2">
						<a class="btn w3-margin-bottom" href="order.html">Buy Now</a>
					</div>
					<div class="col-md-2 icon">
						<a href="#"><i class="fa fa-trash-o" data-toggle="modal" data-target="#myModal" ></i></a>
					</div>
					<hr>
				</div>

				<div class="row list-item">
					<div class="col-md-3">
						<a href="#"><img id="clothe1" src="img/personal/kaki-blaze.jpg"></a>
					</div>
					<div class="col-md-3">
						<a id="name" href=""><strong>Kaki Blaze Coat</strong></a>
						<p class="price">100$</p>
						<p class="state">In Stock</p>
						<p class="sale"> Sale: 15%</p>
					</div>
					<div class="col-md-2">
						<a class="btn " href="detailProduct.html">Follow</a>
					</div>
					<div class="col-md-2">
						<a class="btn w3-margin-bottom" href="order.html">Buy Now</a>
					</div>
					<div class="col-md-2 icon">
						<a href="#"><i class="fa fa-trash-o i" data-toggle="modal" data-target="#myModal"></i></a>
					</div>

					<hr>
				</div>

				<div class="row list-item">
					<div class="col-md-3">
						<a href="#"> <img id="clothe2" src="img/personal/softly-vee-sweater.jpg"></a>
					</div>
					<div class="col-md-3">
						<a id="name" href=""><strong>Softly Vee Sweater</strong></a>
						<p class="price">250$</p>
						<p class="state">Sold Out</p>
						<p class="sale"> Sale: 15%</p>
					</div>
					<div class="col-md-2">
						<a class="btn w3-margin-bottom" href="detailProduct.html">Follow</a>
					</div>
					<div class="col-md-2">
						<a class="btn w3-margin-bottom" href="order.html">Buy Now</a>
					</div>
					<div class="col-md-2 icon">
						<a href="#"><i class="fa fa-trash-o" ></i></a>
					</div>
					<hr>
				</div>
			</div>				
		</div>
	</div>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/details.css">
	<link rel="stylesheet" type="text/css" href="css/stylelogin.css">
	<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
	<link href='https://fonts.googleapis.com/css?family=Mountains+of+Christmas' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Exo' rel='stylesheet' type='text/css'>
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="js/index.js"></script>
	<script src="js/jslogin.js"></script>
	<script src="js/details.js"></script>
	
</head>	
<body >
	<jsp:include page="header.jsp" />
	<div id="main">
		
		 <b class="bar" >Home</b> <b class="bar"> </b><b class="bar">Jacket</b>
		<br style="margin-top: 20px">
		<p style="padding-top:20px"></p>
		<div class="container-fluid">
  
		<div class="row">
			<div class="col-sm-5" >
				<div class="container">
  
				  <div id="myCarousel" class="carousel slide" style ="width:450px; height:550px">
					<!-- Indicators -->
					<ol class="carousel-indicators">
					  <li class="item1 active"></li>
					  <li class="item2"></li>
					  <li class="item3"></li> 
					</ol>

					<!-- Wrapper for slides -->
					<div class="carousel-inner" role="listbox">
						<div class="item active" >
							<img src="img/Details/Anh1.png">
						</div>
						<div class="item" >
							<img src="img/Details/Anh2.png">
						</div>
						<div class="item">
							<img src="img/Details/Anh3.png">
						</div>
					</div>

					<!-- Left and right controls -->
					<a class="left carousel-control" href="#myCarousel" role="button">
					  <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
					  <span class="sr-only">Previous</span>
					</a>
					<a class="right carousel-control" href="#myCarousel" role="button">
					  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					  <span class="sr-only">Next</span>
					</a>
				  </div>
				</div>
				
				<p class="pad1">
				
				<div class="row">
					<div class="col-sm-3" style="padding-left: 135px">
					<div id="wrapbutton">Rating:</div>
					</div>
					<div class="col-sm-5 " style="padding-left: 160px; padding-top: 3px">
						<span class="starRating">
							<input id="5" type="radio" name="rating" value="5" onclick="chay(id)" checked>
							<label for="5"></label>
							<input id="4" type="radio" name="rating" value="4" onclick="chay(id)">
							<label for="4"></label>
							<input id="3" type="radio" name="rating" value="3" onclick="chay(id)">
							<label for="3"></label>
							<input id="2" type="radio" name="rating" value="2" onclick="chay(id)">
							<label for="2"></label>
							<input id="1" type="radio" name="rating" value="1" onclick="chay(id)">
							<label for="1"></label>
							<input id="Medium" value="5">
						 </span>
					</div>
				</div>
				<p>
				
			</div>
			<div class="col-sm-3" >
				<p class="fontwordfirst">Overcoat</p>
				<p class="money"> $50</p>
				<p class="fontword"> Status: Sold out </p>
				<p class="fontword"> 126 people bought</p>
				<p class="icon-add">
			    	<a href=""><i class="fa fa-bookmark"></i></a>
		    		<a href=""><i class="fa fa-cart-plus"></i></a>
	    		</p>
				<p style ="padding-top:45px"></p>
				<div id="order"><a href = "order.jsp"  style="text-decoration: none"> <div id="wraporder">ORDER</div></a></div>
			</div>
			<div class="col-sm-4" >
				
				<p class="pad">
					<input class="cmt"type="button" value = "1">  Nationwide Delivery
				</p>
				<p class="pad1">
					<input class="cmt"type="button" value = "2">  Payment on delivery
				</p>
				<p class="pad1">
					<input class="cmt"type="button" value = "3">  Swap and pay on 7 day
				</p>
				<p class="pad1">
					<input class="cmt"type="button" value = "4">  Immediate cash payment
				</p>
				<p class="pad1">
					<input class="cmt"type="button" value = "5">  Quality guaranteed
				</p>
				<p class="pad1">
					<input class="cmt"type="button" value = "6">  Commitment shaped products
				</p>
				
					<div id="wrapguide">Shopping guide </div>
			
				<ol style="1">
					
					<li ><p style="padding-top:10px;font-size:20px">Direct purchase on the website<p></li>
					
					<li><p style="padding-top:10px;font-size:20px">Call 18008168 to Order</li>
					
					
				</ol>
				
			</div>
		</div>
		</div>
		
		

		<legend>DETAILS</legend>
		
		<ul class="word">
			<li>Name/product code: Overcoat</li>
			<li>Made in: Korea</li>
			<li>Design: coordinate beautifully stylized feathers, long form of fashion and style </li>
		</ul>
		<br>
		<p>
		<b style="font-size:20px;padding-left:1px">Suggestions size:</b>
		</p>
		<div>
			<table border="1" width="400px">
				<tr align="center"> <td>Size</td> <td>Bust</td> <td>Waist</td> <td>Hips</td> </tr>
				<tr align="center"> <td>M</td> <td>84-88 </td> <td>66-70</td> <td>88-92</td> </tr>
				<tr align="center"> <td>L</td> <td>89-92</td> <td>71-75</td> <td>93-97</td> </tr>
			</table>
		</div>
	
		
	</div>
    
	
	<div class="row">
		<div class="col-md-8">
			<img class="photodetails" src="img/Details/Anh5.png">
			<img class="photodetails" src="img/Details/Anh6.png">
			<img class="photodetails" src="img/Details/Anh7.png">
			<a href = "#danhgia"></a>
		</div>
		<div class="col-md-4">
			<p style="margin-left:20px" class="fontword">The same product</p>
		      
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same1.png">
				<p class="name">Overcoat long</p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same2.png">
				<p class="name">Nice Overcoat Red</p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same4.png">
				<p class="name">Leather Jacket long</p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same5.png">
				<p class="name">Anorak long</p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same6.png">
				<p class="name">Nice Overcoat Red </p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same11.png">
				<p class="name">Leather Jacket</p>
			</div>
			
              
		</div>
	
	
	</div>
	
</body>
</html>
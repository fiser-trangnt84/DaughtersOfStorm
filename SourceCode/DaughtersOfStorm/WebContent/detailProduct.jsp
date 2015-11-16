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
	<script src="js/productDetail.js"></script>

</head>	
<body>
	<jsp:include page="header.jsp" />
	<div id="main">
		
	
		<b class="bar" >Home</b></a> <b class="bar"> > </b><b class="bar">Jacket</b></a>
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
							<img id="item" src="img/Details/Anh1.jpg">
						</div>
						<div class="item" >
							<img id="item" src="img/Details/Anh2.jpg">
						</div>
						<div class="item">
							<img id="item" src="img/Details/Anh3.jpg">
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
				<p class="pad1">
				<p class="pad1">
				<div class="row">
					<div class="col-sm-5">
					<a href = "#details"  style="text-decoration: none"><div id="wrapbutton">DETAILS</div></a>
					</div>
					<div class="col-sm-2">
						<a href = "#VOTE"  style="text-decoration: none"> <div id="wrapbutton">VOTE</div></a>
					</div>
				</div>
				<p>
				
			</div>
			<div class="col-sm-3" >
				<p class="fontwordfirst">Trench Coat Zipper Loose Jacket</p>
				<p class="money"> $50</p>
				<p class="fontword"> Status: Sold out </p>
				<p class="fontword"> 126 people bought</p>
				<p class="icon-add">
			    	<a href="" class="hvr-icon-wobble-vertical"></a>
			    	<a href="" class="hvr-icon-pulse-grow"></a>
	    		</p>
				<p style ="padding-top:45px"></p>
				<div id="order"><a href = "Order.html"  style="text-decoration: none"> <div id="wraporder">ORDER</div></a></div>
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
				<p class="pad1">	
					<div id="wrapguide">Shopping guide </div>
				</p>
				<ol type="1">
					
					<li ><p style="padding-top:10px;font-size:20px">Direct purchase on the website<p></li>
					
					<li><p style="padding-top:10px;font-size:20px">Call 18008168 to Order</li>
					
					
				</ol>
				
			</div>
		</div>
		</div>
		
		
		<fieldset>
		<p style="padding-top:50px"></p>
		<div id="details">
		
		<legend>DETAILS</legend>
		
		<ul class="word">
			<li>Name/product code: Trench Coat Zipper Loose Jacket</li>
			<li>Material: Woolen</li>
			<li>Color: Navy blue</li>
			<li>Sleeve Type: Long Sleeve</li>
			<li>Design: coordinate beautifully stylized feathers, long form of fashion and style </li>
		</ul>
		<br>
		<p>
		<b style="font-size:20px">Suggestions size:</b>
		</p>
		<p>
		<Table border="1" align="left"  width="400px" >
			<TR align="center"> <TD>Size</TD> <TD>Bust</TD> <TD>Waist</TD> <TD>Hips</TD> </TR>
			<TR align="center"> <TD>M</TH> <TD>84-88 </TD> <TD>66-70</TD> <TD>88-92</TD> </TR>
			<TR align="center"> <TD>L</TH> <TD>89-92</TD> <TD>71-75</TD> <TD>93-97</TD> </TR>
		</table>
		</p>
	</br>
		
	</div>
    </div>
	
	<div class="row">
		<div class="col-md-8">
			<img class="photodetails" src="img/Details/Anh1.jpg">
			<img class="photodetails" src="img/Details/Anh2.jpg">
			<img class="photodetails" src="img/Details/Anh3.jpg">
			<img class="photodetails" src="img/Details/Anh4.jpg">
			<img class="photodetails" src="img/Details/Anh5.jpg">
			<a href = "#danhgia">
		</div>
		<div class="col-md-4">
			<p style="margin-left:20px" class="fontword">The same product</p>
		      
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same1.jpg">
				<p class="name">Overcoat long</p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same2.jpg">
				<p class="name">Nice Overcoat Black</p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same3.jpg">
				<p class="name">Leather Jacket long</p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same4.jpg">
				<p class="name">Anorak long</p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same5.jpg">
				<p class="name">Nice Overcoat Black </p>
			</div>
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same6.jpg">
				<p class="name">Leather Jacket</p>
			</div>
			
			<div id="wrapphoto">
				<img class="photosame" src="img/Details/same7.jpg">
				<p class="name">Brown Coat</p>
			</div>
			
              
		</div>
	</div>
	</fieldset>
	<div id="main">
		<div id="VOTE">	
			<fieldset>
				<legend style="padding-top:50px">VOTE</legend>
					<div id="wrap" >
					   <div id="left" align="center" style="padding-top:45px">
							<h3>Total</h3>
						  <h3> <p>	<input id="SumVote" type="button" value = "0"> VOTE</h3>
					   </div>
					  
					   <div id="right">
							<div id = "wrap1">
								<div id="left1">
								  <p class="wordVote">Very Good </p>
								  <p class="wordVote">Good 	   </p>
								  <p class="wordVote">Medium   </p>
								  <p class="wordVote">Not Good </p>
								  <p class="wordVote">Bad       </p>
								 </div>
						   
								<div id = "cen">
								  <p><input id="VeryGood" type="button" value = "0"></input></p>
								  <p><input id="Good" type="button" value = "0"></input></p>
								  <p><input id="Medium" type="button" value = "0"></input></p>
								  <p><input id="NotGood" type="button" value = "0"></input></p>
								  <p><input id="Bad" type="button" value = "0"></input></p>
								</div>

								<div id = "right1">
									  <p><input type="button" value = "VOTE" onclick="VOTE1()"></input></p>
									  <p><input type="button" value = "VOTE" onclick="VOTE2()"></input></p>
									  <p><input type="button" value = "VOTE" onclick="VOTE3()"></input></p>
									  <p><input type="button" value = "VOTE" onclick="VOTE4()"></input></p>
									  <p><input type="button" value = "VOTE" onclick="VOTE5()"></input></p>
								</div>
							</div>
				  </div>
			</fieldset>
			
		</div>
	</div>
	</div>
	<div></div> 
</body>
</html>
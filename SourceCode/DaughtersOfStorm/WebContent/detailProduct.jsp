<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
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
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="js/index.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
	<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="js/jslogin.js"></script>
	
</head>	
<body ><header>
		<div class="user">
			<span><a href="login-signup.html" id="loginform">Login</a> | <a href="login-signup.html" id="registerform">Register</a>
			<a href="Mybag.html" class="hvr-icon-bounce glyphicon glyphicon-shopping-cart-shopping-cart" style="top:-18px; font-size:30px;">			
			</a>
				</span>
		</div>
		<div class="logo"><h1>STORM</h1></div>
		<nav class="navbar">
	      <ul class="nav navbar-nav">
	        <li class="active"><a href="index.html">Home</a></li>
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
	<div id="main">
		
	
		 <b class="bar" >Home</b></a> <b class="bar"> > </b><b class="bar">Jacket</b></a>
		<br style="margin-top: 20px">
		<p style="padding-top:20px"></p>
		<div class="container-fluid">
  
		<div class="row">
			<div class="col-sm-5" >
  
				  <img id="1" src=<s:property value="imgUrl" /> style ="width:450px; height:550px">
					
			</div>
			<div class="col-sm-3" >
				<p class="fontwordfirst"><s:property value= "ProductName" /></p>
				<p class="money">$<s:property value="BuyPrice" /></p>
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
				
			<div class="row">
			<div class="col-sm-3" style="padding-left: 135px">
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
			</div>
			
		</div>
		</div>
		
		
		<fieldset>
		<legend><div id="wrapbutton">DETAILS</div></legend>
		
		<ul class="word">
			<li>Name/product code:<s:property value= "ProductName" /> </li>
			<li>Design: coordinate beautifully stylized feathers, long form of fashion and style </li>
		</ul>
		<br>
		<p>
		<b style="font-size:20px;padding-left:20%">Suggestions size:</b>
		</p>
		<div style ="margin-left: 20%">
		<Table  border="1"  width="400px">
			<TR align="center"> <TD>Size</TD> <TD>Bust</TD> <TD>Waist</TD> <TD>Hips</TD> </TR>
			<TR align="center"> <TD>M</TH> <TD>84-88 </TD> <TD>66-70</TD> <TD>88-92</TD> </TR>
			<TR align="center"> <TD>L</TH> <TD>89-92</TD> <TD>71-75</TD> <TD>93-97</TD> </TR>
		</table>
		</div>
	</br>
		
	</div>
    </div>
	
	</fieldset>
	
	<div></div> 
</body>
</html>
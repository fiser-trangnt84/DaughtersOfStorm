<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
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
		<br style="margin-top: 20px">
		<p style="padding-top:20px"></p>
		<div class="container-fluid">
  
		<div class="row">
			<div class="col-sm-5" >
  				<img class="mainImg" src = "<s:property value="urlImg" />" >
				<p class="pad1">
				<div style="padding-left: 180px">
					<div id="wrapbutton">Rating: <s:property value="average"/></div>
				</div>
				<div style="padding-left: 305px">
			<form name="rating">
				
				<span class="starRating" style="margin-top:-8px">
					<input id="5" type="radio" name="rating" value="5" onclick="callAction(id)" checked>
					<label for="5"></label>
					<input id="4" type="radio" name="rating" value="4" onclick="callAction(id)">
					<label for="4"></label>
					<input id="3" type="radio" name="rating" value="3" onclick="callAction(id)">
					<label for="3"></label>
					<input id="2" type="radio" name="rating" value="2" onclick="callAction(id)">
					<label for="2"></label>
					<input id="1" type="radio" name="rating" value="1" onclick="callAction(id)">
					<label for="1"></label>
					<input id="Medium" value="5">
					<input name ="productCode" value="<s:property value="productCode"/>">
				 </span>
			</form>
			</div>
	
				
				<p>
			<br/>
			</div>
			<div class="col-sm-3" >
				<p class="fontwordfirst"><s:property value="proName" /></p>
				<p class="money"> <s:property value="proPrice" />$</p>
				<p class="fontword"> Status: Sold out </p>
				<p class="fontword"> <s:property value="quantitySold" /> people bought</p>
				<p class="icon-add">
			    	<a href="
				    	<s:url namespace='/' action='addFavorite'>
			        		<s:param name="productCode"><s:property value="productCode"/></s:param>
			        	</s:url>
		        	"><i class="fa fa-bookmark"></i></a>
			    	<a href="
				    	<s:url namespace='/' action='addCart'>
			        		<s:param name="productCode"><s:property value="productCode"/></s:param>
			        	</s:url>
		        	"><i class="fa fa-cart-plus"></i></a>
		    	</p>
				<p style ="padding-top:45px"></p>
				<div id="order"><a href = "
          			    <s:url namespace='/' action='order'>
		                    <s:param name="productCode"><s:property value="productCode" /></s:param>
		                </s:url>" style="text-decoration: none"> 
		             <button class="btn btn-info btn-lg btn-x"  data-toggle="modal" data-target="#myModal">ORDER</button>
		             </a>
			   </div>
			</div>
			<div class="col-sm-4" >
				
				<p class="pad">
					<button class="cmt">1 </button> Nationwide delivery
				</p>
				<p class="pad1">
					<button class="cmt">2</button>  Payment on delivery
				</p>
				<p class="pad1">
					<button class="cmt">3</button>  Swap and pay on 7 day
				</p>
				<p class="pad1">
					<button class="cmt">4</button>  Immediate cash payment
				</p>
				<p class="pad1">
					<button class="cmt">5</button>  Quality guaranteed
				</p>
				<p class="pad1">
					<button class="cmt">6</button>  Commitment shaped products
				</p>
				<p class="pad1">
					<div id="wrapguide">Shopping guide </div>
						<div class="guide">
							<ol style="1">
								
								<li ><p style="padding-top:10px;font-size:20px">Direct purchase on the website<p></li>
								
								<li><p style="padding-top:10px;font-size:20px">Call 18008168 to Order</li>
								
								
							</ol>
						</div>
				
				
			</div>
		</div>
		</div>
		<legend>DETAILS</legend>
		
		<ul class="word">
			<li>Name/product code: <s:property value="proName" /></li>
			<li>Made in: Korea</li>
			<li>Design:  <s:property value="design" /></li>
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
    

	<jsp:include page="footer.jsp" />
	
</body>
</html>
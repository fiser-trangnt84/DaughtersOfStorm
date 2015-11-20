<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Order</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/order.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/stylelogin.css">
	<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
	<link href='https://fonts.googleapis.com/css?family=Mountains+of+Christmas' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Exo' rel='stylesheet' type='text/css'>
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
	<script>
	$(document).ready(function(){

		//Hide div w/id extra
	   $("#repci").css("display","none");
		$("#form-repci").click(function(){
			$("#repci").show("fast");
		});
		// Add onclick handler to checkbox w/id checkme
	   $("#checkme").click(function(){
	
		// If checked
		if ($("#checkme").is(":checked"))
		{
			//show the hidden div
			$("#repci").hide("fast");
		}
		else
		{
			//otherwise, hide it
			$("#repci").show("fast");
		}
	  });

	});
	 
	 
	</script>
  </head>
<body>
	<jsp:include page="header.jsp" />

	<div class="container">
		<div class = "row" style = "padding: 10px">
			<div class= "col-md-5 ">
				Product: <s:property value="productName" />
				 <br> <span class="info" style="margin-left: 0px">
					Price: </span>
				<s:property value="buyPrice" />
				<br>
				<div class="row">
					<div class="col-md-4" >
						<label class = "info" >Quantity:</label>
					</div>
					<div class="col-md-8 input-quantity" >
						<input class="form-control" id="inputdefault" type="text" style ="position: left"></input>
					</div>
				</div>
				<div class="row">
					<div class="col-md-4"  >
						<label class = "info size " >Size:</label>
					</div>
					<div class="col-md-8 resultOfSize">
						<select class="form-control" >
							<option>S</option>
							<option>M</option>
							<option>L</option>
							<option>XL</option>
						</select>
					</div>
				</div>
				<div class="row">
					<div class=" col-md-4"  >
						<label class = "info size " >Color:</label>
					</div>
					<div class="col-md-8 resultOfSize">
						<select class="form-control" >
							<option style = "background-Color: #80CCFF">Blue</option>
							<option style = "background-Color:  #FFCCCC">Pink</option>
							<option style = "background-Color:  rgba(22, 25, 27, 0.75);">Dark gray</option>
							<option style = "background-Color:  #FFF">White</option>
						</select>
					</div>
				</div>
			
			</div>
			<div class = " col-md-7">
				<img id="order-picture" src="img/dress3.jpg">
			</div>
		</div>	
	<p class = "cus-Info"> Customer's information </p>
	<div class="row">
		<div class= "col-md-6 form-group " style = "width: 35%">
			<input type="text" class="form-control" id="email" placeholder="Your full name"><br>
			<input type="text" class="form-control" id="pwd" placeholder="Phone number"><br>
			<input type="email" class="form-control" id="pwd" placeholder="Email"><br>
			<input type="text" class="form-control" id="pwd" placeholder="Address">
		</div>
		<div class="col-md-6 form-group infor-recpi " id = "test">
			<label  id = "form-repci"class="form-control input-repci" >Recipient information</label><br>
			<label><input type="checkbox" id = "checkme" value = ""> Recipient information similar Buyer's</label>
			<div id = "repci">
			<input type="text" class="form-control" id="email" placeholder="Full name"><br>
			<input type="text" class="form-control" id="pwd" placeholder="Phone number"><br>
			<input type="email" class="form-control" id="pwd" placeholder="Email"><br>
			<input type="text" class="form-control" id="pwd" placeholder="Address">
			</div>
		</div>
	</div>
	

	<br><br>
	<div class="posiOfButton ">
		<button type="button" class="btn btn-info btn-lg btn-x"  data-toggle="modal" data-target="#myModal">Submit</button>
	</div>

  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
		
		  <!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h4 class="modal-title">Order</h4>
				</div>
				<div class="modal-body">
					<div class="row">
						 <div class="col-sm-6">
							<label class ="infor-details">Customer: </label><br>
							<label class ="infor-details">Recipient: </label><br>
							<label class ="infor-details">Address:	</label><br>
							<label class ="infor-details">Product: 	</label><br>
							<label class ="infor-details">Color:		</label><br>
							<label class ="infor-details">Size:	</label><br> 
							<label class ="infor-details">Price: </label><br>
							<label class ="infor-details">Fee Transition: </label><br>
							<label class ="infor-details">Total Payment: </label>
						</div>
						<div class="col-sm-6"  >
							<img id="order-picture" src="img/dress3.jpg">
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<div class= "footer-button ">
						<button type="button" class="btn btn-x btn-success btn-lg" data-dismiss="modal" >Confirm</button>
					</div>
				</div>
			</div>
		</div>
    </div>
  </div>
  
 


</body>
</html>

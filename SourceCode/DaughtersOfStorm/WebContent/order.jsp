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
  <!-- <script src="js/order.js"></script> -->
  </head>
<body>
  <jsp:include page="header.jsp" />

<<<<<<< HEAD
  <div class="container">
  <form action="submitOrder" method="post">
    <div class = "row" style = "padding: 10px">
      <div class= "col-md-6 ">
        <span class="info" style="width:20px">Product: <s:property value="productName" /></span>
        <br>
        <div class="row">
	        <div class="col-md-4" >
	            <label class = "info" >Price: <s:property value="buyPrice"/> $ / item</label>
	        </div>
	    </div>
	    <div class="row">
          <div class="col-md-4" >
            <label class = "info" >Quantity:</label>
          </div>
          <div class="col-md-8 input-quantity" >
            <input class="form-control" type="text" style ="position: left" name="quantity" required></input>
          </div>
        </div>
        <div class="row">
          <div class="col-md-4"  >
            <label class = "info size ">Size:</label>
          </div>
          <div class="col-md-8 resultOfSize" >
            <select class="form-control" name="productSize">
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
            <select class="form-control"  name="productColor">
              <option style = "background-Color: #80CCFF">Blue</option>
              <option style = "background-Color:  #FFCCCC">Pink</option>
              <option style = "background-Color:  rgba(22, 25, 27, 0.75);">Dark gray</option>
              <option style = "background-Color:  #FFF">White</option>
            </select>
          </div>
        </div>
      </div>
      <div class = " col-md-6">
        <img id="order-picture" src="<s:property value="imgUrl" />" style="width:300px;hight:13
        00px" >
      </div>
    </div>  
  <p class = "cus-Info"> Customer's information </p>
  <div class="row">
    <div class= "col-md-6 form-group ">
      <input type="text" class="form-control" placeholder="Your full name" name="recipientName" required><br>
      <input type="text" class="form-control" placeholder="Phone number" name="recipientPhoneNumber" required><br>
      <input type="text" class="form-control" placeholder="Address" name="recipientAddress" required>
    </div>
  </div> 

  <br><br>
  <div class="posiOfButton">
    
    <input type="submit" value="Submit" class="btn btn-info btn-lg btn-x"  data-toggle="modal" data-target="#myModal">
  </div>
</form>
</div>
 
=======
  <div class="content">
  <form action="showInforOrder" method="post">
    <div class = "row" style = "padding: 10px">
    <!-- Information -->
      <div class= "col-md-7 ">
        	<span class="info" style="width:20px">Product: <s:property value="productName" /></span>
        	<br>
        	<div class="row">
	          	<div class="col-md-4" >
	           	 	<label class = "info" >Quantity:</label>
	          	</div>
	          	<div class="col-md-8 input-quantity" >
	            	<input class="form-control" type="text" style ="position: left" name="quantity" required></input>
	          	</div>
        	</div>
        	<div class="row">
          		<div class="col-md-4"  >
            		<label class = "info size ">Size:</label>
          		</div>
	          	<div class="col-md-8 resultOfSize" >
		            <select class="form-control" name="productSize">
		              <option>S</option>
		              <option>M</option>
		              <option>L</option>
		              <option>XL</option>
		            </select>
	          	</div>
        	</div>
        	<div class="row">
          		<div class=" col-md-4"  >
            		<label class = "info size">Color:</label>
         		 </div>
	         	 <div class="col-md-8 resultOfSize">
		            <select class="form-control"  name="productColor">
		              <option style = "background-Color: #80CCFF">Blue</option>
		              <option style = "background-Color:  #FFCCCC">Pink</option>
		              <option style = "background-Color:  rgba(22, 25, 27, 0.75);">Dark gray</option>
		              <option style = "background-Color:  #FFF">White</option>
		            </select>
	          	</div>
       		</div>
      	  <p class = "cus-Info"> Customer's information </p>
		  <div class="row">
		    <div class= "col-md-10 form-group ">
		      <input type="text" class="form-control" placeholder="Your full name" name="recipientName" required><br>
		      <input type="text" class="form-control" placeholder="Phone number" name="recipientPhoneNumber" required><br>
		      <input type="text" class="form-control" placeholder="Address" name="recipientAddress" required>
		    </div>
		  </div>
      </div>
       <div class = "col-md-5">
        <img id="order-picture" src="<s:property value="imgUrl" />">
      </div>
    </div>  
	   <div class="posiOfButton">
	    	<input type="submit" value="Submit" class="btn btn-info btn-lg btn-x"  data-toggle="modal" data-target="#myModal">
	  </div>
     
	</form>
 </div> 
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog"  >
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <form action="submitOrder" method="post">
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Order</h4>
        </div>
        <div class="modal-body">
          <div class="row">
             <div class="col-sm-6">
              <label class ="infor-details">Customer: <s:property value="recipientName" /></label><br>
              <label class ="infor-details">Phone Number: <s:property value="recipientPhoneNumber" /></label><br>
              <label class ="infor-details">Address:  <s:property value="recipientAddress" /></label><br>
              <label class ="infor-details">Product:  <s:property value="productName" /></label><br>
              <label class ="infor-details">Color: <s:property value="productColor" /></label><br>
              <label class ="infor-details">Size: <s:property value="productSize" /></label><br> 
              <label class ="infor-details">Price: <s:property value="total" />$</label><br>
              <label class ="infor-details">Fee Ship: 1$</label><br>
              <label class ="infor-details">Total Payment: <s:property value="total + 1" />$</label>
            </div>
            <div class="col-sm-6"  >
              <img id="order-picture" src="<s:property value="imgUrl" />" >
            </div>
          </div>
        </div>
        <div class="modal-footer">
          <div class= "footer-button ">
            <input type="submit" value="Confirm" class="btn btn-x btn-success btn-lg" data-dismiss="modal" >
          </div>
        </div>
      </div>
      </form>
    </div>
    </div>
  </div>
  
>>>>>>> d3df3ba98fced3d12956077c1f0bd148883ad2d4
 <jsp:include page="footer.jsp" />

</body>
</html>

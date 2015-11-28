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
  <script src="js/jquery.min.js"></script>
  <script src="lib/bootstrap/js/bootstrap.min.js"></script>
  </head>
<body>
  <jsp:include page="header.jsp" />

  <div class="container">
  <form action="submitOrder" method="post">
    <div class = "row" style = "padding: 10px">
      <div class= "col-md-6 ">
        <label class="info" style="width:20px">Product:</label><label class= "nameOfProduct info"><s:property value="productName" /></label>
        <br>
        <div class="row">
          <div class="col-sm-4" >
              <label class = "info" >Price: </label><label class = "price"><s:property value="buyPrice"/> $ / item</label>
          </div>
      	</div>
	    <div class="row">
	       <div class="col-sm-3" >
	          <label class = "info" >Quantity:</label>
	       </div>
	       <div class="col-sm-9 input-quantity" >
	          <input class="form-control" type="text" style ="position: left" name="quantity" required></input>
	       </div>
	    </div>
        <div class="row">
           <div class="col-sm-3"  >
           	<label class = "info size ">Size:</label>
           </div>
          <div class="col-sm-9 resultOfSize" >
            <select class="form-control" name="productSize">
              <option>S</option>
              <option>M</option>
              <option>L</option>
              <option>XL</option>
            </select>
          </div>
        </div>
        <div class="row">
          <div class=" col-sm-3"  >
            <label class = "info size " >Color:</label>
          </div>
          <div class="col-sm-9 resultOfSize">
            <select class="form-control"  name="productColor">
              <option style = "background-Color: #80CCFF">Blue</option>
              <option style = "background-Color:  #FFCCCC">Pink</option>
              <option style = "background-Color:  rgba(22, 25, 27, 0.75);">Dark gray</option>
              <option style = "background-Color:  #FFF">White</option>
            </select>
          </div>
        </div>
      
     
  <p class = "cus-Info"> Customer's information </p>
  
    <div class= " form-group input-repci ">
      <input type="text" class="form-control" placeholder="Recipent's name" name="recipientName" required><br>
      <input type="text" class="form-control" placeholder="Phone number" name="recipientPhoneNumber" required><br>
      <input type="text" class="form-control" placeholder="Address" name="recipientAddress" required>
    </div>
    <div class="posiOfButton">
    <input type="submit" value="Submit" class="btn btn-info btn-lg btn-x" >
  </div>
    </div>
     <div class = " col-md-6">
        <img id="order-picture" src="<s:property value="imgUrl" />" >
      </div>
  </div>
</form>
</div>
 
 <jsp:include page="footer.jsp" />

</body>
</html>

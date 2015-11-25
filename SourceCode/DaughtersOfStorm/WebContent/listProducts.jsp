<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>

<html lang="vi">
<head>
	<title>Spring Skirt</title>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" type="text/css" href="css/listProducts.css">
    <link rel="stylesheet" type="text/css" href="css/header.css">
    <link rel="stylesheet" type="text/css" href="css/stylelogin.css">
    <link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
    <link href='https://fonts.googleapis.com/css?family=Mountains+of+Christmas' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Exo' rel='stylesheet' type='text/css'>
    <script src="js/jquery.min.js"></script>
    <script src="lib/bootstrap/js/bootstrap.min.js"></script>
    <script src="js/jslogin.js"></script>
</head>
<body>
   <jsp:include page="header.jsp" />
   <div class="listPro">
	<s:iterator value="arrProduct">
	 <div class="col-md-4 itemProduct" >
	 	<a href="
		 	<s:url namespace='/' action='detailProduct'>
			  <s:param name="productCode"> <s:property value="productCode" /></s:param>
		    </s:url>
		">
	 		<img id="images" src="<s:property value="images" />">
	 	</a>
		 	<div class="info">
		 		<p><span class="nameProduct"> <s:property value="productName" /> </span>
				<span class="icon-add">
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
		    	</span></p>
		    	<p class="price"><s:property value="buyPrice" /> $ </p>
				
			</div>
		
	</div>
	</s:iterator>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>
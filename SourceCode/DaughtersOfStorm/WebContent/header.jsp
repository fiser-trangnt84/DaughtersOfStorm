<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>Storm</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/fontfamily.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/stylelogin.css">
	<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="js/index.js"></script>
  	<script src="js/jslogin.js"></script>
  	<script src="js/header.js"></script>
</head>
<body>
	<header>
		<div class="user">
		
		<!-- Error -->
		   <div class="messages">
		      <s:actionmessage/>
		   </div>
		   <div class="errors">
		    	<s:actionerror/>
		   </div>
		  
		  <!-- After login success -->
		   <div id="afterLogin">
	   		<a href="
		   		<s:url namespace='/' action='profile'>
	        		<s:param name="userId">${sessionScope.userId}</s:param>
	        	</s:url>
	   		" id ="username">${sessionScope.username}</a>
	   		| 
		   	<a href=" 
		   		<s:url namespace='/' action='logout'>
		   			<s:param name='userId'>${sessionScope.userId}</s:param>
		   		</s:url>
		   	" >Logout</a>
		   	<a href="
			   	<s:url namespace='/' action='cart.action'>
	        		<s:param name="userId">${sessionScope.userId}</s:param>
	        	</s:url>
		   	" class="hvr-icon-bounce glyphicon glyphicon-shopping-cart">
			</a>		
		   </div>
		   
		   <!-- Before login-->
		   <div id='beforeLogin'>
		   		<a href="" id="loginform">Login</a> | <a href="" id="registerform">Register</a>
		   </div>
		</div>
		
		<!-- Login form -->
		 <div class="login">
		      <div class="arrow-up1"></div>
		      <div class="formholder">
		        <div class="randompad">
		        <s:actionerror />
		         <form action="login.action" method="post">
		            <label>Username</label>
		            <input name="username" type="text" required/>
		            <label>Password</label>
		            <input name="password" type="password" required/>
		            <input type="submit" value="Login" />
		        </form>
        		</div>
      		</div>
      	</div>

	      <!--Register Form -->
	    <div class="register">
		    <div class="arrow-up2"></div>
		    <div class="formregister">
		        <div class="randompad">
		        <form action="register.action" method="post">
		          	<label>Email</label>
		            <input name="email" type="email" required/>
		            <label>Username</label>
		            <input name="username" type="text" required/>
		            <label>Password</label>
		            <input name="password" type="password" required/>
		            <label>Confirm Password</label>
		            <input name="confirmPw" type="password" required/>
		            <input type="submit" value="Register" />
		 		</form>
		    	</div>
	      	</div>
	    </div>
	    
	    <script src="js/jslogin.js"></script>

		<div class="logo"><a href="index.jsp"><h1>STORM</h1></a></div>
		<nav class="navbar">
		      <ul class="nav navbar-nav">
		        <li class="active"><a href="index.jsp" class="hvr-underline-from-center">Home</a></li>
		        <li><a class="hvr-underline-from-center"
		        	   href="
		        	   	<s:url namespace='/' action='printListProduct'>
		        	   		<s:param name="type">New</s:param>
		        	   	</s:url>
		        	   	" >
		        	   	What's New
		       	</a></li>
		        <li><a class="hvr-underline-from-center"
		        	   href="
		        	   	<s:url namespace='/' action='printListProduct'>
		        	   		<s:param name="type">Hot</s:param>
		        	   	</s:url>
		        	   	" >
		        	   	Hot
		       	</a></li>
		        <li><a class="hvr-underline-from-center"
		        	   href="
		        	   	<s:url namespace='/' action='printListProduct'>
		        	   		<s:param name="type">Sale</s:param>
		        	   	</s:url>
		        	   	" >
		        	   	Sale
		       	</a></li>
		       <li><a class="hvr-underline-from-center"
		        	   href="
		        	   	<s:url namespace='/' action='printListProduct'>
		        	   		<s:param name="type">Trend</s:param>
		        	   	</s:url>
		        	   	" >
		        	   	Trend
		       	</a></li>
		        <li><a href="aboutUs.jsp" class="hvr-underline-from-center">About Us</a></li>
		        <li>
		        	 <div class="form-group has-feedback">
			            <input type="text" id="name"  placeholder="Search..." class="form-control">
			            <span class="glyphicon glyphicon-search form-control-feedback"></span>
	       			 </div>
		        </li>
		      </ul>
		</nav>
	</header>
</body>
</html>

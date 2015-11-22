<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html> 
<html>
<head>
	<title>Profile</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" type="text/css" href="css/stylelogin.css">
	<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
	<link href='https://fonts.googleapis.com/css?family=Mountains+of+Christmas' rel='stylesheet' type='text/css'>
	<link href='https://fonts.googleapis.com/css?family=Exo' rel='stylesheet' type='text/css'>
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="js/index.js"></script>
  	<script src="js/mybag.js"></script>
  	<script src="js/personal.js"></script>
	<link rel="stylesheet" type="text/css" href="css/personal.css">
	<link rel="stylesheet" type="text/css" href="css/mybag.css">

</head>
<body>	
	<jsp:include page="header.jsp" />
	<div class="content">
		<div class="row">
			<div class="col-md-3 profile">               
                <div class="border">
                    <p id="username"><strong>${sessionScope.username}</strong></p>
                    <img id="profile-picture" src="img/personal/avatar.png">
                </div>
                <div class= "link">
                    <a id="linkactive" href="
                    <s:url namespace='/' action='profile'>
                        <s:param name="userId">${sessionScope.userId}</s:param>
                    </s:url>
                    " onclick="">Profile</a>
                    <a id="link2" href="
                    <s:url namespace='/' action='cart.action'>
                        <s:param name="userId">${sessionScope.userId}</s:param>
                    </s:url>
                    " onclick="">My bag</a>
                    <a id="link3" href="
                    <s:url namespace='/' action='following'>
                        <s:param name="userId">${sessionScope.userId}</s:param>
                    </s:url>
                    " onclick="">Following</a>
                </div>
            </div>

	<br/><br/>	
        
        <s:set name="web" value="check"/>
        <s:if test="%{#web=='form2'}">
                ${print}
                <form action="Editprofile" method="post">
                <div class="col-md-9 infor inforprofile">
                    <div class="row">
                            <div class="col-md-3">
                                    <a  id="name" class = "font" href="#"><strong>Name:</strong></a>
                            </div>
                            <input type="text" name="Name" value="<s:property value="Name"/>" />
                           
                    </div>

                    <div class="row">
                            <div class="col-md-3">
                                    <a id="email" class = "font" href="#"><strong>Email:</strong></a>
                            </div>
                            <input type="text"  name="Email" value="<s:property value="Email"/>" /> 
                          
                    </div>

                    <div class="row">
                            <div class="col-md-3">
                                    <a id="phone" class ="font" href="#"><strong>Phone Number:</strong></a>
                            </div>
                           <input type="text" name="phoneNumber" value="<s:property value="phoneNumber"/>" /> 
                           
                    </div>

                    <div class="row">
                            <div class="col-md-3">
                                    <a id="adress" class = "font" href="#"><strong>Adress:</strong></a>
                            </div>
                          <input type="text" name="address" value="<s:property value="address"/>" /> 
                           
                    </div>
  							<br/>
  							<div style="padding-right:100px">
                          		<input  class="editButton" type="submit" value="Submit"/>
                          	</div>
                          
				</div>
                </form>
        </s:if>
        <s:elseif test="%{#web=='form1'}">
            
            
               <div class="col-md-9 infor inforprofile">
                    <div class="row">
                            <div class="col-md-3">
                                    <a  id="name" class = "font" href="#"><strong>Name:</strong></a>
                            </div>
                            <div class="col-md-9 edit"><s:property value="Name"/></div>
                    </div>

                    <div class="row">
                            <div class="col-md-3">
                                    <a id="email" class = "font" href="#"><strong>Email:</strong></a>
                            </div>
                            <div class="col-md-9 edit"><s:property value="Email"/></div>
                    </div>

                    <div class="row">
                            <div class="col-md-3">
                                    <a id="phone" class ="font" href="#"><strong>Phone Number:</strong></a>
                            </div>
                            <div class="col-md-9 edit"><s:property value="phoneNumber"/></div>
                    </div>

                    <div class="row">
                            <div class="col-md-3">
                                    <a id="adress" class = "font" href="#"><strong>Address:</strong></a>
                            </div>
                            <div class="col-md-9 edit"><s:property value="address"/></div>
                    </div>
                
            	<s:form action="edit1">
            		<br/>
            		<div style="padding-right:100px">
                		<input class="editButton" type="submit" value="Edit Profile"/>
                	</div>
            	</s:form>
            	</div>
        </s:elseif>
		</div>		
	</div>				
		
	
</body>
</html> 

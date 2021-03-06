<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html>
<head>
	<title>Following</title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" type="text/css" href="lib/bootstrap/css/bootstrap-theme.min.css">
	<link rel="stylesheet" type="text/css" href="css/header.css">
	<link rel="stylesheet" href="lib/font-awesome/css/font-awesome.min.css">
	<script src="js/jquery.min.js"></script>
	<script src="lib/bootstrap/js/bootstrap.min.js"></script>
  	<script src="js/mybag.js"></script>
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
					<a id="link1" href="
					<s:url namespace='/' action='profile'>
		        	</s:url>
					" onclick="">Profile</a>
					<a id="link2" href="
					<s:url namespace='/' action='cart'>
		        	</s:url>
					" onclick="">My bag</a>
					<a id="linkactive" href="
					<s:url namespace='/' action='following'>
		        	</s:url>" onclick="">Following</a>
				</div>
			</div>
			
			<div class="col-md-9 infor">
				<h5 class="countItems"></h5> 
				<s:iterator value="arrProduct">
				<div class="row list-item">
					<div class="col-md-3">
						<a href="
						 	<s:url namespace='/' action='detailProduct'>
							  <s:param name="productId"><s:property value="productCode" /></s:param>
						    </s:url>
						"><img id='image' src="<s:property value="images" />">
						</a>
					</div>
					<div class="col-md-3">
						<a id="name" href="<s:url namespace='/' action='detailProduct'>
							  <s:param name="productId"><s:property value="productCode" /></s:param>
						    </s:url>"><strong><s:property value="productName"/></strong></a>						 	
						<p class="price"><s:property value="buyPrice"/>$</p>
						<p class="state">
							<s:if test="<s:property value='quantityInStock'/> == 0">
							Sold Out
							</s:if>
							<s:else>
							In Stock
							</s:else>
						</p>
						<p class="sale">Sale : <s:property value="saleOff"/> %</p>
					</div>
					<div class="col-md-2">
						<a class="btn" href="
						 	<s:url namespace='/' action='detailProduct'>
							  <s:param name="productId"><s:property value="productCode" /></s:param>
						    </s:url>
						">Following
					 	</a>
					</div>
					<div class="col-md-2">
						<a class="btn" href="
						 	<s:url namespace='/' action='order'>
							  <s:param name="productCode"><s:property value="productCode"/></s:param>
						    </s:url>
						">Buy Now
					 	</a>
					</div>
					<div class="col-md-2 icon">
						<a href="#" data-toggle="modal" data-target="#<s:property value="productCode"/>">
			        	<i class="fa fa-trash-o"></i></a>
					</div>
					<hr>
					<div class="modal fade" id="<s:property value="productCode"/>" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                      <div class="modal-dialog">
                        <div class="modal-content">
                          <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title" id="myModalLabel">Delete Product</h4>
                          </div>
                          <div class="modal-body">
                            Are you sure ?
                          </div>
                          <div class="modal-footer">
                            <a href="<s:url namespace='/' action='deleteCart'>
									<s:param name="productCode"><s:property value="productCode"/></s:param>
									</s:url>">
                                <button type="button" class="btn btn-primary">Confirm</button>
                            </a>
                            <button type="button" class="btn btn-default" data-dismiss="modal" style="color:#000">Cancel</button>
                          </div>
                        </div>
                      </div>
                    </div>
				</div>
				</s:iterator>
			</div>				
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>
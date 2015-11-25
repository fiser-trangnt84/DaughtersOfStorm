<!DOCTYPE html>
<html>
<head>
	<title></title>
	<meta charset="utf-8">
  	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="css/footer.css">
	<link rel="stylesheet" type="text/css" href="css/fontfamily.css">
</head>
<body>
	<footer>
		<div class="row">
			<div class="col-md-4 shipping"><a data-toggle="modal" data-target="#myModal"><span>CONTACT US</span></a></div>
			<div class="col-md-4 social">
				<a href=""><i class="fa fa-facebook"></i></a>
				<a href=""><i class="fa fa-twitter"></i></a>
				<a href=""><i class="fa fa-google-plus"></i></a>
				<a href=""><i class="fa fa-rss"></i></a>
			</div>
			<div class="col-md-4 service">
				<a href=""><span>CUSTOMER SERVICE</span></a>
				<i class="fa fa-phone"></i>
				<span class="phone"> 888 888 888</span>
			</div>
			 <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
		<div class="modal-dialog">
		
		  <!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
				  <button type="button" class="close" data-dismiss="modal">&times;</button>
				  <h6 class="modal-title contact"> <i class="fa fa-envelope"> </i>Contact Us</h6>
				</div>
				<div class="modal-body">
					
					<form id="contactform"> 
                <div class="row">
                    <div class="col-md-6">
        			     <input id="name" name="name" placeholder="Name..." required type="text"> 
                     </div>
        			 <div class="col-md-6"  >  
        			     <input id="email" name="email" placeholder="Email..." required type="text"> 
                    </div>
                </div>
                <input type="text" name="subject" placeholder="Subject..." required>
                <textarea type="text" placeholder="Type your message here"></textarea>
                
                
    		</form> 
				</div>
				<div class="modal-footer">
					<div class= "footer-button ">
						<button type="button" class="btn btn-x btn-success btn-md" data-dismiss="modal" >Send</button>
					</div>
				</div>
			</div>
		</div>
    </div>

		</div>
	</footer>
</body>
</html>

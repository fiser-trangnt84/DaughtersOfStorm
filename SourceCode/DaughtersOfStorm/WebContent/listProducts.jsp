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

	<div>
		<p class= "ketqua ten">"Spring Skirt" 130 RESULTS </p>
	 <p class="ketqua sapxep">SORTED BY:</p>
	 <select class="ketqua list" name="sap xep">
		<option value="Y">Favorite
		<option value="G1">price:from hight to low
		<option value="G2">price:from low to hight
		<option value="D">Review: from hight to low
	</select> 
	</div> 
	<hr>
	<br/> 

<div class="row">
    <div class="col-md-4" >
    	<a href="detail?ProductCode=2"><img id="1" src="img/dress1.jpg"> </a>
    	<div class="info">
	    	<p><span class="nameProduct"> Spring Skirt</span>
	    	<span class="icon-add">
		    	<a href=""><i class="fa fa-bookmark"></i></a>
		    	<a href=""><i class="fa fa-cart-plus"></i></a>
	    	</span>
	    	</p>
	    		
	    	<p class="price"> Coat: 879,000 $</p>
	    	<p class="price"> Bag: 699,000 $</p>
    	</div>
    </div>

     <div class="col-md-4" >
    	<a href="detail?ProductCode=4"><img id="1" src="img/dress2.jpg"> </a>
    	<div class="info">
	    	<p><span class="nameProduct"> Spring Skirt, bag</span>
	    	<span class="icon-add">
		    	<a href=""><i class="fa fa-bookmark"></i></a>
		    	<a href=""><i class="fa fa-cart-plus"></i></a>
	    	</span>
	    	</p>
	    		
	    	<p class="price"> Coat: 999,000 $</p>
	    	<p class="price"> Bag: 879,000 $</p>
    	</div>
    </div>

  	<div class="col-md-4" >
    	<a href="detail?ProductCode=5"><img id="1" src="img/dress3.jpg"> </a>
    	<div class="info">
	    	<p><span class="nameProduct"> Spring Skirt, bag</span>
	    	<span class="icon-add">
		    	<a href=""><i class="fa fa-bookmark"></i></a>
		    	<a href=""><i class="fa fa-cart-plus"></i></a>
	    	</span>
	    	</p>
	    		
	    	<p class="price"> Coat: 999,000 $</p>
	    	<p class="price"> Bag: 879,000 $</p>
    	</div>
    </div>   
</div>


<div class="row">
    <div class="col-md-4" >
    	<a href="detail?ProductCode=2"><img id="1" src="img/dress1.jpg"> </a>
    	<div class="info">
	    	<p><span class="nameProduct"> Spring Skirt</span>
	    	<span class="icon-add">
		    	<a href=""><i class="fa fa-bookmark"></i></a>
		    	<a href=""><i class="fa fa-cart-plus"></i></a>
	    	</span>
	    	</p>
	    		
	    	<p class="price"> Coat: 879,000 $</p>
	    	<p class="price"> Bag: 699,000 $</p>
    	</div>
    </div>

     <div class="col-md-4" >
    	<a href="detail?ProductCode=4"><img id="1" src="img/dress2.jpg"> </a>
    	<div class="info">
	    	<p><span class="nameProduct"> Spring Skirt, bag</span>
	    	<span class="icon-add">
		    	<a href=""><i class="fa fa-bookmark"></i></a>
		    	<a href=""><i class="fa fa-cart-plus"></i></a>
	    	</span>
	    	</p>
	    		
	    	<p class="price"> Coat: 999,000 $</p>
	    	<p class="price"> Reduced: 879,000 $</p>
    	</div>
    </div>

  	<div class="col-md-4" >
    	<a href="detail?ProductCode=5"><img id="1" src="img/dress3.jpg"> </a>
    	<div class="info">
	    	<p><span class="nameProduct"> Spring Skirt, bag</span>
	    	<span class="icon-add">
		    	<a href=""><i class="fa fa-bookmark"></i></a>
		    	<a href=""><i class="fa fa-cart-plus"></i></a>
	    	</span>
	    	</p>
	    		
	    	<p class="price"> Coat: 999,000 $</p>
	    	<p class="price"> Reduced: 879,000 $</p>
    	</div>
    </div>   
</div>


 
 	<div class="button">
 		<a href="listProducts.jsp" > <button>1</button> </a>
 		<a href="listProducts.jsp" > <button>2</button> </a>
 		<a href="listProducts.jsp" > <button>3</button> </a>
 		<a href="listProducts.jsp" > <button>4</button> </a>
 		<a href="listProducts.jsp" > <button>5</button> </a>


 	</div>
 	<br/>
 <div class=" row">
 	<div class="col-md-11" >
 		<img id= "7" src="img/trademask.png">
 		
    </div>
    <a href="#" ><div class="col-md-1">
    	<img id="8" src="img/len.png">
    </div></a>
 
 </div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Contact</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8">
    <!--[if IE]>
    	<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
    <link rel="stylesheet" href="css/styleContact.css" type="text/css" media="screen">
</head>
<body>
   <div  class="cover">
    		<h2 class="contact">Contact Me</h2>
    		<form id="contactform"> 
    			<p class="contact word"><label for="name">Name</label></p> 
    			<input id="name" name="name" placeholder="First and last name" required="" tabindex="1" type="text"> 
    			 
    			<p class="contact word"><label for="email">Email</label></p> 
    			<input id="email" name="email" placeholder="example@domain.com" required="" tabindex="2" type="text"> 
                
                <p class="contact word"><label for="Subject">Subject</label></p> 
    			<input id="subject" name="subject" placeholder="Subject" required="" tabindex="2" type="text"> 
    			 
    			<p class="contact word"><label for="comment">Your Message</label></p> 
    			<textarea name="comment" id="comment" tabindex="4"></textarea> <br>
    			<div style="padding-top:30px; padding-bottom:20px;">
    			<input name="submit" id="submit" tabindex="5" value="Send Message" type="submit">
    			</div> 	 
    		</form> 
     </div>       
     <div style="float:right; padding-right:30px;padding-bottom:30px;font-size:22px"><a href="index.jsp"> Back to homepage </a></div>
</body></html>
$(document).ready(function(){
    $('.introType #link-image').hover(
    	function(){
    		$(this).next(). addClass("hvr-bounce-to-right");
    		$(this).find('img').css("opacity","1");
    	},function(){
    		$(this).next(). removeClass("type-button-hover");
    		$(this).find('img').css("opacity","0.8");
    		$(this).removeClass("hvr-bounce-to-right");
    	})
});
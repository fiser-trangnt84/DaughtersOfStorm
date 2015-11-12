$(document).ready(function(){
	 var numItems = $('.list-item').length;
    $('h5.countItems').text("The number of items: " + numItems);

    $(".icon a").click(function(event){
        event.preventDefault();
        $(this).parent().parent().hide();
        numItems--;
        $('h5.countItems').text("The number of items: " + numItems);

    });
    var username= $('#username').text();

    $('.user span a').text(username);

});
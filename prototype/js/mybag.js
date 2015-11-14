$(document).ready(function(){
	 var numItems = $('.list-item').length;
    $('h5.countItems').text("The number of items: " + numItems);

    $(".icon a").click(function(event){
        event.preventDefault();
        $(this).parent().parent().fadeOut(400);;
        numItems--;
        $('h5.countItems').text("The number of items: " + numItems);

    });
    var username= $('#username').text();

    $('.user span #registerform').text("Log Out");
    $('.user span #loginform').text(username);

});
$(document).ready(function(){
	 var numItems = $('.list-item').length;
    $('h5.countItems').text("The number of items: " + numItems);

    $(".icon a").click(function(event){
        if(confirmDelete()) {
            event.preventDefault();
            $(this).parent().parent().fadeOut(400);;
            numItems--;
            $('h5.countItems').text("The number of items: " + numItems);

        } 
    });
    var username= $('#username').text();

    $('.user span #registerform').text("Log Out");
    $('.user span #loginform').text(username);
    
    function confirmDelete() {
        var agree = confirm("Are you sure you want to delete this product?");
        if(agree) return true;
        else return false;
    }

});
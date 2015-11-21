
$(document).ready(function(){	
	var username = $("#username").html().toString();
	if (!username){
		$("#beforeLogin").show();
		$("#afterLogin").hide();
	} else {		
		$("#beforeLogin").hide();
		$("#afterLogin").show();
	}
});
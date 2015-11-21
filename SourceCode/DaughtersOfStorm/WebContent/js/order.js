
$(document).ready(function(){

	//Hide div w/id extra
   $("#repci").css("display","none");
	$("#form-repci").click(function(){
		$("#repci").show("fast");
	});
	// Add onclick handler to checkbox w/id checkme
   $("#checkme").click(function(){

	// If checked
	if ($("#checkme").is(":checked"))
	{
		//show the hidden div
		$("#repci").hide("fast");
	}
	else
	{
		//otherwise, hide it
		$("#repci").show("fast");
	}
  });

});

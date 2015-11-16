function VOTE1() {
	var Num = new Number($("#VeryGood").val());
	var Sum = new Number($("#SumVote").val());
	Num = Num + 1;
	Sum = Sum + 1;
	$("#VeryGood").val(Num);
	$("#SumVote").val(Sum);
}
function VOTE2() {
	var Num = new Number($("#Good").val());
	var Sum = new Number($("#SumVote").val());
	Num = Num + 1;
	Sum = Sum + 1;
	$("#Good").val(Num);
	$("#SumVote").val(Sum);
}
function VOTE3() {
	var Num = new Number($("#Medium").val());
	var Sum = new Number($("#SumVote").val());
	Num = Num + 1;
	Sum = Sum + 1;
	$("#Medium").val(Num);
	$("#SumVote").val(Sum);
}
function VOTE4() {
	var Num = new Number($("#NotGood").val());
	var Sum = new Number($("#SumVote").val());
	Num = Num + 1;
	Sum = Sum + 1;
	$("#NotGood").val(Num);
	$("#SumVote").val(Sum);
}
function VOTE5() {
	var Num = new Number($("#Bad").val());
	var Sum = new Number($("#SumVote").val());
	Num = Num + 1;
	Sum = Sum + 1;
	$("#Bad").val(Num);
	$("#SumVote").val(Sum);
}

$(document).ready(function(){
	// Enable Carousel Indicators
	$(".item1").click(function(){
		$("#myCarousel").carousel(0);
	});
	$(".item2").click(function(){
		$("#myCarousel").carousel(1);
	});
	$(".item3").click(function(){
		$("#myCarousel").carousel(2);
	});

	// Enable Carousel Controls
	$(".left").click(function(){
		$("#myCarousel").carousel("prev");
	});
	$(".right").click(function(){
		$("#myCarousel").carousel("next");
	});
	
});
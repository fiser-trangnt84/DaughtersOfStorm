$(document).ready(function(){
	
   var vid = document.getElementById("bgvid");
  var pauseButton = document.querySelector(".content #pause");
  $(".content #pause").click(function(){
    // vid.pause();
    vid.paused?vid.play():vid.pause();
  });


  function vidFade() {
    vid.classList.add("stopfade");
  }

  vid.addEventListener('ended', function()
  {
  // only functional if "loop" is removed 
  vid.pause();
  // to capture IE10
  vidFade();
  }); 


});
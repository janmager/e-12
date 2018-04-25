$(document).ready(function() {

  var counter = 0;
  var c = 0;
  var i = setInterval(function(){
      $(".preload .counter h1").html(c + "%");
      $(".preload .counter .bar").css("width", c + "%");
      counter++;
      c++;
    if(counter == 101) {
        clearInterval(i);
        setTimeout(function(){
          $(".preload").fadeOut(750);
          setTimeout(function(){
            $(".container").css({"display":"flex"});
          },0);
        },1000);
    }
  }, 50);
});

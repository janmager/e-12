$(".option-0").click(function(){
  $(".option-0").addClass("option-clicked");
  $(".option-1").removeClass("option-clicked");
  $(".option-2").removeClass("option-clicked");
  $(".option-3").removeClass("option-clicked");
});

$(".option-1").click(function(){
  $(".option-1").addClass("option-clicked");
  $(".option-0").removeClass("option-clicked");
  $(".option-2").removeClass("option-clicked");
  $(".option-3").removeClass("option-clicked");
});

$(".option-2").click(function(){
  $(".option-2").addClass("option-clicked");
  $(".option-0").removeClass("option-clicked");
  $(".option-1").removeClass("option-clicked");
  $(".option-3").removeClass("option-clicked");
});

$(".option-3").click(function(){
  $(".option-3").addClass("option-clicked");
  $(".option-1").removeClass("option-clicked");
  $(".option-2").removeClass("option-clicked");
  $(".option-0").removeClass("option-clicked");
});

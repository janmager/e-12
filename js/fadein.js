// SHOW 2nd STAGE - #name
$(".btn-main").click(function(){
  $(".c1").addClass("hideC");
  setTimeout(function(){
    $(".c1").css({"display":"none"});
    $(".c3").css({"display":"flex"});
  },1000);
});

$(".btn-name-prev").click(function(){
  var nameUsr = $(".input-name").val();
  var passwordUsr = $(".input-password").val();
  if (nameUsr==""){
    window.alert("Podaj nazwę użytkownika!");
  }
  else{
    $(".c5").addClass("hideC");
    setTimeout(function(){
      $(".c5").css({"display":"none"});
      $(".c7").css({"display":"flex"});
      $(".input-password").focus();
    },1000);
  }
});

$('.input-name').on('keydown', function(e) {
    if (e.which == 13) {
      var nameUsr = $(".input-name").val();
      var passwordUsr = $(".input-password").val();
      if (nameUsr==""){
        window.alert("Podaj nazwę użytkownika!");
      }
      else{
        $(".c5").addClass("hideC");
        setTimeout(function(){
          $(".c5").css({"display":"none"});
          $(".c7").css({"display":"flex"});
          $(".input-password").focus();
        },1000);
      }
    }
});

// SHOW 3rd STAGE - #gamemod
$(".btn-name").click(function(){
  // $(".c5").addClass("hideC");
  var nameUsr = $(".input-name").val();
  var passwordUsr = $(".input-password").val();
  if (passwordUsr==""){
    window.alert("Podaj hasło!");
  }
  else{
    window.location.href = "competition-mode-play.php?username=" + nameUsr + "&password=" + passwordUsr + "&pkt=" + 0;
  }
});

$('.input-password').on('keydown', function(e) {
    if (e.which == 13) {
      // $(".c5").addClass("hideC");
      var nameUsr = $(".input-name").val();
      var passwordUsr = $(".input-password").val();
      if (passwordUsr==""){
        window.alert("Podaj hasło!");
      }
      else{
        window.location.href = "competition-mode-play.php?username=" + nameUsr + "&password=" + passwordUsr + "&pkt=" + 0;
      }
    }
});

// ADDING CLASS TO CHOOSE BOX - #gamemod
var randQuest = false;
var testE12 = false;
var rand10Quests = false;
var competitionMode = false;
$(".cq1").click(function(){
  $(".cq1").addClass("cq-clicked").removeClass("choose-quiz");
  $(".cq2").removeClass("cq-clicked").addClass("choose-quiz");
  $(".cq3").removeClass("cq-clicked").addClass("choose-quiz");
  $(".cq4").removeClass("cq-clicked").addClass("choose-quiz");
  randQuest = true;
  testE12 = false;
  rand10Quests = false;
  competitionMode = false;
});
$(".cq2").click(function(){
  $(".cq2").addClass("cq-clicked").removeClass("choose-quiz");
  $(".cq3").removeClass("cq-clicked").addClass("choose-quiz");
  $(".cq1").removeClass("cq-clicked").addClass("choose-quiz");
  $(".cq4").removeClass("cq-clicked").addClass("choose-quiz");
  randQuest = false;
  testE12 = true;
  rand10Quests = false;
  competitionMode = false;
});
$(".cq3").click(function(){
  $(".cq3").addClass("cq-clicked").removeClass("choose-quiz");
  $(".cq2").removeClass("cq-clicked").addClass("choose-quiz");
  $(".cq1").removeClass("cq-clicked").addClass("choose-quiz");
  $(".cq4").removeClass("cq-clicked").addClass("choose-quiz");
  randQuest = false;
  testE12 = false;
  rand10Quests = true;
  competitionMode = false;
});
$(".cq4").click(function(){
  $(".cq4").addClass("cq-clicked").removeClass("choose-quiz");
  $(".cq3").removeClass("cq-clicked").addClass("choose-quiz");
  $(".cq2").removeClass("cq-clicked").addClass("choose-quiz");
  $(".cq1").removeClass("cq-clicked").addClass("choose-quiz");
  randQuest = false;
  testE12 = false;
  rand10Quests = false;
  competitionMode = true;
});

// GO TO SELECT SITE
$(".btn-gamemod").click(function(){
  if(randQuest) location.href = 'random-question.php';
  if(competitionMode) location.href = 'competition-mode.php?logerror=';
  if(testE12){
    location.href = 'e12.php';
  }
});

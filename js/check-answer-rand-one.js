var answers = [answer1,answer2,answer3,answer4];
var original = answers[0].toLowerCase();

function css(x){
  $(".option-0").addClass("option-after-result");
  $(".option-1").addClass("option-after-result");
  $(".option-2").addClass("option-after-result");
  $(".option-3").addClass("option-after-result");
  $(".option-0").removeClass("option-box");
  $(".option-1").removeClass("option-box");
  $(".option-2").removeClass("option-box");
  $(".option-3").removeClass("option-box");
  $(".btn-check-test").css({"display":"none"});
  $(".option-"+x).addClass("good-answer");
  $(".brawo").css({"display":"flex"});
  $(".btn-next-question-bad").css({"display":"none"});
  $(".btn-check").css({"display":"none"});
  $(".btn-rand-new-one").css({"display":"flex"});
  $(".btn-table").css({"display":"none"});
  $(".btn-back").css({"display":"none"});
  $(".quest").addClass("show-answer");
  $(".quest-img").addClass("show-answer");
  $(".btn-showimg").addClass("show-answer").removeAttr("onclick");
  $(".btn-hideimg").addClass("show-answer").removeAttr("onclick");
}

function css2(x){
  $(".option-0").addClass("option-after-result");
  $(".option-1").addClass("option-after-result");
  $(".option-2").addClass("option-after-result");
  $(".option-3").addClass("option-after-result");
  $(".option-0").removeClass("option-box");
  $(".option-1").removeClass("option-box");
  $(".option-2").removeClass("option-box");
  $(".option-3").removeClass("option-box");
  $(".option-"+x).addClass("good-answer");
  $(".btn-check-test").css({"display":"none"});
  $(".brawo").css({"display":"flex"});
  $(".btn-next-question-bad").css({"display":"none"});
  $(".btn-check").css({"display":"none"});
  $(".btn-next-question").css({"display":"flex"});
  $(".btn-table").css({"display":"none"});
  $(".btn-back").css({"display":"none"});
  $(".quest").addClass("show-answer");
  $(".quest-img").addClass("show-answer");
  $(".btn-showimg").addClass("show-answer").removeAttr("onclick");
  $(".btn-hideimg").addClass("show-answer").removeAttr("onclick");
}

function cssBad(e){
  $(".option-0").addClass("option-after-result");
  $(".option-1").addClass("option-after-result");
  $(".option-2").addClass("option-after-result");
  $(".option-3").addClass("option-after-result");
  $(".option-0").removeClass("option-box");
  $(".option-1").removeClass("option-box");
  $(".option-2").removeClass("option-box");
  $(".option-3").removeClass("option-box");
  $(".option-"+e).addClass("wrong-answer");
  $(".zle").css({"display":"flex"});
  pkt = 0;
  $(".btn-check").css({"display":"none"});
  if(original==$(".option-0").text().toLowerCase()) $(".option-0").addClass("good-answer");
  else if(original==$(".option-1").text().toLowerCase()) $(".option-1").addClass("good-answer");
  else if(original==$(".option-2").text().toLowerCase()) $(".option-2").addClass("good-answer");
  else if(original==$(".option-3").text().toLowerCase()) $(".option-3").addClass("good-answer");
  $(".btn-table").css({"display":"none"});
  $(".btn-next-question").css({"display":"none"});
  $(".btn-rand-new-one").css({"display":"flex"});
  $(".btn-next-question-bad").css({"display":"flex"});
  $(".btn-back").css({"display":"flex"});
  $(".btn-save").css({"display":"none"});
  $(".quest").addClass("show-answer");
  $(".btn-check-test").css({"display":"none"});
  $(".quest-img").addClass("show-answer");
  $(".btn-showimg").addClass("show-answer").removeAttr("onclick");
  $(".btn-hideimg").addClass("show-answer").removeAttr("onclick");
}

function cssBad2(e){
  $(".option-0").addClass("option-after-result");
  $(".option-1").addClass("option-after-result");
  $(".option-2").addClass("option-after-result");
  $(".option-3").addClass("option-after-result");
  $(".option-0").removeClass("option-box");
  $(".option-1").removeClass("option-box");
  $(".option-2").removeClass("option-box");
  $(".option-3").removeClass("option-box");
  $(".option-"+e).addClass("wrong-answer");
  $(".zle").css({"display":"flex"});
  $(".btn-check").css({"display":"none"});
  if(original==$(".option-0").text().toLowerCase()) $(".option-0").addClass("good-answer");
  else if(original==$(".option-1").text().toLowerCase()) $(".option-1").addClass("good-answer");
  else if(original==$(".option-2").text().toLowerCase()) $(".option-2").addClass("good-answer");
  else if(original==$(".option-3").text().toLowerCase()) $(".option-3").addClass("good-answer");
  $(".btn-table").css({"display":"flex"});
  $(".btn-next-question").css({"display":"none"});
  $(".btn-next-question-bad").css({"display":"flex"});
  $(".btn-back").css({"display":"none"});
  $(".btn-save").css({"display":"block"});
  $(".btn-check-test").css({"display":"none"});
  $(".quest").addClass("show-answer");
  $(".quest-img").addClass("show-answer");
  $(".btn-showimg").addClass("show-answer").removeAttr("onclick");
  $(".btn-hideimg").addClass("show-answer").removeAttr("onclick");
}

function checkAnswerRandOne(){
  if($(".option-0").hasClass("option-clicked")){
    var clicked = $(".option-0").text().toLowerCase();
    if(clicked==original) css(0);
    else cssBad(0);
  }
  else if($(".option-1").hasClass("option-clicked")){
    var clicked = $(".option-1").text().toLowerCase();
    if(clicked==original) css(1);
    else cssBad(1);
  }
  else if($(".option-2").hasClass("option-clicked")){
    var clicked = $(".option-2").text().toLowerCase();
    if(clicked==original) css(2);
    else cssBad(2);
  }
  else if($(".option-3").hasClass("option-clicked")){
    var clicked = $(".option-3").text().toLowerCase();
    if(clicked==original) css(3);
    else cssBad(3);
  }
}

function checkAnswerCompMode(){
  if($(".option-0").hasClass("option-clicked")){
    var clicked = $(".option-0").text().toLowerCase();
    if(clicked==original) css2(0);
    else cssBad2(0);
  }
  else if($(".option-1").hasClass("option-clicked")){
    var clicked = $(".option-1").text().toLowerCase();
    if(clicked==original) css2(1);
    else cssBad2(1);
  }
  else if($(".option-2").hasClass("option-clicked")){
    var clicked = $(".option-2").text().toLowerCase();
    if(clicked==original) css2(2);
    else cssBad2(2);
  }
  else if($(".option-3").hasClass("option-clicked")){
    var clicked = $(".option-3").text().toLowerCase();
    if(clicked==original) css2(3);
    else cssBad2(3);
  }
}

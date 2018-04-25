var numbers = [1, 2, 3, 4];

var answers = [answer1,answer2,answer3,answer4];

function shuffle(o) {
    for(var j, x, i = o.length; i; j = parseInt(Math.random() * i), x = o[--i], o[i] = o[j], o[j] = x);
    return o;
};

var random = shuffle(numbers);
for(var i = 0; i<4;i++){
  $(".options").append("<div class=\"option-box option-"+i+"\">"+answers[random[i]-1]+"</div>");
}

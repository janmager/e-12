<?php
  require_once('connect.php');
  // POŁĄCZENIE Z DB
  $conn2 = new mysqli($servername, $username, $password, $dbname);
  // JEŻELI BŁĄD POŁĄCZENIA
  if (mysqli_connect_errno()) {echo "Wystąpił błąd połączenia z bazą";}
  // POLSKIE ZNAKI
  mysqli_set_charset($conn2,"utf8");
  // GET USER NAME
  $usrnm = $_GET['username'];
  $usrps = $_GET['password'];
  $pkt = $_GET['pkt'];

  $pageWasRefreshed = isset($_SERVER['HTTP_CACHE_CONTROL']) && $_SERVER['HTTP_CACHE_CONTROL'] === 'max-age=0';

  if($pageWasRefreshed ) {
     $pkt = 0;
  } else {
      //do nothing;
  }

  // CHECK USER NAME
  $userDATA = "SELECT * FROM `list-of-results` WHERE name = '$usrnm'";
  $result = $conn2->query($userDATA);
  // POBRANIE HASLA Z BAZY DANYCH
  if($rows = mysqli_fetch_array($result)){
      if($result->num_rows > 0){
        do{
          $dbpass = $rows['password'];
          // echo $dbpass;
          // echo "??";
        }while($row = $result->fetch_assoc());
      }
      // PASY OKEJ
      if($dbpass == $usrps){
        // echo "wszystko pasuje";
        // echo $pkt;
        $sql = "SELECT id, question, answer1, answer2, answer3, answer4, category, img FROM `questions-abcd`";
        $result2 = $conn2->query($sql);
        // ILOŚĆ ID
        $lenght = $result2->num_rows;
        // ID WYLOSOWANEGO PYTANIA
        $randID = rand(1,$lenght);
        // WYLOSOWANE PYTANIE
        $randDATA = mysqli_query($conn2,"SELECT * FROM `questions-abcd` WHERE id = $randID");
        while($rows = mysqli_fetch_array($randDATA)){
          $question = $rows['question'];
          $answer1 = $rows['answer1'];
          $answer2 = $rows['answer2'];
          $answer3 = $rows['answer3'];
          $answer4 = $rows['answer4'];
          $category = $rows['category'];
          $imglink = $rows['img'];
        }
      }
      // JEZELI ZLE HASLO LUB LOGIN ISTNIEJE
      else{
        $logerr = true;
        header("Location: competition-mode.php?logerror=" . $logerr);
      }
      // echo "?";
  }
  // BRAK UZYTKOWNIKA - DODAC!
  else{
    // echo "pusto";
    // echo $pkt;
    // NEW USER ADD
    $newuser = "INSERT INTO `list-of-results` (`id`, `name`, `result`, `password`) VALUES (NULL, '$usrnm', '0', '$usrps');";
    if($conn2->query($newuser)){
      // echo "ok";
      $sql = "SELECT id, question, answer1, answer2, answer3, answer4, category, img FROM `questions-abcd`";
      $result2 = $conn2->query($sql);
      // ILOŚĆ ID
      $lenght = $result2->num_rows;
      // ID WYLOSOWANEGO PYTANIA
      $randID = rand(1,$lenght);
      // WYLOSOWANE PYTANIE
      $randDATA = mysqli_query($conn2,"SELECT * FROM `questions-abcd` WHERE id = $randID");
      while($rows = mysqli_fetch_array($randDATA)){
        $question = $rows['question'];
        $answer1 = $rows['answer1'];
        $answer2 = $rows['answer2'];
        $answer3 = $rows['answer3'];
        $answer4 = $rows['answer4'];
        $category = $rows['category'];
        $imglink = $rows['img'];
      }
    }
    else{
      echo $conn2->error;
    }
  }
?>

<html>
  <head>
    <meta charset="utf-8">
    <title>QUIZ - 2B1T</title>
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/style.css?v=55">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <link rel="apple-touch-icon" sizes="57x57" href="favicon/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="favicon/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="favicon/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="favicon/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="favicon/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="favicon/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="favicon/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="favicon/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="favicon/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="favicon/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="favicon/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="favicon/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="favicon/favicon-16x16.png">
    <link rel="manifest" href="favicon/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="favicon/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
  </head>
  <body onload="checkimg()">
    <div class="container container-show randOneQuest" onload="">
      <script>
        var answer1 = "<?php echo $answer1?>";
        var answer2 = "<?php echo $answer2?>";
        var answer3 = "<?php echo $answer3?>";
        var answer4 = "<?php echo $answer4?>";
        var timesPHP = "<?php echo $lenght?>";
        var nameUsr = "<?php echo $usrnm?>";
        var passwordUsr = "<?php echo $usrps?>";
        var link = "<?php echo $imglink?>";

        var imglink = link;
        var imgsrc = "<img src='"+imglink+"'>";

        function showIMG(){
          $(".quest-img").css({"display":"flex"});
          $(".btn-showimg").css({"display":"none"});
          $(".btn-hideimg").css({"display":"block"});
        }

        function hideIMG(){
          $(".quest-img").css({"display":"none"});
          $(".btn-showimg").css({"display":"block"});
          $(".btn-hideimg").css({"display":"none"});
        }

        function checkimg(){
          $(".quest-img").html(imgsrc);
          if(imglink!=""){
             $(".btn-showimg").css({"display":"block"});
             $(".btn-hideimg").css({"display":"none"});
          }
          else{
            $(".btn-showimg").css({"display":"none"});
            $(".btn-hideimg").css({"display":"none"});
          }
        }

        function nextQuestion(){
          pkt = "<?php echo $pkt?>";
          pkt++;
          location.href = "competition-mode-play.php?username=" + nameUsr + "&password=" + passwordUsr + "&pkt=" + pkt;
        }

        function save() {
          pkt = "<?php echo $pkt?>";
          location.href = "save.php?username=" + nameUsr + "&password=" + passwordUsr + "&pkt=" + pkt;
        }
      </script>
      <div class="c c6">
        <a href="choose-mode.html"><div class="btn-log-out"></div></a>
        <h3>PYTANIE #<span class="rand-quest-id"><?php echo $randID ?></span></h3>
        <!-- <h2>KATEGORIA: <span class="rand-quest-category">E12</span></h2> -->
        <div class="quest-block">
          <h1 class="quest"><?php echo $question ?></h1>
          <div onclick="showIMG()" class="btn-showimg">> Pokaż zdjęcie <</div>
          <div onclick="hideIMG()" class="btn-hideimg">> Ukryj zdjęcie <</div>
          <div class="quest-img"></div>
          <div class="brawo">BRAWO! :)</div>
          <div class="zle">ŹLE! :(</div>
        </div>
        <div class="options"></div>
        <div class="btn-check btn-check-anwser" onclick="checkAnswerCompMode()"></div>
        <div class="btns">
          <div class="btn-next-question" onclick="nextQuestion();"></div>
          <div class="btn-table" onclick="save();"></div>
          <a href="choose-mode.html"><div class="btn-back"></div></a>
        </div>
      </div>
    </div>
    <footer>
      Jan Mager 2B1T &copy; 2018
    </footer>

  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/fadein.js"></script>
  <script src="js/rand-question-display.js"></script>
  <script src="js/click-option-box.js"></script>
  <script src="js/check-answer-rand-one.js"></script>
  <script src="js/rand-again.js"></script>

  </body>
</html>

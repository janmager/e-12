<?php
  require_once('connect.php');
  // POŁĄCZENIE Z DB
  $conn5 = new mysqli($servername, $username, $password, $dbname);
  // JEŻELI BŁĄD POŁĄCZENIA
  if (mysqli_connect_errno()) {echo "Wystąpił błąd połączenia z bazą";}
  // POLSKIE ZNAKI
  mysqli_set_charset($conn5,"utf8");

  $questIDS = array();


      $sql = "SELECT id, question, answer1, answer2, answer3, answer4, category, img FROM `questions-abcd`";
      $result2 = $conn5->query($sql);
      // ILOŚĆ ID
      $lenght = $result2->num_rows;
      // ID WYLOSOWANEGO PYTANIA
      $randID = rand(1,$lenght);
      // WYLOSOWANE PYTANIE
      $randDATA = mysqli_query($conn5,"SELECT * FROM `questions-abcd` WHERE id = $randID");
      // DODANIE DO BAZY DANYCH ID SESJI
      $newSession = "INSERT INTO `test-e12` (`id`, `1`) VALUES (NULL, '$randID');";
      $conn5->query($newSession);

      // POBRANIE OBECNEGO ID
      $getDataSession = "SELECT id FROM `test-e12`";
      $result3 = $conn5->query($getDataSession);
      $lenghtTable = $result3->num_rows;

      // DODANIE PYTAŃ
      for($x=1;$x<=40;$x++){
        $randID = rand(1,$lenght);
        while(in_array($randID, $questIDS)) $randID = rand(1,$lenght);
        $addRecord = "UPDATE `test-e12` SET `$x` = '$randID' WHERE `id` = '$lenghtTable'";
        array_push($questIDS,$randID);
        $conn5->query($addRecord);
      }

      // PRZEKIEROWANIE PO ID SESJI
      $url = "e12-start.php?sessionID=".$lenghtTable."&questNUM="."1"."&pkt="."0";

      header( "Location: $url" );

      while($rows = mysqli_fetch_array($randDATA)){
        $question = $rows['question'];
        $answer1 = $rows['answer1'];
        $answer2 = $rows['answer2'];
        $answer3 = $rows['answer3'];
        $answer4 = $rows['answer4'];
        $category = $rows['category'];
        $imglink = $rows['img'];
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
    <div class="container container-show randOneQuest">
      <script>
        var answer1 = "<?php echo $answer1?>";
        var answer2 = "<?php echo $answer2?>";
        var answer3 = "<?php echo $answer3?>";
        var answer4 = "<?php echo $answer4?>";
        var timesPHP = "<?php echo $lenght?>";
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
      </script>
      <div class="c c6">
        <!-- <h3>PYTANIE #<span class="rand-quest-id"><?php echo $randID ?></span></h3>
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
        </div> -->
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

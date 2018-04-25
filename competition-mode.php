<?php
  require_once('connect.php');
  // POŁĄCZENIE Z DB
  $conn = new mysqli($servername, $username, $password, $dbname);
  // JEŻELI BŁĄD POŁĄCZENIA
  if (mysqli_connect_errno()) {echo "Wystąpił błąd połączenia z bazą";}
  // POLSKIE ZNAKI
  mysqli_set_charset($conn,"utf8");

  $logerror = $_GET['logerror'];

  if($logerror){
    echo '<script language="javascript">';
    echo 'alert("Konto o takiej nazwie już istnieje! Zaloguj się na nie lub utwórz nowe!")';
    echo '</script>';
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
  <body>
    <div class="container container-show randOneQuest" onload="">
      <div class="c c5">
        <h1>Podaj imię: </h1>
        <input class="input-name" placeholder="wpisz" autofocus></input>
        <div class="btn-next btn-name-prev"></div>
      </div>
      <div class="c c7">
        <h1>Podaj hasło: </h1>
        <input class="input-password" placeholder="wpisz" type="password" autofocus></input>
        <div class="btn-next btn-name"></div>
      </div>
      <script>
        window.alert("Możesz zalogować się podając wcześniejsze dane, albo stworzyć nowe konto wpisując nowe.");
      </script>
    </div>
    <footer>
      Jan Mager 2B1T &copy; 2018
    </footer>

  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/fadein.js"></script>
  <!-- <script src="js/rand-question-display.js"></script> -->
  <script src="js/click-option-box.js"></script>
  <!-- <script src="js/check-answer-rand-one.js"></script> -->
  <script src="js/rand-again.js"></script>

  </body>
</html>

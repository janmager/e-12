<?php
  require_once('connect.php');
  // POŁĄCZENIE Z DB
  $conn4 = new mysqli($servername, $username, $password, $dbname);
  // JEŻELI BŁĄD POŁĄCZENIA
  if (mysqli_connect_errno()) {echo "Wystąpił błąd połączenia z bazą";}
  // POLSKIE ZNAKI
  mysqli_set_charset($conn4,"utf8");
?>

<html>
  <head>
    <meta charset="utf-8">
    <title>QUIZ - 2B1T</title>
    <link rel="stylesheet" type="text/css" href="css/reset.css">
    <link rel="stylesheet" type="text/css" href="css/style.css?v=55">
    <meta name="viewport" content="width=device-width; initial-scale=1.0; maximum-scale=1.0; user-scalable=0;" />
    <link href="https://fonts.googleapis.com/css?family=Lato:100,300,400,700,900" rel="stylesheet">
    <link rel="apple-touch-icon" sizes="57x57" href="/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="/favicon-16x16.png">
    <link rel="manifest" href="/manifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
  </head>
  <body>
    <div class="container container-show randOneQuest">
      <script>
        var nameUsr = "<?php echo $usrnm?>";
        var passwordUsr = "<?php echo $usrps?>";
      </script>
      <div class="c c6 c6table" style="height: auto !important;">
        <h1 style="padding: 25px 0px;">TABLICA CHWAŁY</h1>
        <?php
          $randDATA2 = mysqli_query($conn4,"SELECT * FROM `list-of-results` ORDER BY result DESC");

          echo "<div class='table-table'>";
          echo "<table>";
          echo "<tr class='first-row'><td class='table-id'>LP.</td><td>GRACZ</td><td class='table-result'>WYNIK</td></tr>";
          $nr = 1;
          while($rows = mysqli_fetch_array($randDATA2)){
            echo "<tr><td class='table-id'>" . $nr . "</td><td>" . $rows['name'] . "</td><td class='table-result'>" . $rows['result'] . "</td></tr>";
            $nr++;
          }
          echo "</table>";
          echo "</div>";
        ?>
        <a href="choose-mode.html"><div class="btn-back" style="display:block;"></div></a>
      </div>
    </div>
    <footer>
      Jan Mager 2B1T &copy; 2018
    </footer>

  <script src="js/jquery-3.2.1.min.js"></script>
  <script src="js/fadein.js"></script>
  <!-- <script src="js/rand-question-display.js"></script> -->
  <script src="js/click-option-box.js"></script>
  <!-- <script src="js/check-answer-rand-one.js"></script> -->
  <!-- <script src="js/rand-again.js"></script> -->

  </body>
</html>

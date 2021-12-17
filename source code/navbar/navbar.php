<?php
include '../Login/connection.php'
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Document</title>
  <link href="vendor/all.min.css" rel="stylesheet" type="text/css">
</head>


<body>

  <nav class="navbar fixed-top navbar-expand-md" id="one">
    <a class="navbar-brand" href="#"><img src="../bootstrap-4.6.0-dist/3info.png" id="menu_a"></a>
    <button class="navbar-toggler navbar-dark" type="button" data-toggle="collapse" data-target="#main-navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="main-navigation">
      <ul class="navbar-nav ml-auto">
        <a href="../tubes/Home.php" class="nav-link" aria-current="page">HOME</a>
        </li>
        <li class="nav-item">
          <a href="../Sport/sport.php" target="_blank" class="nav-link">SPORT</a>
        </li>
        <li class="nav-item">
          <a href="../music/music.php" target="_blank" class="nav-link">MUSIC</a>
        </li>
        <li class="nav-item">
          <a href="../games/games.php" target="_blank" class="nav-link">GAMES</a>
        </li>
        <li class="nav-item">
          <a href="../Movie/movie.php" target="_blank" class="nav-link">MOVIE</a>
        </li>
        <?php
         include '../search/search.php'; 
        ?>
        <?php
        if (empty($_SESSION['name'])) {
          echo "<a href='../Login/index.php' target='_blank' button class='btn btn-primary nav-link margins' type='submit'>Daftar</a>";
          echo "<a href='../Login/login.php' target='_blank' button class='btn btn-success nav-link' type='submit'>Login</a>";
        } else if ($_SESSION['name'] == true) {
          echo "<div class='btn-group'>";
          echo "<button type='button' class='btn btn-outline-light'>";
          echo "<i class='fas fa-user'></i>";
          echo $_SESSION['name'];
          echo "</button>";
          echo "<button type='button' class='btn btn-outline-light dropdown-toggle dropdown-toggle-split' ";
          echo "data-toggle='dropdown' aria-haspopup='true' aria-expanded='false'>";
          echo "<span class='sr-only'>Toggle Dropdown</span>";
          echo "</button>";
          echo "<div class='dropdown-menu'>";
          echo "<a class='dropdown-item' href='#'>Settings</a>";
          echo "<a class='dropdown-item' href='../logout/logout.php'>Log out</a>";
          echo "</div>";
          echo "</div>";
        }
        ?>

      </ul>
    </div>
  </nav>

</body>

</html>
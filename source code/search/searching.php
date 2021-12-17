<?php

include 'headersearch.php';

?>

<h2 style="margin-left: 50px;margin-top: 30px">Hasil Pencarian</h2>
<br>

<div class="center">
    <?php
    

    if (isset($_POST['submit-search'])) {
        $search = mysqli_real_escape_string($conn, $_POST['search']);
        $sql = "SELECT * from artikel where title like '%$search%' or isian like '%$search%'";
        $result = mysqli_query($conn, $sql);
        $queryResult = mysqli_num_rows($result);

        if ($queryResult > 0) {
            while ($row = mysqli_fetch_assoc($result)) {
                echo "<center>";
                echo "<div class= 'card mt-4 ml-5' style='width: 28rem;box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
                transition: 0.3s;border-color: blueviolet;'>
               <a href=" . $row['link'] . "><img class= 'card-img-top' src=" . $row['gambar'] . " alt= 'Image Pokoknya' style='width: 446.2px;
               height: 358px;'>
                <div class= 'card-body'>
                  <h5 class= 'card-title'>" . $row['title'] . "</h5>
                  <p class= 'card-text'>" . $row['isian'] . "</p>
                  </a>
                  </div>
              </div>
            </div>";
            echo "</center>";
            }
        } else {
            echo "<center>";
            echo "<div class= 'card mt-4 ml-5' style='width: 28rem;box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2);
            transition: 0.3s;border-color: blueviolet;'>
           <img class= 'card-img-top' src='idk.jpg' alt= 'Image Pokoknya' style='width: 446.2px;
           height: 358px;'>
        </div>
        <div class= 'card-body'>
        <h4 class= 'card-title ml-5' > 404 Not Found </h4>
        </div>";
        echo "</center>";
        }
    }

    ?>
</div>

</body>

</html>
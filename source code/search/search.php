<?php

include '../search/headersearch.php';

?>

<div class="container-fluid">
    <form class="d-flex" action="../search/searching.php" method="POST">
        <input class="form-control me-2" type="searcb" placeholder="Search" aria-label="Search" name="search" autocomplete="off">
        <button class="btn btn-success" type="submit" name="submit-search">Search</button>
    </form>
</div>
</body>

</html>
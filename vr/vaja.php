<!DOCTYPE html>
<html>
<body>
<?php
    include('../connect.php');

    if (!$conn) {
        die('Could not connect: ' . mysqli_error($conn));
    }

    $st = intval($_GET['q']);
    $q = "SELECT * FROM Videi WHERE ID=$st";
    $result = pg_query($conn, $q);
    while ($row = pg_fetch_assoc($result)) {
        echo "<span id='ime'>" . $row['ime'] . "</span>";
        echo "<span id='opis'>" . $row['opis'] . "</span>";
        echo "<span id='url'>" . $row['url'] . "</span>";
    }
?>
</body>
</html>

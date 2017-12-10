<!DOCTYPE html>
<html>
<body>
<?php
    include('../connect.php');

if(!$conn){
    $error = error_get_last();
    echo "Connection failed. Error was: ". $error['message']. "\n";
} else {
    echo "Connection succesful.\n";
}

    $st = intval($_GET['q']);
    $q = "SELECT * FROM vaje WHERE id=$st";
    $result = pg_query($conn, $q);
    while ($row = pg_fetch_assoc($result)) {
        echo "<span id='ime'>" . $row['ime'] . "</span>";
        echo "<span id='opis'>" . $row['opis'] . "</span>";
        echo "<span id='url'>" . $row['url'] . "</span>";
    }
?>
</body>
</html>

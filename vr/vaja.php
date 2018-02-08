<!DOCTYPE html>
<html>
<body>
<?php
    include('../connect.php');

if(!$conn){
    $error = error_get_last();
    echo "Connection failed. Error was: ". $error['message']. "\n";
} else {
    //echo "Connection succesful.\n";
}

if(isset($_GET['q'])){
    $st = ($_GET['q']);
    $st = substr($st, 5);
    $q = "SELECT * FROM vaje WHERE id=$st";
    $q2 = "SELECT * FROM tocke WHERE vaja_id=$st";
    $result2 = pg_query($conn,$q2);
    while ($row2 = pg_fetch_assoc($result2)) {
        echo "<span id='posZ'>" . $row2['posZ'] . "</span><br>";
        echo "<span id='offset'>" . $row2['vr_offset'] . "</span><br>";
    }
    $result = pg_query($conn, $q);
    while ($row = pg_fetch_assoc($result)) {
        echo "<span id='ime'>" . $row['ime'] . "</span><br>";
        echo "<span id='opis'>" . $row['opis'] . "</span><br>";
        echo "<span id='url'>" . $row['url'] . "</span><br>";
    }
}else{
    echo "String not found";
}
?>
</body>
</html>

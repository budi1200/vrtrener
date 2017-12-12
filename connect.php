<?php
$dbopts = parse_url(getenv('DATABASE_URL'));
$conn = pg_connect('host='.$dbopts["host"] . ' dbname='.ltrim($dbopts["path"],'/') . ' port='.$dbopts["port"] . ' user='.$dbopts["user"] . ' sslmode=require'. ' password='.$dbopts["pass"]);
if(!$conn){
    $error = error_get_last();
    echo "Connection failed. Error was: ". $error['message']. "\n";
} else {
    echo "Connection succesful.\n";
}
?>

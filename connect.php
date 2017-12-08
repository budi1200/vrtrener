<?php
$dbopts = parse_url(getenv('DATABASE_URL'));
$db = pg_connect('host='.$dbopts["host"] . ' dbname='.ltrim($dbopts["path"],'/') . 'port='.$dbopts["port"] . ' user='.$dbopts["user"] ' sslmode=require'. ' password='.$dbopts["pass"]);
?>

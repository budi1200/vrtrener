<?php
    include('connect.php');
    echo 'connection ';
    if($app) {
       echo 'connected';
    } else {
        echo 'there has been an error connecting';
    }
?>

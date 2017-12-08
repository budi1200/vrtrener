<?php
    include('connect.php');
    if($app) {
       echo 'connected';
    } else {
        echo 'there has been an error connecting';
    }
?>

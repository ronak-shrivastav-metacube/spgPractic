<?php

$db_name = 'ron_test_db';
$db_con = mysqli_connect('localhost','root','passwd',$db_name);
if (mysqli_connect_errno()) {
    echo "Failed to connect to MySQL: " . mysqli_connect_error();
    exit();
  }

?>
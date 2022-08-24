<?php

include('db.php');

if(isset($_GET['m']) && !empty($_GET['m']))
{
    $sql = "SELECT EmpID FROM employees";
    $query = mysqli_query($db_con,$sql);
    if(mysqli_num_rows($query) > 0)
    {
        while($data = mysqli_fetch_assoc($query))
        {
            $pwd = md5('my_password');
            $sql2 = "UPDATE employees SET password = $pwd";
        }
    }
}
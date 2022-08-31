<?php
    
    /**
    * Get All Indivisual Tables (which don't have any forieng Key)
    * KEY_COLUMN_USAGE
    */
    $sql = "SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE REFERENCED_TABLE_SCHEMA = '$db_name'";
    $query = mysqli_query($db_con,$sql);
    $tables = [];
    
    while($table = mysqli_fetch_assoc($query))
    {
        print_r($table);
    }
    
    /**
    * get all fields from table
    */
    $query = mysqli_query($db_con,"SELECT COLUMN_NAME
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '$data->filterByTable'");
    $allFields = [];
    while($column = mysqli_fetch_assoc($query))
    {
        $allFields[] = $column['COLUMN_NAME'];
    }


    /**
     * Get Constrains with colum name in a specified table 
     */
    $sql = "SELECT a.TABLE_NAME,a.CONSTRAINT_NAME,a.COLUMN_NAME,b.CONSTRAINT_TYPE FROM information_schema.`KEY_COLUMN_USAGE` as a LEFT JOIN information_schema.TABLE_CONSTRAINTS as b ON a.CONSTRAINT_NAME = b.CONSTRAINT_NAME WHERE a.TABLE_SCHEMA='$db_name' and a.TABLE_NAME='$value[TABLE_NAME]' AND b.TABLE_SCHEMA='$db_name' and b.TABLE_NAME='$value[TABLE_NAME]' ORDER BY a.CONSTRAINT_NAME";
    
    $query = mysqli_query($db_con,$sql);
    
    while($row = mysqli_fetch_assoc($query))
    {
        $columns[] = [
            'TABLE_NAME'=>$row['TABLE_NAME'],
            'CONSTRAINT_NAME'=>$row['CONSTRAINT_NAME'],
            'COLUMN_NAME'=>$row['COLUMN_NAME'],
            'CONSTRAINT_TYPE'=>$row['CONSTRAINT_TYPE'],
        ];
    }
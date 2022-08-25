<?php
header('Access-Control-Allow-Origin: *'); 
header('Content-Type: application/json');
header('Access-Control-Allow-Methods: POST, GET, DELETE, PUT, PATCH, OPTIONS');
header('Access-Control-Allow-Headers: token, Content-Type'); 
header('Content-Type: text/plain'); 

include('db.php');


$fildeData = file_get_contents('php://input');
$data = json_decode($fildeData);

if(isset($data->table) && !empty($data->table))
{
    $sql = '';
    $fileterByTableName = $data->table;
    switch($fileterByTableName)
    {
        case $fileterByTableName === 'skillSets' : $sql = "SELECT c.SkillName as fieldName, FORMAT(count(c.id),'N') as sumOfEmployees FROM `emp_skille_mapping` as a left JOIN employees as b ON a.empID = b.EmpID LEFT JOIN skilleSets as c ON a.skillID = c.id GROUP by a.skillID "; 
        break;
        
        case $fileterByTableName === 'user_roles' : $sql = "SELECT b.RoleName as fieldName , FORMAT(count(a.role),'N') as sumOfEmployees FROM `employees` as a LEFT JOIN user_roles as b ON a.role = b.id GROUP BY a.role"; 
        break;
        
        case $fileterByTableName === 'departments' : $sql = "SELECT b.DepartmentName as fieldName, count(a.empID) as sumOfEmployees FROM `employees` as a LEFT JOIN departments as b ON a.deptID = b.id GROUP by a.deptID "; 
        break;
    }
    
    $query = mysqli_query($db_con,$sql);
    if(mysqli_num_rows($query) > 0)
    {
        $dataSet = [];
        while($data = mysqli_fetch_assoc($query))
        {
                $dataSet[] = $data; 
        }
        echo json_encode($dataSet);
    }
}
elseif(isset($data->login) && !empty($data->login))
{
    $password = md5($data->password);
    $sql = "SELECT * FROM employees WHERE username = '$data->username' AND password = '$password'";
    
    $query = mysqli_query($db_con,$sql);
    if(mysqli_num_rows($query) > 0)
    {
        $userData = mysqli_fetch_assoc($query);
        echo json_encode(['status'=>1,'userData'=>$userData]);
    }
    else 
    {
        echo json_encode(['status'=>0,'error'=>'Record Not Found']);
    }
}       
elseif(isset($data->filterByTable) && !empty($data->filterByTable))
{
    // echo "fetch from API : ".$data->filterByTable.' ';
    /**
    * Get All Indivisual Tables (which don't have any forieng Key)
    */
    $sql = "SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE REFERENCED_TABLE_SCHEMA = 'ron_test_db'";
    $query = mysqli_query($db_con,$sql);
    $tables = [];
    
    while($table = mysqli_fetch_assoc($query))
    {
        // echo " Table : ".$table['REFERENCED_TABLE_NAME'];
        if($data->filterByTable == $table['REFERENCED_TABLE_NAME'])
        $tables[] = $table;
    }

    $clause = $data->clause;
    foreach($tables as $value)
    {
        print_r($value);
    }
    /**
    * get all fields from table
    */
    $query = mysqli_query($db_con,"SELECT COLUMN_NAME
    FROM INFORMATION_SCHEMA.COLUMNS
    WHERE TABLE_NAME = '$data->filterByTable'");
    $columns = [];
    while($column = mysqli_fetch_assoc($query))
    {
        $columns[] = $column['COLUMN_NAME'];
    }
    // echo json_encode($columns);
} 

        
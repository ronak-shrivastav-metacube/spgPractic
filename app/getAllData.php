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
    /**
    * Get All Indivisual Tables (which don't have any forieng Key)
    * KEY_COLUMN_USAGE
    */
    $sql = "SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE REFERENCED_TABLE_SCHEMA = '$db_name'";
    $query = mysqli_query($db_con,$sql);
    $tables = [];
    
    while($table = mysqli_fetch_assoc($query))
    {
        // echo " Table : ".$table['REFERENCED_TABLE_NAME'];
        if($data->filterByTable == $table['REFERENCED_TABLE_NAME'])
        $tables[] = $table;
    }
    
    $clause = $data->clause;
 
    $coumns = [];
    foreach($tables as $value)
    {
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
    }

    $dataSet = [];
    foreach($tables as $value)
    {
        $tabelName = $value['TABLE_NAME'];
        $columnName = $value['COLUMN_NAME'];
        
        $pid = '';
        
        foreach($columns as $arr)
        {
            if($arr['TABLE_NAME'] == $tabelName && $arr['CONSTRAINT_TYPE'] == 'PRIMARY KEY')
            {
                $pid = $arr['COLUMN_NAME'];
                break;
            }
        }

        $queryGetSearcedTable = mysqli_query($db_con,"SELECT * FROM $data->filterByTable");
        $col = [];
        while($xData = mysqli_fetch_array($queryGetSearcedTable))
        {
            $query = mysqli_query($db_con,"SELECT Count($pid) as countOfColumn FROM `$value[TABLE_NAME]` WHERE $columnName = $xData[0]");
            $columnCount = mysqli_fetch_assoc($query);
            $col[] = [
                "name"=>$xData[1],
                "value"=>$columnCount['countOfColumn']
            ];
        }
        $dataSet[] = [
            "tableName"=>$value['TABLE_NAME'],
            "data" => $col
        ];
    }
    echo json_encode($dataSet);

    // $query = mysqli_query($db_con,"SELECT COLUMN_NAME FROM INFORMATION_SCHEMA.COLUMNS WHERE TABLE_NAME = ''");

    /**
     * Create groups of dataset
     */


} 

        
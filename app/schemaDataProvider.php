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
    if($data->table == 'all')
    {
        /**
         * get All Mention Tables into DataBase
         * 
         * @return array $tbls
         */

        $listdbtables = array_column($db_con->query('SHOW TABLES')->fetch_all(),0);

        /**
          * Get All Indivisual Tables (which don't have any forieng Key)
          */
         $sql = "SELECT TABLE_NAME, COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_TABLE_NAME, REFERENCED_COLUMN_NAME FROM INFORMATION_SCHEMA.KEY_COLUMN_USAGE WHERE REFERENCED_TABLE_SCHEMA = 'ron_test_db'";
         $query = mysqli_query($db_con,$sql);
         $KeyTableData = [];
         $tables = [];
         while($table = mysqli_fetch_assoc($query))
         {
           $KeyTableData[] = $table;
           $tables[] = $table['TABLE_NAME'];
         }
       
        $indivisualTablesCollection = array_values(array_diff($listdbtables,$tables));
       
        $tableNameArray = [];
        foreach($indivisualTablesCollection as $value)
        {
           $tableNameArray[] = str_replace('_',' ',$value);
        }
       
        $indivisualTablesCollectionNameJson = [];
        for($i=0;$i<count($tableNameArray); $i++)
        {
           $re = '/(?<=[a-z])(?=[A-Z])/x';
           $a = preg_split($re, $tableNameArray[$i]);
           $tableName = implode(" ",$a);
           $indivisualTablesCollectionNameJson[] = ['tblOrgName'=>$indivisualTablesCollection[$i],'tblDspName'=>ucwords($tableName)];
       }
       
       echo json_encode($indivisualTablesCollectionNameJson);
    }
}



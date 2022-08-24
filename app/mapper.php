<?php
include("db.php");

$array = [];

if(isset($_GET['q']) && !empty($_GET['q']))
{
    $sql = "SELECT empID FROM employees LIMIT 55, 1";
    $query = mysqli_query($db_con,$sql);

    $sql2 = "SELECT * FROM skilleSets";
    $query2 = mysqli_query($db_con,$sql2);
    
    $skills = [];
    while($data = mysqli_fetch_assoc($query2))
    {
        $skills[] = $data;
    }
    
    $value = '';
    if(mysqli_num_rows($query) > 0)
    {
        $count = mysqli_num_rows($query);
        $i = 1;
        while($data = mysqli_fetch_assoc($query))
        {
            if($i<$count)
            $value .="($data[empID], 7),";
            else
            $value .="($data[empID], 7)";
            $i++;
        }
    }
    
    if(mysqli_query($db_con,"INSERT INTO emp_skille_mapping(empID,skillID) VALUES $value"))
    {
        echo "Done";
    }
    else
    {
        echo "something Error";
    }
}

if(isset($_GET['c']) && !empty($_GET['c']))
{
    $sql2 = "SELECT * FROM department";
    $query2 = mysqli_query($db_con,$sql2);
    $departments = [];
    while($data = mysqli_fetch_assoc($query2))
    {
        $departments[] = $data;
    }
    
    $value = '';
    if(mysqli_num_rows($query) > 0)
    {
        $count = mysqli_num_rows($query);
        $i = 1;
        while($data = mysqli_fetch_assoc($query))
        {
            if($i<$count)
            $value .="($data[empID], 5),";
            else
            $value .="($data[empID], 5)";
            $i++;
        }
    }
    echo "INSERT INTO emp_dept_mapping(empID,deptID) VALUES $value";
    if(mysqli_query($db_con,"INSERT INTO emp_dept_mapping(empID,deptID) VALUES $value"))
    {
        echo "Done";
    }
    else
    {
        echo "something Error";
    }
}

if(isset($_GET['d']) && !empty($_GET['d']))
{
    $activities = ['working','break','working2','idle'];
    $sql = "SELECT * FROM employees LIMIT 81,20";
    $query = mysqli_query($db_con, $sql);
    $value = '';
    $days = cal_days_in_month(CAL_GREGORIAN,7,2022);
    $officeDays = ($days - 8);
    if(mysqli_num_rows($query) > 0)
    {
        $TotalRows = mysqli_num_rows($query);
        $count = 1;
        while($data = mysqli_fetch_assoc($query))
        {
            $d = 1;
            for($i=1; $i<=$officeDays; $i++)
            {
                $date = '2022'.'-'.'07'.'-'.sprintf("%02d",$i);
                $h1 = 11;
                $m1 = sprintf("%02d",rand(1,59));
                $i1 = sprintf("%02d",rand(1,59));
                $t1 = $h1.":".$m1.":".$i1;
                $Xdate = $date.' '.$t1;

                $h2 = 13;
                $i2 = sprintf("%02d",rand(1,59));
                $s2 = sprintf("%02d",rand(1,59));
                $t2 = $h2.":".$i2.":".$s2;
                $Xdate2 = $date.' '.$t2;

                $startTime = new DateTime($Xdate);
                $stopTime = new DateTime($Xdate2);
                $interVal = $startTime->diff($stopTime);
                $total_working_time = $interVal->format($date.' %h:%i:%s');

                $h3 = 16;
                $i3 = sprintf("%02d",rand(1,59));
                $s3 = sprintf("%02d",rand(1,59));
                $t3 = $h3.":".$i3.":".$s3;
                $Xdate3 = $date.' '.$t3;

                $startTime = new DateTime($Xdate2);
                $stopTime = new DateTime($Xdate3);
                $interVal = $startTime->diff($stopTime);
                $total_break_time = $interVal->format($date.' %h:%i:%s');

                $h4 = 17;
                $i4 = sprintf("%02d",rand(1,59));
                $s4 = sprintf("%02d",rand(1,59));
                $t4 = $h4.":".$i4.":".$s4;
                $Xdate4 = $date.' '.$t4;

                $startTime = new DateTime($Xdate3);
                $stopTime = new DateTime($Xdate4);
                $interVal = $startTime->diff($stopTime);
                $total_working_2_time = $interVal->format($date.' %h:%i:%s');

                $h5 = 19;
                $i5 = sprintf("%02d",rand(1,59));
                $s5 = sprintf("%02d",rand(1,59));
                $t5 = $h5.":".$i5.":".$s5;
                $Xdate5 = $date.' '.$t5;

                $startTime = new DateTime($Xdate4);
                $stopTime = new DateTime($Xdate5);
                $interVal = $startTime->diff($stopTime);
                $total_idle_time = $interVal->format($date.' %h:%i:%s');

                $c = 1;
                for($x = 0; $x<count($activities); $x++)
                {
                    $activityName = '';
                    $startTime_x = '';
                    $stopTime_x = '';
                    $totalTime_x = '';
                    $Xdate_x = '';

                    if($activities[$x] == 'working')
                    {
                        $activityName = "'".$activities[$x]."'";
                        $startTime_x = "'".$Xdate."'";
                        $stopTime_x = "'".$Xdate2."'";
                        $totalTime_x = "'".$total_working_time."'";
                        $Xdate_x = "'".$Xdate2."'";
                    }    
                    elseif($activities[$x] == 'break')
                    {
                        $activityName = "'".$activities[$x]."'";
                        $startTime_x = "'".$Xdate2."'";
                        $stopTime_x = "'".$Xdate3."'";
                        $totalTime_x = "'".$total_break_time."'";
                        $Xdate_x = "'".$Xdate3."'";
                    }
                    elseif($activities[$x] == 'working2')
                    {
                        $activityName = "'working'";
                        $startTime_x = "'".$Xdate3."'";
                        $stopTime_x = "'".$Xdate4."'";
                        $totalTime_x = "'".$total_working_2_time."'";
                        $Xdate_x = "'".$Xdate4."'";
                    }
                    elseif($activities[$x] == 'idle')
                    {
                        $activityName = "'".$activities[$x]."'";
                        $startTime_x = "'".$Xdate4."'";
                        $stopTime_x = "'".$Xdate5."'";
                        $totalTime_x = "'".$total_idle_time."'";
                        $Xdate_x = "'".$Xdate5."'";
                    }
                    
                    if($c<count($activities))
                    {
                        $value .= "($data[EmpID],$activityName,'WFO',$startTime_x,$stopTime_x,$totalTime_x,$Xdate_x),";
                    }
                    else
                    {
                        $value .= "($data[EmpID],$activityName,'WFO',$startTime_x,$stopTime_x,$totalTime_x,$Xdate_x)";
                    }
                    $c++;
                }
                $sql_2 = "INSERT INTO activities (empID,activity_type,activity_taken_from,start_time,stop_time,total_activity_time,created_at) VALUE $value";
            
                mysqli_query($db_con,$sql_2);
                $value = '';

                // echo $value;
            }
            $count++;
            
        }
    }
}

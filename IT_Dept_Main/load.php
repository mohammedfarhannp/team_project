<?php
    $DB = "IT_Dept";
    $USER = "root";
    $PASS = "";
    $SERVER = "localhost";

    $Conn = new mysqli($SERVER, $USER, $PASS, $DB);
    if($Conn->connect_error)
    {
        die("Connection Error!");
    }

    if(isset($_POST['Faculty']) && in_array($_POST['Faculty'], array("MCA", "MSc", "FYIMP")))
    {
        $Course = $_POST['Faculty'];
        $Query = "SELECT DISTINCT(BATCH) FROM STUDENTS WHERE COURSE='$Course'";
        $Result = $Conn->query($Query);

        echo "<label for='options'>Batch</label>
        <select id='options'>";
        
        while($row = $Result->fetch_assoc())
        {
            echo "<option value=" . $row['BATCH'] . ">" . $row['BATCH'] . "</option>";
        }
        
        echo "</select>";

    } else {
        echo "<h1 align='center'>Forbidden</h1>";
    }
?>
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

    if(isset($_POST['Faculty']) && !isset($_POST['Batch']) && in_array($_POST['Faculty'], array("MCA", "MSc", "FYIMP")))
    {
        $Course = $_POST['Faculty'];
        $Query = "SELECT DISTINCT(BATCH) FROM STUDENTS WHERE COURSE='$Course'";
        $Result = $Conn->query($Query);

        echo "<div class='Batch'>
        <label for='options'>Batch</label>
        <select id='options' onchange='loadButton(this.value, \"$Course\")'>
        <option value='' selected disabled>None</option>";

        while($row = $Result->fetch_assoc())
        {
            echo "<option value=" . $row['BATCH'] . ">" . $row['BATCH'] . "</option>";
        }
        
        echo "</select>
        </div>";

    } elseif (isset($_POST['Faculty']) && isset($_POST['Batch'])) {
        $Course = $_POST['Faculty'];
        $Batch = $_POST['Batch'];
        
        $Query = "SELECT * FROM BUTTON_STATE WHERE BUTTON_BATCH='$Batch' AND BUTTON_COURSE='$Course'";
        $Result = $Conn->query($Query);

        $Index = 0;
        $IDs = array();

        
        while($Row = $Result->fetch_assoc())
        {
            $ID = $Row['BUTTON_ID'];
            $Name = $Row['BUTTON_NAME'];

            $IDs[$Index] = $ID;
            $Index++;

            $State = ($Row["BUTTON_STATE"] === "ON") ? "checked" : "";
            echo "
            <div class='toggle-container'>
                <label>$Name</label>
                <label class='switch'>
                    <input type='checkbox' id='$ID' value='on' $State onchange='updateButtonState(this, \"$ID\")'>
                    <span class='toggle'></span>
                </label>
            </div>
            ";
        }

    } elseif (isset($_POST['button_id']) && isset($_POST['state'])) { 
        $id = $_POST['button_id'];
        $state = $_POST['state'];

        $Query = "UPDATE BUTTON_STATE SET BUTTON_STATE='$state' WHERE BUTTON_ID='$id'";
        $Result = $Conn->query($Query);
    
    } else {
        echo "<h1 align='center'>Forbidden</h1>";
    }
?>
<html>
    <head>
        <title>Faculty Dashbord</title>

        <link rel="stylesheet" href="CSS/base.css">
        <link rel="stylesheet" href="CSS/button.css">
    </head>

    <body>

<?php

    $SERVER = "localhost";
    $USER = "root";
    $PASS = "";
    $DB = "IT_Dept";

    $conn = new mysqli($SERVER, $USER, $PASS, $DB);
    if($conn->connect_error)
    {
        die("Connection to Database Failed... " . $conn->connect_error);
    }

    $SQL_QUERY = "SELECT * FROM Button_State";
    $States = $conn->query($SQL_QUERY);
?>

    <div class="toggle-btn">
        <form method="POST">
            <?php
                $Button_IDs = array();
                $Counter = 0;
                while($row=$States->fetch_assoc())
                {
                    $Name = $row["BUTTON_NAME"];
                    $Course = $row["BUTTON_COURSE"];
                    $ID = $row["BUTTON_ID"];
                    $Batch = $row["BUTTON_BATCH"];

                    $Button_IDs[$Counter] = $ID;
                    $Counter++; 

                    $State = ($row["BUTTON_STATE"] === "ON") ? "checked" : "";
                    echo "
                    <div class='toggle-container'>
                        <label>$Batch $Course $Name</label>
                        <label class='switch'>
                            <input type='checkbox' name='$ID' value='on' $State>
                            <span class='toggle'></span>
                        </label>
                    </div>
                    ";
                }
            ?>

            <button type="submit">Update</button>
        </form>
    </div>

<?php
    if($_SERVER['REQUEST_METHOD'] === "POST")
    {
        foreach($Button_IDs as $ID)
        {
            if(isset($_POST["$ID"]))
            {
                $State = "ON";
            } else {
                $State = "OFF";
            }

            $SQL_QUERY = "UPDATE Button_State SET BUTTON_STATE='$State' WHERE BUTTON_ID='$ID'";
            $conn->query($SQL_QUERY);
        }
        $conn->close();
        header("Location: " . $_SERVER["PHP_SELF"]);
        exit();
    }
    
?>

    </body>
</html>
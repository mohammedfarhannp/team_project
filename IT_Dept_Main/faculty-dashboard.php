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
        <form>
            <?php
                while($row=$States->fetch_assoc())
                {
                    $Name = $row["BUTTON_NAME"];
                    $State = ($row["BUTTON_STATE"] === "ON") ? "checked" : "";
                    echo "
                    <div class='toggle-container'>
                        <label>$Name</label>
                        <label class='switch'>
                            <input type='checkbox' value='on' $State>
                            <span class='toggle'></span>
                        </label>
                    </div>
                    ";
                }
            ?>
        </form>
    </div>

    </body>
</html>
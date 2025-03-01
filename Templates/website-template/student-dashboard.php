<!-- HTML TAG -->
<html>

<?php
/*
TO DO
Check if session exists, if yes then proceed else redirect student-login.php

Also
In Student-login.php
Check if session exists, if yes then redirect to dashboard, else proceed
*/
    session_start();
    if(!isset($_SESSION["REGISTER_NUMBER"]))
    {
        echo "<script>location='student-login.php'</script>";
    }

    $SERVER = "localhost";
    $USER = "root";
    $PASS = "";
    $DB = "IT_Dept";

    $REGISTER_NUMBER = $_SESSION["REGISTER_NUMBER"];

    $conn = new mysqli($SERVER, $USER, $PASS, $DB);
    if($conn->connect_error)
    {
        die("Connection to Database Failed... " . $conn->connect_error);
    }

    $sql_query_1 = "SELECT * FROM STUDENTS WHERE REGISTER_NUMBER='$REGISTER_NUMBER'";
    $sql_query_2 = "SELECT * FROM RESULT_MASTERS WHERE REGISTER_NUMBER='$REGISTER_NUMBER'";

    $sql_result_1 = $conn->query($sql_query_1);
    $sql_result_2 = $conn->query($sql_query_2);

    $info = $sql_result_1->fetch_assoc();
    $results = $sql_result_2->fetch_assoc();

    $Name = $info['NAME'];
    $Batch = $info['BATCH'];
    $Course = $info['COURSE'];
    $Email = $info['EMAIL'];

    // HTML WITH-IN PHP TAG
    echo "<head>";
    echo "<title>$REGISTER_NUMBER</title>";
    echo "<link rel='stylesheet' href='CSS/base.css'>";
    echo "<link rel='stylesheet' href='CSS/form.css'>";
    echo "<script src='JS/functions.js'></script>";
    echo "<head>";

    echo "<body>";
    echo "<div class='top-banner'><h1>Welcome $Name</h1></div>";

    echo "<h2 class='table-title'>Student Information</h2>";
    echo "<table border='2'>";

    echo "<tr><td>Register Number</td> <td>$REGISTER_NUMBER</td></tr>";
    echo "<tr><td>Name of Student</td> <td>$Name</td></tr>";
    echo "<tr><td>Email ID of Student</td> <td>$Email</td></tr>";
    echo "<tr><td>Course Opted</td> <td>$Course</td></tr>";
    echo "<tr><td>Batch</td> <td>$Batch</td></tr>";

    echo "</table>";

    echo "<h2 class='table-title'>Semester Results</h2>";

    if($Course === "FYIMP")
    {
        $iteration = 10;
    } else {
        $iteration = 4;
    }

    echo "<table broder='2'><tr>";
    for ($i = 1; $i <= $iteration; $i++) {
        echo "<th>Semester " . $i . "</th>";
    }
    echo "</tr>";

    echo "<tr>";
    for($i = 1; $i <= $iteration; $i++)
    {
        $key = 'S' . $i;
        echo "<td>" . ($results[$key] ?? "N/A") . "</td>";
    }
    echo "</tr></table>";

    echo "<button class='login-btn logout-btn' onclick='redirect(\"logout.php\")'>Logout</button>";

    echo "</body>";
?>

</html>
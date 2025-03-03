<!-- HTML TAG -->
<html>
    <!-- HEAD TAG -->
    <head>

        <!-- TITLE TAG -->
        <title>
            Sem Results
        </title>

        <!-- LINK TAG -->
        <link rel="stylesheet" href="CSS/base.css">
        
    </head>

    <!-- BODY TAG -->
    <body>
        
<?php
    // Checks if the Request Method is POST
    if($_SERVER['REQUEST_METHOD'] === 'POST')
    {
        // Arrays for checking inputs recieved from POST request for security reasons
        $Courses = array("mca", "msc", "fyimp");
        $Batches = array("mca" => array('2023-2025', '2024-2026'),"msc" => array('2023-2025', '2024-2026'),"fyimp" => array('2024-2029'));
        $Semesters = array("mca" => array('S1','S2','S3','S4'), "msc" => array('S1','S2','S3','S4'), "fyimp" => array('S1', 'S2', 'S3', 'S4', 'S5', 'S6', 'S7', 'S8', 'S9', 'S10'));

        $course = isset($_POST['course']) ? $_POST['course'] : '';
        $batch = isset($_POST['batch']) ? $_POST['batch'] : '';
        $sem = isset($_POST['sem']) ? $_POST['sem'] : '';

        if(!in_array($course, $Courses)) {
            echo "<h1 align='center'>Forbidden</h1>";
        } elseif(!array_key_exists($course, $Batches) || !in_array($batch, $Batches[$course])) {
            echo "<h1 align='center'>Forbidden</h1>";
        } elseif(!array_key_exists($course, $Semesters) || !in_array($sem, $Semesters[$course])) {
            echo "<h1 align='center'>Forbidden</h1>";
        } else {
            // SELECT STUDENTS.REGISTER_NUMBER, STUDENTS.NAME, RESULT_MASTERS.$sem FROM STUDENTS, RESULT_MASTERS WHERE STUDENTS.BATCH = $batch AND STUDENTS.COURSE = $course;
            // Once the Checks are done and all is good [200], make connection to DB

            $SQL_USER = "root";
            $SQL_SERVER = "localhost";
            $SQL_PASS = "";
            $SQL_DB = "IT_Dept";

            $connection = new mysqli($SQL_SERVER, $SQL_USER, $SQL_PASS, $SQL_DB);

            // Check if Connection Error
            if($connection->connect_error)
            {
                die("Connection Failed: " . $connection->connect_error);
            }

            // For FYIMP one table and for MCA, MSc another table because of different number of semesters.
            if(!($course === 'fyimp'))
            {
                $SQL_QUERY = "SELECT STUDENTS.REGISTER_NUMBER, STUDENTS.NAME, RESULT_MASTERS.$sem FROM STUDENTS, RESULT_MASTERS WHERE STUDENTS.BATCH = '$batch' AND STUDENTS.COURSE = '$course' AND STUDENTS.REGISTER_NUMBER=RESULT_MASTERS.REGISTER_NUMBER ORDER BY RESULT_MASTERS.$sem DESC;";
            } else {
                $SQL_QUERY = "SELECT STUDENTS.REGISTER_NUMBER, STUDENTS.NAME, RESULT_INTEGRATED.$sem FROM STUDENTS, RESULT_INTEGRATED WHERE STUDENTS.BATCH = '$batch' AND STUDENTS.COURSE = '$course' AND STUDENTS.REGISTER_NUMBER=RESULT_INTEGRATED.REGISTER_NUMBER ORDER BY RESULT_INTEGRATED.$sem DESC;";
            }


            // Converting a String to Uppercase and storing it in another variable
            $COURSE = strtoupper($course);

            // HTML Elements added thru PHP
            echo "<div class='top-banner'>
            <!-- BUTTON TAG -->
            <button class='back-btn' onclick='history.back()'>Back</button>
            <h1>$sem Result of $COURSE batch $batch</h1>
            </div>";

            // SQL Query Execution
            $result = $connection->query($SQL_QUERY);

            // Table
            echo "<table border='2'>
                <tr>
                    <th>REGISTER NUMBER</th>
                    <th>NAME</th>
                    <th>SGPA</th>
                </tr>";
            
            // Display results if there is results in Database else Display 'no result found'
            if($result->num_rows > 0)
            {
                while($row = $result->fetch_assoc())
                {
                    echo "<tr><td>" . $row['REGISTER_NUMBER'] . "</td><td>" . $row['NAME'] . "</td><td>" . $row["$sem"] . "</td></tr>";
                }
            } else {
                echo "<tr><td>NO</td><td>RESULTS</td><td>FOUND</td></tr>";
            }
            echo "</table>";

            // Close Connection
            $connection->close();
        }


    } else {
        // If Request method is not POST then keep the page forbidden
        echo "<h1 align='center'>Forbidden</h1>";
    }

?>

    </body>
</html>
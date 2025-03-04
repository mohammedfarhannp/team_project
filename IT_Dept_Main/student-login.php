<?php
    // Starts Session
    session_start();
    // Checks if Session Variable 'REGISTER_NUMBER' exists
    if(isset($_SESSION["REGISTER_NUMBER"]))
    {
        // Redirect to Student Dashboard
        echo "<script>location='student-dashboard.php'</script>";
    }
?>

<!-- DOCTYPE HTML TAG -->
<!DOCTYPE html>

<!-- HTML TAG -->
<html>
    <!-- HEAD TAG -->
    <head>
        <!-- META TAG FOR DIFFERENT DEVICE RESOLUTIONS -->
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <!-- TITLE TAG -->
        <title>
            Student Portal
        </title>

        <!-- LINK TAGS -->
        <link rel="stylesheet" href="CSS/base.css">
        <link rel="stylesheet" href="CSS/form.css">
        <link rel="stylesheet" href="CSS/button.css">

        <!-- EXTERNAL JS LINK -->
        <script src="JS/functions.js"></script>
    </head>

    <!-- BODY TAG -->
    <body>
        <!-- Banner DIV TAG -->
        <div class="top-banner">
            <button class="back-btn" onclick="redirect('index.html')">Home</button>
            <h1 class="h1-style-1">
                Student Portal
            </h1>
        </div>

        <!-- LOGIN DIV -->
        <div id="login-form">

            <!-- ALERT DIVs -->
            <div class="alert" id="alert-1">Incorrect Register Number!</div>
            <div class="alert" id="alert-2">Incorrect Password!</div>
            <div class="alert" id="alert-3">Please Enter Register Number & Password!</div>

            <!-- FORM TAG -->
            <form action="student-login.php" method="POST">
                <p>LOG IN</p>
                
                <input type="text" id="Register_Number" name="regno" placeholder="Register Number">
                <input type="password" id="Password" name="pass" placeholder="Password">
                
                <button type="submit" class="login-btn">LOG IN</button>
            </form>
        </div>


        <?php
        // Checks if the request method is POST
        if($_SERVER["REQUEST_METHOD"]==="POST")
        {
            // Checks if POST Variables 'regno' and 'pass' are empty or not
            if(!empty($_POST["regno"]) && !empty($_POST["pass"]))
            {
                // Makes a connection to Database
                $server = "localhost";
                $user = "root";
                $pass="";
                $db = "IT_Dept";

                $conn = new mysqli($server, $user, $pass, $db);

                // Variables
                $register_no = mysqli_real_escape_string($conn, $_POST["regno"]); // Protection from sql-injection
                $password = $_POST["pass"];

                // Check if Connection error
                if($conn->connect_error)
                {
                    die("Connection Failed" . $conn->connect_error);
                }

                // Query Variable and Execution
                $sql_query="select * from AUTH where REGISTER_NUMBER = '$register_no'";
                $result = $conn->query($sql_query);

                // Checks if the number or rows after Query Execution is 1
                if($result->num_rows === 1)
                {
                    // Fetches the row into $row variable
                    $row = $result->fetch_assoc();
                    
                    // Password Verification
                    if(password_verify($password, $row['PASSWORD_ENCRYPTED']))
                    {
                        // Start buffering | session already exists
                        ob_start();

                        // Declare Session Variable
                        $_SESSION["REGISTER_NUMBER"] =$register_no;
                        
                        // Close Connection and redirect
                        $conn->close();
                        echo "<script>redirect('student-dashboard.php');</script>";

                    } else {
                        // Alert User About Incorrect Password
                        echo "<script>alert_user('alert-2');</script>";
                    }
                } else {
                    // Alert User About Invalid Register Number
                    echo "<script>alert_user('alert-1')</script>";
                }
            }else
            {
                // Alert User About Empty Fields
                echo "<script>alert_user('alert-3');</script>";
            }
        }
        ?>
    </body>
</html>
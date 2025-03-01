<?php
    session_start();
    if(isset($_SESSION["REGISTER_NUMBER"]))
    {
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
</head>

    <!-- BODY TAG -->
    <body>
        <!-- Banner DIV TAG -->
        <div class="top-banner">
            <h1 class="h1-style-1">
                Student Portal
            </h1>
        </div>

        <!-- LOGIN DIV -->
        <div id="login-form">
            <form action="student-login.php" method="POST">
                <p>LOG IN</p>
                
                <input type="text" id="Register_Number" name="regno" placeholder="Register Number">
                <input type="password" id="Password" name="pass" placeholder="Password">
                
                <button type="submit" class="login-btn">LOG IN</button>
            </form>
        </div>
        <?php
        
        if($_SERVER["REQUEST_METHOD"]==="POST")
        {
            if(!empty($_POST["regno"]) && !empty($_POST["pass"]))
            {
                
                $server = "localhost";
                $user = "root";
                $pass="";
                $db = "IT_Dept";

                $conn = new mysqli($server, $user, $pass, $db);

                $register_no = mysqli_real_escape_string($conn, $_POST["regno"]);
                $password = $_POST["pass"];

                if($conn->connect_error)
                {
                    die("Connection Failed" . $conn->connect_error);
                }

                $sql_query="select * from AUTH where REGISTER_NUMBER = '$register_no'";
                $result = $conn->query($sql_query);

                if($result->num_rows === 1)
                {
                    $row = $result->fetch_assoc();
                    if(password_verify($password, $row['PASSWORD_ENCRYPTED']))
                    {/*
                        $sql_query2="select * from STUDENTS where REGISTER_NUMBER = '$register_no'";
                        $result2 = $conn->query($sql_query2);

                        $row=$result2->fetch_assoc();*/
                        
                        ob_start();
                        session_start();
                        $_SESSION["REGISTER_NUMBER"] =$register_no;
                        $conn->close();
                        echo"<script>location='student-dashboard.php'</script>";

                    } else {
                        echo "<script>alert('Incorrect Password!!')</script>";
                    }
                } else {
                    echo "<script>alert('Invalid Register Number!!')</script>";
                }
            }else
            {
                echo "<script>alert('Please enter your register number and password to login.');</script>";
            }

        }
        ?>
    </body>
</html>
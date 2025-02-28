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

                $conn = new mysqli(hostname: $server, username: $user, password: $pass, database: $db);
                $register_no=mysqli_real_escape_string(mysql: $conn, string: $_POST["regno"]);
                $password=password_hash(password: $_POST["pass"],algo: PASSWORD_BCRYPT);

                if($conn->connect_error)
                {
                    die("Connection Failed" . $conn->connect_error);
                }
                $sql_query="select * from AUTH where REGISTER_NUMBER = '$register_no'";
                $result = $conn->query($sql_query);
                $hashed_password = ($result->num_rows > 0) ? $result->fetch_assoc()["PASSWORD_ENCRYPTED"] : null;

                if(password_verify($password, $hashed_password))
                {/*
                    $sql_query2="select * from STUDENTS where REGISTER_NUMBER = '$register_no'";
                    $result2 = $conn->query($sql_query2);

                    $row=$result2->fetch_assoc();*/
                    echo"<script>alert('correct credentials')</script>";
                    ob_start();
                    session_start();
                    $_SESSION["REGISTER_NUMBER"] =$register_no;
                    echo"<script>location='student-dashboard.php'</script>";
                }       
            }else
            {
                echo "<script>alert('Please enter your register number and password to login.');</script>";
            }

        }
        ?>

    </body>
</html>
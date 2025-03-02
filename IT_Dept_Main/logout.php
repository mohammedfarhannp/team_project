<?php
    session_start();
    if(isset($_SESSION['REGISTER_NUMBER']))
    {
        session_unset();
        session_destroy();
        echo "<script>location='student-login.php'</script>";
    }
?>
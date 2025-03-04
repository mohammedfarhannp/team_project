<?php
    // Start Session
    session_start();
    // Check if Session variable is set
    if(isset($_SESSION['REGISTER_NUMBER']))
    {
        // if set then unset all session variables
        session_unset();

        // Destroys the session
        session_destroy();

        // Redirect to login page
        echo "<script>location='student-login.php'</script>";
    }
?>
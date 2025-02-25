
<?php
// The input password
$password = "root123";

// Generate the bcrypt hash
$hashedPassword = password_hash($password, PASSWORD_BCRYPT);

// Output the hash
echo "Hashed Password: " . $hashedPassword;
?>

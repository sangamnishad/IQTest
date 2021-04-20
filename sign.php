<?php
include_once 'dbConnection.php';
ob_start();
$name     = $_POST['name'];
$name     = ucwords(strtolower($name));
$age      = $_POST['age'];
$gender   = $_POST['gender'];
$username = $_POST['username'];
$phno     = $_POST['phno'];
$password = $_POST['password'];

$q3 = mysqli_query($con, "INSERT INTO user VALUES  (NULL,'$name', '$age','$gender' ,'$username' ,'$phno', '$password')");
if ($q3) {
    session_start();
    $_SESSION["username"] = $username;
    $_SESSION["name"]     = $name;
    
    header("location:account.php?q=1");
} else {
    header("location:index.php?q7=Username already exists. Please choose another&name=$name&username=$username&gender=$gender&phno=$phno");
}
ob_end_flush();
?>
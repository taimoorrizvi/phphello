<?php

echo "Hello, World from Docker - PHP! <br>";

echo "Now connection have to be made with mysql on remote location <br><br><br>";

echo "******************************************************************";

/* Attempt MySQL server connection. Assuming you are running MySQL

server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "");
 
// Check connection
if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Print host information
echo "Connect Successfully. Host info: " . mysqli_get_host_info($link);


?>

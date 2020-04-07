<?php
/* Attempt MySQL server connection. Assuming you are running MySQL
server with default setting (user 'root' with no password) */
$link = mysqli_connect("localhost", "root", "");
 $id_dinas=$_GET['id_dinas'];
// Check connection

if($link === false){
    die("ERROR: Could not connect. " . mysqli_connect_error());
}
 
// Attempt delete query execution
$sql = "DELETE FROM kantor WHERE id_dinas='$id_dinas'";
if(mysqli_query($link, $sql)){
    echo "delete berhasil.";
} else{
    echo "ERROR: Could not able to execute $sql. " . mysqli_error($link);
}
 include 'kelas.php';
// Close connection
mysqli_close($link);
?>
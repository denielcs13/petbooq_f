<?php
session_start();
require 'dbcon.php';
$parent_id=$_SESSION['pet_unique_id'];

if(isset($_POST['accept'])) {

$req_acc=mysqli_query($conn,"UPDATE addfriend SET status='1' WHERE child_id='$parent_id' AND parent_id='$_POST[accept]'");
	echo "ACCEPTED";
}
else if(isset($_POST['reject'])) {
	
$req_rej=mysqli_query($conn,"DELETE FROM addfriend WHERE child_id='$parent_id' AND parent_id='$_POST[reject]'");

echo "REJECTED";
}
?>
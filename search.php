<?php
require './dbcon.php';
if(isset($_POST['search'])){
   $search = $_POST['search'];;
   $query = "SELECT pet_name,email,pet_unique_id,powner_name FROM user_inf WHERE pet_name like'%".$search."%' or email like'%".$search."%' limit 6";
   $display = mysqli_query($conn, $query);
   
   $response = array();
   while ($row = mysqli_fetch_array($display))
   {
    $response[] = array("value"=>$row['email'],"label"=>$row['pet_name'],"owner"=>$row['powner_name'],"id"=>$row["pet_unique_id"]);
   }
echo json_encode($response);
   }

?>
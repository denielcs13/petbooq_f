<?php
include("dbcon.php");
session_start();
if ((isset($_SESSION['pet_unique_id']))) {   
   $parent_id=$_SESSION['pet_unique_id'];
}
if ((isset($_SESSION['business_unique_id']))) {   
   $parent_id=$_SESSION['business_unique_id'];
}
if ((isset($_SESSION['ngo_unique_id']))) {   
   $parent_id=$_SESSION['ngo_unique_id'];
}
?>
<?php
$reply=mysqli_real_escape_string($conn,$_POST['reply']);
$uid=mysqli_real_escape_string($conn,$parent_id);
date_default_timezone_set("Asia/Calcutta");
$post_datetime=date('Y-m-d H:i:s');
$im_path="";
$vid_path="";
$im_count=0;
$vid_count=0;
$loc_path = $_SESSION['pet_unique_id']."/post_images/";   
$vid_loc_path =  $_SESSION['pet_unique_id']."/Videos/";
for ($i = 0; $i < count($_FILES['files']['name']); $i++) {
$validextensions = array("jpeg", "jpg", "png","gif","JPEG","JPG","PNG","GIF");      // Extensions which are allowed.
$videoextensions = array("mp4","avi","mpeg","MP4","AVI","MPEG");
$ext = explode('.', basename($_FILES['files']['name'][$i]));   // Explode file name from dot(.)
$file_extension = end($ext); // Store extensions in the variable.
if(in_array($file_extension, $validextensions)) {
	$im_count+=1;
$file_name=$_FILES['files']['name'][$i];
$img_ext = pathinfo($file_name, PATHINFO_EXTENSION);
$target_path = $loc_path . md5(uniqid(rand(), true)) . "." . $img_ext;     
if (in_array($file_extension, $validextensions) && ($_FILES["files"]["size"][$i] < 10000000)) {
if (move_uploaded_file($_FILES['files']['tmp_name'][$i], $target_path)) {
//echo  ').<span id="noerror">Image uploaded successfully!.</span><br/><br/>';
$all_images[$i]=$target_path;

} 
} 
}


	if(in_array($file_extension, $videoextensions)) {
	$vid_count+=1;
	$file_name=$_FILES['files']['name'][$i];
	$vid_ext = pathinfo($file_name, PATHINFO_EXTENSION);
$target_path = $vid_loc_path . md5(uniqid(rand(), true)) . "." . $vid_ext; 

if (move_uploaded_file($_FILES['files']['tmp_name'][$i], $target_path)) {

//echo ').<span id="noerror">Video uploaded successfully!.</span><br/><br/>';
$all_videos[$i]=$target_path;
mysqli_query($conn,"INSERT INTO videoupload(uniqueid,video_name,video_type,image_path)VALUES('$uniqueid','$file_name','$vid_type','$target_path')");
}	 
}

}

if($im_count>0) {
$im_path=implode(',',$all_images);
}
if($vid_count>0) {
$vid_path=implode(',',$all_videos);
}

if($im_count==0 && $vid_count==0) {
$user_one=mysqli_real_escape_string($conn,$parent_id);
$user_two=mysqli_real_escape_string($conn,$_POST['msg_id']);
if($user_one!=$user_two)
{
$q= mysqli_query($conn,"SELECT c_id FROM conversation WHERE (user_one='$user_one' and user_two='$user_two') or (user_one='$user_two' and user_two='$user_one') ") or die(mysql_error());
//date_default_timezone_set("Asia/Calcutta");
$time=date('Y-m-d H:i:s');
$ip=$_SERVER["REMOTE_ADDR"];
if(mysqli_num_rows($q)==0) 
{ 
$q1 = "INSERT INTO conversation (user_one,user_two,ip,time) VALUES ('$user_one','$user_two','$ip','$time')";
//print_r($v['c_id']);
if ($conn->query($q1) === TRUE) 
    {
                    $last_id = $conn->insert_id;
                    echo $last_id;
                    $q= mysqli_query($conn,"INSERT INTO conversation_reply (user_id_fk,reply,ip,time,c_id_fk) VALUES ('$uid','$reply','$ip','$time','$last_id')") or die(mysqli_error());
    }

}
else
{
$q=mysqli_query($conn,"SELECT c_id FROM conversation WHERE user_one='$user_one' or user_two='$user_one' ORDER BY c_id DESC limit 1");
$v=mysqli_fetch_array($q,MYSQLI_ASSOC);
//return $v['c_id'];
$q= mysqli_query($conn,"INSERT INTO conversation_reply (user_id_fk,reply,ip,time,c_id_fk) VALUES ('$uid','$reply','$ip','$time','$v[c_id]')") or die(mysqli_error());
}
}
//$savepost="INSERT INTO post(child_post_id,title,posts,url,time)VALUES('$uniqueid','$title','$description','$addlink','$post_datetime')";
//$q= mysqli_query($conn,"INSERT INTO conversation_reply (user_id_fk,reply,ip,time,c_id_fk) VALUES ('$uid','$reply','$ip','$time','$v[c_id]')") or die(mysqli_error());
}
else {
	$savepost="INSERT INTO post(child_post_id,title,posts,url,image,img_count,video,vid_count,time)VALUES('$uniqueid','$title','$description)','$addlink','$im_path','$im_count','$vid_path','$vid_count','$post_datetime')";
}
//mysqli_query($conn,$savepost);	
//echo $im_count."--".$vid_count;






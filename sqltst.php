<?php
session_start();
require 'dbcon.php';

$pmqry=mysqli_query($conn,"SELECT * FROM post_media");
WHILE($pm=mysqli_fetch_assoc($pmqry)) {
$pid=explode("/", $pm['image']);
$uid=$pid['0'];

$info   = getimagesize($pm['image']);
$mime   = $info['mime'];

$insqry=mysqli_query($conn,"INSERT INTO uploadimages(uniqueid,image_name,image_type,image_path)VALUES ('$uid','$pid[2]','$mime','$pm[image]')");
}
?>
<script>
var sessn= <?php echo json_encode($_SESSION) ?>;
//alert(sessn.pet_unique_id);
</script>

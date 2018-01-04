<?php
session_start();
require './dbcon.php';
if ((isset($_SESSION['pet_unique_id']))) {   
   $parent_id=$_SESSION['pet_unique_id'];
}
if ((isset($_SESSION['business_unique_id']))) {   
   $parent_id=$_SESSION['business_unique_id'];
}
if ((isset($_SESSION['ngo_unique_id']))) {   
   $parent_id=$_SESSION['ngo_unique_id'];
}
if(isset($_GET['id'])) {
	$parent_id=$_GET['id'];
	                 }
	  else {
        $parent_id = $parent_id;
                 }
?>
<html>
<?php require_once 'inc/head-content.php';  ?>
<style>
.usr-cnct-l .unfriend-btn {
	background:#5785e0;
	padding:4px;
}
</style>
<body>
<?php require_once 'inc/header_11.php';  ?>

<div class="main-content user-pro-dtls-page usr-feed-page-nw friend-list-page friend-listing-page ">
<div class="main-content-inn col-three main-content-full">
<div class="col-first-side">
                    <?php
                                $alrt='';
                                $error="";
                                if (isset($_POST["sub"])) {
                                   
                                    $page_name = $_POST['page_name'];
                                    $banner_name = $_FILES["banner"]["name"];
                                    $heading = $_POST["heading"];
                                    $description = $_POST["description"];
                                    $linkdestionation = $_POST["linkdestionation"];
                                    $filetmp = $_FILES["banner"]["tmp_name"];
                                    if($_POST['page_name'] != '' && $_POST['heading'] !='' && $_POST['description'] != '')
                                     {
                                    
                                    $fileData = pathinfo(basename($_FILES["banner"]["name"]));
                                    $fileName = uniqid() . '.' . $fileData['extension']; 
                                    
                                    $random_numbers = rand(1111111, 9999999);
                                   
                                    
                                    $target_path = "ads/" . $fileName;
                                    if (move_uploaded_file($_FILES['banner']['tmp_name'], $target_path)) {
                                        require './dbcon.php';
                                        $files = "ads/".$fileName;
                                        $banner_insert = "insert into ads(client_name,banner_image,heading,description,link)values('$page_name','$files','$heading','$description','$linkdestionation')";
                                        
                                        $sqll=mysqli_query($conn, $banner_insert);
                                        if($sqll>0){
                                        $alrt= "Your Ads Created Successfully";
                                        //header("location: creates_ads.php");
                                     }
                                    }
                                     else
                                     {
                                     
                                     $error = "Please fill all details";
                                     }
                                    }
                                }
                                ?>
                <?php require_once 'inc/user_profile_sidebar.php'; ?>   
                <?php require_once 'inc/side-bar.php'; ?>
                </div>
<div class="main-content-inn-left">
<div class="col-first">

<div class="two-col-post">
<h2 class="fr-heading">Friends</h2>
    <?php
//session_start();
//$parent_id = $_SESSION["pet_unique_id"];
$display2 = "SELECT user_inf.pet_name,user_inf.pet_unique_id,user_inf.profile_pic,addfriend.parent_id as sender,addfriend.child_id as recepient,addfriend.status FROM addfriend JOIN user_inf ON addfriend.child_id = user_inf.pet_unique_id WHERE addfriend.parent_id ='$parent_id' and addfriend.status = '1' UNION SELECT user_inf.pet_name,user_inf.pet_unique_id,user_inf.profile_pic,addfriend.child_id as sender,addfriend.parent_id as recepient,addfriend.status FROM addfriend JOIN user_inf ON addfriend.parent_id = user_inf.pet_unique_id WHERE addfriend.child_id ='$parent_id' and addfriend.status = '1'";
$show_result = mysqli_query($conn, $display2);
if (mysqli_num_rows($show_result)) {

            ?>

    <?php while ($row = mysqli_fetch_assoc($show_result)) {
                                ?>
                                <div class="left friend-box">
                                <div class="post-in-c">
									<div class="fr-left">
									<div class="fri-image">
										<a href="about3.php?id=<?= $row['pet_unique_id'] ?>">
											<?php if($row['profile_pic']=="") {
																echo "<img class='photo' src='images/fr-pro-big-img.jpg'>";
																}
																else {
																?>
																<img class="photo"  alt="" src="<?= $row['profile_pic'] ?>">
																<?php } ?>
										</a>
									</div>
									</div>
									<div class="fr-right">
									<div class="fri-name">
									<p class="ttl-lks"><a href="about3.php?id=<?= $row['pet_unique_id'] ?>"><?= $row['pet_name'] ?></a></p>
									</div>

									<div class="usr-cnct-l">
									<h3>Friend</h3>
									<button class="unfriend-btn" id="<?= $row['pet_unique_id'] ?>">Unfriend</button>
									</div>

									</div>
									</div>
									</div>
     <?php
                            }
                        }
                        ?> 

</div>
</div>
<script type="text/javascript">
        
           $(document).on('click', '.unfriend-btn', function () {
                var fr_id = $(this).attr("id");
              $.ajax({
                    url: "post-functions.php",
                    type: "POST",
                    data: {unfriend: fr_id},
                    cache: false,
                    success: function (data)
                    {

                      $('#'+fr_id+'.unfriend-btn').closest('.friend-box').fadeOut(1000);
						
						
                    },
                    error: function ()
                    {

                    }
                });
            });
        </script>
<?php require_once 'inc/ads_sidebar_d.php'; ?>
</div>
</div>
</div>
<link rel="stylesheet" href="css/packery-docs.css" media="screen" />
<script src="js/packery-docs.min.js"></script>
<?php require_once 'inc/footer.php';  ?>
</body>
</html>
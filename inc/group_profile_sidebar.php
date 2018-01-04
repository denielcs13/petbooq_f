<?php
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
			$group_id=$_GET['id'];
		}
		else {
        $group_id= $_SESSION['last_id'];
           
		}
				$grpqry=mysqli_query($conn,"SELECT * FROM groups WHERE group_id='$group_id'");
				$grpinfo=mysqli_fetch_assoc($grpqry);
				$desc=$grpinfo['group_desc'];
		    ?>
				<div class="pro-pic-sec  pet-info-n">
<div class="pht"><?php if($grpinfo['gr_profile_pic']=="") {
							echo "<img src='images/fr-pro-big-img.jpg'>";
							}
							else {
							?>
							<img src="<?= $grpinfo['gr_profile_pic'] ?>" alt="user image" />
							<?php } ?>

						</div>
<div class="pet-info">
<p><h2 class="group-title"> <?= $grpinfo['group_name']; ?></h2></p>
</div>

<div class="pet-info pet-info-b">
    <p class="group-desc"><?php echo substr($desc, 0, 200) ?> </p>
</div>
</div>
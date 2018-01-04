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
                              
				$profileqry=mysqli_query($conn,"SELECT * FROM user_inf WHERE pet_unique_id='$parent_id'");
				$profileinfo=mysqli_fetch_assoc($profileqry);
				
		    ?>
				<div class="pro-pic-sec">
<div class="pht"><?php if($profileinfo['profile_pic']=="") {
							echo "<img src='images/fr-pro-big-img.jpg'>";
							}
							else {
							?>
							<img src="<?= $profileinfo['profile_pic'] ?>" alt="user image" />
							<?php } ?>
<div class="usr-cnct-l"><a href="profile-edit1.php" class="edit"><i class="fa fa-edit"></i>  Update Profile Picture</a></div>
						</div>
<div class="pet-info">
<p><strong><span class="img-icon"><img src='images/pet-img-icon.png'></span> <span class="label">Pet Name :</span> <span class="u-n-d"><?= $profileinfo['pet_name']; ?></span></strong> </p>
</div>
<div class="pet-info">
<p><strong><span class="img-icon"><img src='images/dob-img.png'></span> <span class="label">DOB :</span> <span class="u-n-d blc"><?= $profileinfo['dob']; ?></span></strong> </p>
</div>
<div class="pet-info">
<p><strong><span class="img-icon"><img src='images/pet-owner-img.png'></span> <span class="label">Owner :</span> <span class="u-n-d"><?= $profileinfo['powner_name']; ?></span></strong> </p>
</div>
</div>
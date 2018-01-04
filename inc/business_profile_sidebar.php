<?php
session_start();
 require './dbcon.php';
                                $parent_id = $_SESSION['business_unique_id'];
                                 $profileqry=mysqli_query($conn,"SELECT * FROM business WHERE business_uniqueid ='$parent_id'");
                                   
				$profileinfo=mysqli_fetch_assoc($profileqry);
				
		    ?>
				<div class="pro-pic-sec">
                                <div class="pht"><?php if($profileinfo['profile_image']=="") {
							echo "<img src='images/fr-pro-big-img.jpg'>";
							}
							else {
							?>
							<img src="<?= $profileinfo['profile_image'] ?>" alt="user image" />
							<?php } ?>
							<div class="usr-cnct-l">
<a href="bus-edit.php" class="edit"><i class="fa fa-edit"></i>  Update Profile Picture</a></div>
						</div>
<div class="pet-info">
<p><strong>
<span class="img-icon"><img src="images/company-icon.png"></span>
<span class="label">Company :</span>
<span class="u-n-d"><?= $profileinfo['company_name']; ?></span></strong></p>
</div>
<div class="pet-info">
<p><strong>
<span class="img-icon"><img src="images/business-icon.png"></i></span> 
<span class="label">Business :</span> 
<span class="u-n-d"><?= $profileinfo['business_type']; ?></span>
</strong></p>
</div> 
<div class="pet-info">
<p><strong>
<span class="img-icon"><img src="images/user-name-img.png"></span>
<span class="label">Phone:</span>
<span class="u-n-d"><?= $profileinfo['phone']; ?></span>
</strong></p>
</div>
</div>
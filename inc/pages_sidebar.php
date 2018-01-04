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
                              
				$pageqry=mysqli_query($conn,"SELECT * FROM pages WHERE page_id='$_GET[id]'");
				$pageinfo=mysqli_fetch_assoc($pageqry);
				
		    ?>
				<div class="pro-pic-sec  pet-info-n">
<div class="pht"><?php if($pageinfo['pg_profile_pic']=="") {
							echo "<img src='images/fr-pro-big-img.jpg'>";
							}
							else {
							?>
							<img src="<?= $pageinfo['pg_profile_pic'] ?>" alt="user image" />
							<?php } ?>

						</div>
<div class="pet-info">
<p><h2 class="group-title"> <?= $pageinfo['page_name']; ?></h2></p>
</div>

<div class="pet-info pet-info-b">
<p class="group-desc"><?= $pageinfo['page_desc']; ?> </p>
</div>
</div>
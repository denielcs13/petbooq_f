<?php
                             
				$profileqry=mysqli_query($conn,"SELECT * FROM business WHERE business_uniqueid='$parent_id'");
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
<span class="u-n-d"><?= $profileinfo['company_name']; ?></span> 
</strong> 
</p>
</div>
<div class="pet-info">
<p><strong>
<span class="img-icon"><img src="images/globe-icon.png"></span>
<span class="label">Website :</span>
<a href="<?= $profileinfo['website']; ?>" target="_blank"><span class="u-n-d"><?= $profileinfo['website']; ?></span></a>
</strong> 
</p>
</div>
<div class="pet-info">
<p><strong>
<span class="img-icon"><img src="images/business-icon.png"></span> 
<span class="label">Business :</span> 
<span class="u-n-d"><?= $profileinfo['business_type']; ?></span>
</strong> 
</p>
</div>
<div class="pet-info">
<p><strong>
<span class="img-icon"><img src="images/description-icon.png"></span> 
<span class="label">Description :</span> 
<span class="u-n-d"><?= $profileinfo['description']; ?></span>
</strong> 
</p>
</div>

</div>
<div class="pro-right-sec">
	<div class="sidebar">
	<h2 class="fr-headnig">
	<div class="fr-headnig-l">
	<span class="user-icn-img">
	<a href="javascript:">
	<div class="plus-i"><img src="images/plus-icon.png" alt="" /></div>
	<p class="user-nm">Short Cut</p>
	</a>
	</span>
	</div>
	</h2>
	<ul>
		<li><a href="my-favourite.php">
		<span class="icn"><img src="images/li-fav-icon.png" alt="" /></span>
		<span class="si-anc-t">My Favourite</span></a>
		</li>
		<li><a href="page-lists.php">
		<span class="icn"><img src="images/pet-page-img.png" alt="" /></span>
		<span class="si-anc-t">Pages</span></a>
		</li>
		<li><a href="group-lists.php"><span class="icn"><img src="images/pet-group-img.png" alt="" /></span><span class="si-anc-t">Groups</span></a></li>
		<li><a href="event-lists.php"><span class="icn"><img src="images/pet-event-img.png" alt="" /></span><span class="si-anc-t">Events</span></a></li>
		<li><a href="creates_ads.php"><span class="icn"><img src="images/create-ad-img.png" alt="" /></span><span class="si-anc-t">Create Ads</span></a></li>
		<li><a href="pet-rehome-form.php"><span class="icn"><img src="images/pet-rehome-img.png" alt="" /></span><span class="si-anc-t">ReHome a Pet</a></li>
		<li><a href="adopt-pet.php"><span class="icn"><img src="images/pet-adopt-img.png" alt="" /></span><span class="si-anc-t">Adopt a Pet</span></a></li>
		<li><a href="pet-mate.php"><span class="icn"><img src="images/pet-mate-icon.png" alt="" /></span><span class="si-anc-t">Pet Mate</span></a></li>
	</ul>
	</div>
</div>

<div class="pet-reh fr-list">
<h2 class="fr-headnig">
	<div class="fr-headnig-l">
	<span class="user-icn-img">
	<a href="rehome-list.php">
	<div class="plus-i"><img src="images/pet-rehome-img.png" alt="" /></div>
	<p class="user-nm">ReHome a Pet</p>
	</a>
	</span>
	</div>
	</h2>

<div class="p-sd-content">
                           <?php
                             $ip_addr=$_SERVER['REMOTE_ADDR'];
			
			$qry=file_get_contents('http://freegeoip.net/json/'.$ip_addr);
			//echo $qry;
			$res=json_decode($qry);
			$country = $res->country_name;
			//print_r($country);
                        
                            $display_rehome = "SELECT * FROM  `pet_rehome` where country = '$country' and  status = 1 ORDER BY RAND() LIMIT 3 ";
                            $results = mysqli_query($conn, $display_rehome);
                            while ($row = mysqli_fetch_array($results)) {
                                $description = $row["about_pet"];
                                ?> 
<div class="p-sd-box">
    <div class="pt-image"><a href="rehome-about.php?id=<?php echo $row["id"] ?>">
    <?php
                                    if ($row['pet_photo'] == "") {
                                        echo "<img src='images/user_image09.jpg' />";
                                    } else {
                                        ?>
                                        <img src="<?= $row['pet_photo'] ?>" alt="user image" />
                                    <?php } ?>
        </a></div>
<div class="pt-content-btm">
<div class="pt-anc">
<div class="pt-anc-l"><a href="rehome-about.php?id=<?php echo $row["id"] ?>"><?php echo $row["pet_name"] ?></a></div>
<div class="pt-anc-r"><a href="#" class="rpl">Available</a></div>
</div>
<div class="pt-dsc">
<p>
<?php echo substr($description, 0, 80) ?>
</p>
</div>
</div>
</div>
    <?php
                            }
                            ?>
</div>
</div>
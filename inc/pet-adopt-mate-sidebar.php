<div class="pet-reh fr-list">


<h2 class="fr-headnig">
	<div class="fr-headnig-l">
	<span class="user-icn-img">
	<a href="adopt-list.php">
	<div class="plus-i"><img src="images/pet-page-img.png" alt="" /></div>
	<p class="user-nm">Adopt a Pet</p>
	</a>
	</span>
	</div>
	</h2>
<div class="p-sd-content">
                            <?php
                            $ip_addr=$_SERVER['REMOTE_ADDR'];
			    $qry=file_get_contents('http://freegeoip.net/json/'.$ip_addr);
			    $res=json_decode($qry);
			    $country = $res->country_name;
			
                           
                            require './dbcon.php';
                            $display_rehome = "SELECT * FROM  `adopt_pet` where country = '$country' and status = 1 ORDER BY RAND() LIMIT 4";
                            $results = mysqli_query($conn, $display_rehome);
                            while ($row = mysqli_fetch_array($results)) {
                                $description = $row["about_pet"];
                                ?> 
<div class="p-sd-box">
<div class="pt-image"><a href="adopt-about.php?id=<?php echo $row["id"] ?>"><?php
                                    if ($row['pet_photo'] == "") {
                                        echo "<img src='images/user_image09.jpg' />";
                                    } else {
                                        ?>
                                        <img src="<?= $row['pet_photo'] ?>" alt="user image" />
                                    <?php } ?></a></div>
<div class="pt-content-btm">
<div class="pt-anc">
<div class="pt-anc-l"><a href="adopt-about.php?id=<?php echo $row["id"] ?>"><?php echo $row["pet_name_adopt"] ?></a></div>
<div class="pt-anc-r"><a href="#" class="rpl">Avaliable</a></div>
</div>
<div class="pt-dsc">
<p>
<?php echo substr($description, 0, 45) ?>...
</p>
</div>
</div>
</div>
    <?php
                            }
                            ?>
</div>
</div>

<div class="pet-reh fr-list pet-reh-btm">


<h2 class="fr-headnig">
	<div class="fr-headnig-l">
	<span class="user-icn-img">
	<a href="mate-list.php">
	<div class="plus-i"><img src="images/pet-mate-icon.png" alt="" /></div>
	<p class="user-nm">Pet Mate</p>
	</a>
	</span>
	</div>
	</h2>
<div class="p-sd-content">
                            <?php
                            $ip_addr=$_SERVER['REMOTE_ADDR'];
			    $qry=file_get_contents('http://freegeoip.net/json/'.$ip_addr);
			    $res=json_decode($qry);
			    $country = $res->country_name;
			
			
                            
                            require './dbcon.php';
                            $display_rehome = "SELECT * FROM  `pet_meet` where country = '$country' and status=1 ORDER BY RAND() LIMIT 4";
                           
                            $results = mysqli_query($conn, $display_rehome);
                            while ($row = mysqli_fetch_array($results)) {
                                $description = $row["about_pet"];
                                ?> 
<div class="p-sd-box">
<div class="pt-image"><a href="mate-about.php?id=<?php echo $row["id"] ?>"><?php
                                    if ($row['pet_photo'] == "") {
                                        echo "<img src='images/user_image09.jpg' />";
                                    } else {
                                        ?>
                                        <img src="<?= $row['pet_photo'] ?>" alt="user image" />
                                    <?php } ?></a></div>
<div class="pt-content-btm">
<div class="pt-anc">
<div class="pt-anc-l"><a href="mate-about.php?id=<?php echo $row["id"] ?>"><?php echo $row["pet_name"] ?></a></div>
<div class="pt-anc-r"><a href="#" class="rpl">Avaliable</a></div>
</div>
<div class="pt-dsc">
<p>
<?php echo substr($description, 0, 45) ?>...
</p>
</div>
</div>
</div>
<?php
                            }
                            ?>
</div>
</div>
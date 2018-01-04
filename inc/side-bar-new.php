<?php require_once 'inc/side-bar.php'; ?>
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
			//echo $ip_addr;
			// $qry=file_get_contents('http://ip-api.com/php/'.$ip_addr);
			$qry=file_get_contents('http://freegeoip.net/json/'.$ip_addr);
			//echo $qry;
			$res=json_decode($qry);
			$country = $res->country_name;
			//print_r($country);
                          
                            $parent_id = $_SESSION['pet_unique_id'];
                            require './dbcon.php';
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
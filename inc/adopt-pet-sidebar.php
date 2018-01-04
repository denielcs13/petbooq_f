<div class="pet-reh fr-list adp-pet-sideb">
<h2 class="fr-headnig">
	<div class="fr-headnig-l">
	<span class="user-icn-img">
	<a href="adopt-list.php">
	<div class="plus-i"><img src="images/pet-page-img.png" alt=""></div>
	<p class="user-nm">Adopt a Pet</p>
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
                            
                            $parent_id = $_SESSION['pet_unique_id'];
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
<?php echo substr($description, 0, 100) ?>
</p>
</div>
</div>
</div>
    <?php
                            }
                            ?>
</div>
</div>
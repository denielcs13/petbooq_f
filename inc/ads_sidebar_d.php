<div class="col-third   animated fadeInRight">
<div class="ltst-arc">
                        <div class="ads-arc">
                            <h2 class="fr-headnig">
	<div class="fr-headnig-l">
	<span class="user-icn-img">
	<a href="javascript:">
	<div class="plus-i"><img src="images/sponsored-icon.png" alt=""></div>
	<p class="user-nm">Sponsored Ads</p>
	</a>
	</span>
	</div>
	</h2>
                            <?php
                            	$ip_addr=$_SERVER['REMOTE_ADDR'];
				//echo $ip_addr;
				// $qry=file_get_contents('http://ip-api.com/php/'.$ip_addr);
				$qry=file_get_contents('http://freegeoip.net/json/'.$ip_addr);
				//echo $qry;
				$res=json_decode($qry);
				$country = $res->country_name;
				//print_r($country);
			 
                            require './dbcon.php';
                            $display_banner = "select * from ads where country = '$country' and stauts = '1' order by RAND() LIMIT 3";
                            $results = mysqli_query($conn, $display_banner);
                            while ($row = mysqli_fetch_array($results)) {
                                $description = $row["description"];
                                $link = $row["link"];
                                //print_r($link);die;
                                ?>
                                
                                <div class="post-row">
									<a href="<?php echo $row["link"]?>" target="_blank">
                                    <div class="post-rw-hld">
                                        <div class="post-img"><img src="<?php echo $row["banner_image"] ?>" alt=""></div>
                                        <div class="post-content">
                                            <h2><p class="user-nm"><?php echo $row["heading"] ?></p></h2>
                                            <p class="pst-text"><?php echo substr($description, 0, 100) ?></p>
                                        </div>
                                    </div>
									</a>
                                </div>
                              
                            <?php
                            }
                            ?>
                        </div>
                        </div>
                       <script>
                        function loadlink(){
                        $('.ads-arc').load(document.URL + ' .ads-arc');
                         }

                        loadlink(); 
                        setInterval(function(){
                        loadlink() 
                        }, 120000);
                        </script>
</div>

<?php

$count = 1;
 WHILE($postres=mysqli_fetch_assoc($disprun))  {
$postnameqry=mysqli_query($conn,"SELECT COALESCE((SELECT pet_name FROM user_inf WHERE pet_unique_id='$postres[child_post_id]'),(SELECT company_name FROM business WHERE business_uniqueid='$postres[child_post_id]'),(SELECT ngo_name FROM ngo_resgitration WHERE ngo_unique_id='$postres[child_post_id]')) AS pname");
	$postnameres=mysqli_fetch_assoc($postnameqry);
	
								
         $par_name=mysqli_query($conn,"SELECT pet_name,pet_unique_id,profile_pic,'user_inf' as source FROM user_inf WHERE pet_unique_id='$postres[child_post_id]' UNION SELECT company_name,business_uniqueid,profile_image,'business' as source FROM business WHERE business_uniqueid='$postres[child_post_id]' UNION SELECT ngo_name,ngo_unique_id,profile_image,'ngo_resgitration' as source FROM ngo_resgitration WHERE ngo_unique_id='$postres[child_post_id]'");
								$pname_res=mysqli_fetch_assoc($par_name);
								$imcount=$postres['img_count'] + $postres['vid_count'];
								?>
								
                                <div class="one-col-post" id="<?= $postres['id'] ?>">
                                    <div class="one-col-inn">
                                        <div class="post-in-c">
										<div class="post-content">
										<h2>
										<span class="user-icn-img">
										<?php if($pname_res['profile_pic']=="") {
							echo "<img src='images/fr-pro-big-img.jpg'>";
							} 
							else {
							?>
							<img src="<?= $pname_res['profile_pic']  ?>" alt="user image" />
							<?php } ?>
							</span>
							
							<p class="user-nm">
							<?php if($pname_res['source']=='user_inf') { ?>
							<a href="about3.php?id=<?= $pname_res['pet_unique_id'] ?>">
							<?= $postnameres['pname']  ?>
							</a>
							<?php } if($pname_res['source']=='business') { ?>
							<a href="business-page-new-user.php?id=<?= $pname_res['pet_unique_id'] ?>">
							<?= $postnameres['pname']  ?>
							</a>
							<?php } if($pname_res['source']=='ngo_resgitration') { ?>
							
							<a href="ngo-page-new-user.php?id=<?= $pname_res['pet_unique_id'] ?>">
							<?= $postnameres['pname']  ?>
							</a>
							
							<?php } ?>
							</p>
							</h2>
							
							<?php if($postres['wall_post_id']==$parent_id) {
								echo "<span class='wall-post-ttl'>Posted on Your Wall</span>";
							}
							if($postres['type']=='shared') {
								echo "<span class='share-heading'><b>Shared a post with you</b></span>";
							}
							
							          
								?>
							
			<?php if($postres['url']=='') { ?>				
		 
		 
		 <h3><?= $postres['title'] ?></h3>
		 <p class="pst-text"><?= $postres['posts'] ?><p>
		
		
			<?php } else { ?>
			<a href="http://<?= $postres['url'] ?>" target="_blank">
		 
		 <h3><?= $postres['title'] ?></h3>
		 <p class="pst-text"><?= $postres['posts'] ?><p>
		
		</a>
			<?php } ?>
										</div>
                 	
                                          
<div class="post-image post-video">
<div class="post-mul-image">
<div class="post-mul-image">

<ul id="post-media" data-count="<?= $imcount ?>">
<?php if($postres['img_count'] > 0) { 
$post_images=explode(",",$postres['image']); 

for($i=0;$i<count($post_images); $i++) { 
?>
	
<li class="pb-image-box">
<a href="aj.php?id=<?= $postres['id'] ?>&im=<?= urlencode($post_images[$i]) ?> .ajcontent" data-featherlight="ajax">
<img class="photo" src="<?= $post_images[$i] ?>">
</a>
</li>


<?php 

} } ?>


<?php
if($postres['vid_count']>0) {
	$post_videos=explode(",",$postres['video']);
	for($i=0;$i<count($post_videos);$i++) { 
?>

<li class="pb-image-box">
<a href="aj.php?id=<?= $postres['id'] ?>&vid=<?= urlencode($post_videos[$i]) ?> .ajcontent" data-featherlight="ajax">
<video controls>
<source src="<?= $post_videos[$i] ?>" type="video/mp4">
</video>
</a>
</li>


<?php } } ?>
	

</ul>
</div>

</div>
</div>

<script>
$(document).ready(function() {
$('video').removeAttr('autoplay');
});
</script>                                 
											<?php
											$likecount=mysqli_query($conn,"SELECT * FROM likes WHERE post_id='$postres[id]'");
												$likenum=mysqli_num_rows($likecount);
												?>
                                            <div class="post-content">
                                            
         
		
                                                <p class="ttl-lks">
		<?php $user_like=mysqli_query($conn,"SELECT * FROM likes WHERE post_id='$postres[id]' AND liker_unique_id='$parent_id'"); 
										if(mysqli_num_rows($user_like) > 0) {     ?>
												<img src='images/pet-like-icon.png' alt='' />
										<?php } else { ?>
										
										<?php } ?>
												
												<span class="number-likes<?= $postres['id'] ?>"><?= $likenum ?></span> Likes</p>
<!--Social sharing code start here-->
<!--Facebook-->
<?php
   $actual_link = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; 
   echo '<iframe class="facebook-shr" src="https://www.facebook.com/plugins/share_button.php?href=http%3A%2F%2Fpetbooq.com%2Fshowpst.php?pid='.$postres['id'].'&layout=button&size=small&mobile_iframe=true&appId=1369234256522197&width=59&height=20" width="59" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>';
?>

 
<!--Facebook sharing code end here--> 
<!--Pintrest sharing code end here-->
<a href='javascript:void((function()%7Bvar%20e=document.createElement(&apos;script&apos;);e.setAttribute(&apos;type&apos;,&apos;text/javascript&apos;);e.setAttribute(&apos;charset&apos;,&apos;UTF-8&apos;);e.setAttribute(&apos;src&apos;,&apos;http://assets.pinterest.com/js/pinmarklet.js?r=&apos;+Math.random()*99999999);document.body.appendChild(e)%7D)());'><img src='http://www.brandaiddesignco.com/insights/PinIt.png'/></a>
<!--Social sharing code end here-->
 

                                            </div>




                                            <div class="post-act-btn">

                                                <div class="post-act-ins">
												
                                                    <?php
											$likeqry=mysqli_query($conn,"SELECT * FROM likes WHERE post_id='$postres[id]' AND liker_unique_id='$parent_id'");
												$likecount=mysqli_num_rows($likeqry);
												
													if($likecount > 0) {	
													?>
					<button class="post-like-button liked" id="<?= $postres['id'] ?>"><span class='p-act-bt'>Unlike</span></button>
												<?php }
												else {
													?>
					<button class="post-like-button" id="<?= $postres['id'] ?>"> <span class='p-act-bt'>Like</span></button>
												<?php } ?>
													
													
                                                    <button class="post-comment-btn" id="<?= $postres['id'] ?>">
<img src='images/comment-img.png' alt='' /> <span class='p-act-bt'>Comment</span></button>
													
                                                    <button class="post-share-btn" id="<?= $postres['id'] ?>">
<img src='images/post-share-icon.png' alt='' /> <span class='p-act-bt'>Share</span></button>
													
                                                </div>
												
												<div class="comment-head"><h3><img src="images/comment-img.png" alt=""> Comments:</h3></div>
								
												<div class="comment-area">
												<?php
												
								$commentqry=mysqli_query($conn,"SELECT * FROM comments WHERE post_id='$postres[id]' LIMIT 6");
								
												if(mysqli_num_rows($commentqry)>0) {
													WHILE($commentresult=mysqli_fetch_assoc($commentqry)) {
	$commentr=mysqli_query($conn,"SELECT pet_name,profile_pic,pet_unique_id FROM user_inf WHERE pet_unique_id='$commentresult[commenter_unique_id]' UNION SELECT company_name,profile_image,business_uniqueid FROM business WHERE business_uniqueid='$commentresult[commenter_unique_id]' UNION SELECT ngo_name,profile_image,ngo_unique_id FROM ngo_resgitration WHERE ngo_unique_id='$commentresult[commenter_unique_id]'");
	
	$cmntr=mysqli_fetch_assoc($commentr);
														?>
														
													<div class="user-comments">
													<span class="user-icn-img">
													<?php if($cmntr['profile_pic']=='') { ?>
										
						<img src="images/fr-pro-big-img.jpg" alt="user image">
													<?php } else { ?>
										
										
							<span class="user-icn-img"><img src="<?= $cmntr['profile_pic'] ?>" alt="user image" /></span>
							
													<?php } ?>
													</span>
						<div class="cmnt-text"><a href='about3.php?id=<?= $cmntr['pet_unique_id'] ?>'><?= $cmntr['pet_name']?></a>
							<span class="cmmnt-t"><?= $commentresult['comment'] ?></span></div>
														</div>
													
													<?php
													}	
												}
					$commentcount=mysqli_query($conn,"SELECT * FROM comments WHERE post_id='$postres[id]'");
											if(mysqli_num_rows($commentcount)>6) {
											?>
											
											<a href="#" id="comment-load">More</a>
											<?php
											}
												
												?>
												
												<div class="post-comment-box" id="<?= $postres['id'] ?>" style="display:none;">
												<textarea class='comment-box' placeholder='Enter your comments'></textarea><button class='comment-submit'>Submit</button>
												</div>
												
												</div>                                     </div>
                                        </div>
                                    </div>
									
									
									
                                </div> 
							<?php if( $count % 3 == 0 ){ ?>
		<div class="ads">
<h2 class="sp-h-ads">Sponsored Ads</h2>	
<div class="sp-hr-ads">
					
                                    <?php
                                    $ip_addr=$_SERVER['REMOTE_ADDR'];
				    $qry=file_get_contents('http://freegeoip.net/json/'.$ip_addr);
				    $res=json_decode($qry);
				    $country = $res->country_name;
			
	                            require './dbcon.php';
	                            $display_banner = "select * from ads where country = '$country' and stauts = '1' order by RAND() LIMIT 3";
	                            $results = mysqli_query($conn, $display_banner);
	                            while ($row = mysqli_fetch_array($results)) {
	                            $description = $row["description"];
	                            $link = $row["link"];
                                    ?>
       <div class="one-col-post-ads">
       <a href='<?php echo $row["link"]?>' target='_blank'>
        <div class="one-col-inn">                 
            <div class="post-in-c">
                <div class="post-content">

<div class="post-img"><img src="<?php echo $row["banner_image"] ?>" alt=""></div>
<h2><p class="pst-text"><?php echo $row["heading"] ?></p></h2>
<p class="pst-text"><?php echo substr($description, 0, 100)?></p>
</div>
</div>
</div>
</a>
</div>
                         <?php
                       } ?>
					   </div></div>
					   <?php 
                         }
                     ++$count;
                        ?>
		
<?php   
                        }
		    ?>
					
		                <script>
                        function loadlink(){
                        $('.ads').load(document.URL + ' .ads');
                         }

                        loadlink(); 
                        setInterval(function(){
                        loadlink() 
                        }, 120000);
                        </script>	

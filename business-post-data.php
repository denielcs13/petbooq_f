<?php
$count = 1;
WHILE ($postres = mysqli_fetch_assoc($disprun)) {

 $par_name = mysqli_query($conn, "SELECT * FROM business WHERE business_uniqueid='$postres[child_post_id]'");
    
    //    $par_name = mysqli_query($conn,"SELECT pet_name, profile_pic, pet_unique_id
//                                    FROM user_inf
//                                    WHERE pet_unique_id =  '$postres[child_post_id]'
//                                    UNION SELECT company_name, profile_image, business_uniqueid
//                                    FROM business
//                                    WHERE business_uniqueid =  '$pos$postres[child_post_id]'
//                                    UNION SELECT ngo_name, profile_image, ngo_unique_id
//                                    FROM ngo_resgitration
//                                    WHERE ngo_unique_id =  '$postres[child_post_id]'");
    $pname_res = mysqli_fetch_assoc($par_name);
    $imcount = $postres['img_count'] + $postres['vid_count'];
    ?>

    <div class="one-col-post" id="<?= $postres['id'] ?>">
        <div class="one-col-inn">
            <div class="post-in-c">
                <div class="post-content">
                    <h2><span class="user-icn-img">
					<?php
    if ($pname_res['profile_image'] == "") {
        echo "<img src='images/fr-pro-big-img.jpg'>";
    } else {
        ?>
                                <img src="<?= $pname_res['profile_image'] ?>" alt="user image" />
                            <?php } ?></span><p class="user-nm"><a href="about3.php?id=<?= $pname_res['pet_unique_id'] ?>"><?= $userinf['company_name'] ?></a></p></h2>
                    <h3><?= $postres['title'] ?></h3>
                    <span class="post-link"><a href="http://<?= $postres['url'] ?>" target="_blank"><?= $postres['url'] ?></a></span>
                    <p class="pst-text"><?= $postres['posts'] ?></p>
                </div>


                <div class="post-image post-video">
                    <div class="post-mul-image">
                        <div class="post-mul-image">

                            <ul id="post-media" data-count="<?= $imcount ?>">
    <?php
    if ($postres['img_count'] > 0) {
        $post_images = explode(",", $postres['image']);
        for ($i = 0; $i < count($post_images); $i++) {
            ?>

                                        <li class="pb-image-box">
                                            <a href="aj_business.php?id=<?= $postres['id'] ?>&gid=<?= $_GET['id'] ?>&im=<?= $post_images[$i] ?> .ajcontent" data-featherlight="ajax">
                                                <img class="photo" src="<?= $post_images[$i] ?>">
                                            </a>
                                        </li>


            <?php } } ?>


    <?php
    if ($postres['vid_count'] > 0) {
        $post_videos = explode(",", $postres['video']);
        for ($i = 0; $i < count($post_videos); $i++) {
            ?>

                                        <li class="pb-image-box">
                                            <a href="aj_business.php?id=<?= $postres['id'] ?>&gid=<?= $_GET['id'] ?>&vid=<?= $post_videos[$i] ?> .ajcontent" data-featherlight="ajax">
                                                <video controls>
                                                    <source src="<?= $post_videos[$i] ?>" type="video/mp4">
                                                </video>
                                            </a>
                                        </li>


        <?php }
    } ?>


                            </ul>
                        </div>

                    </div>
                </div>

                <script>
                    $(document).ready(function () {
                        $('video').removeAttr('autoplay');
                    });
                </script>                                 
                <?php
                $likecount = mysqli_query($conn, "SELECT * FROM likes WHERE post_id='$postres[id]'");
                $likenum = mysqli_num_rows($likecount);
                ?>
                <div class="post-content">



                    <p class="ttl-lks">
                        <?php $user_like = mysqli_query($conn, "SELECT * FROM likes WHERE post_id='$postres[id]' AND liker_unique_id='$user_id'");
                        if (mysqli_num_rows($user_like) > 0) {
                            ?>
                            <i class="fa fa-paw paw-like" id="paw-likes"></i>
                        <?php } else { ?>
                            <i class="fa fa-paw " id="paw-likes"></i>
                        <?php } ?>

                        <span class="number-likes<?= $postres['id'] ?>"><?= $likenum ?></span> Likes</p>
                </div>
				
				<!--Social sharing code start here-->
<!--Facebook-->
<?php
   $actual_link = (isset($_SERVER['HTTPS']) ? "https" : "http") . "://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]"; 
?>
<?php
echo '<iframe src="https://www.facebook.com/plugins/share_button.php?href='.$actual_link.'&layout=button&size=small&mobile_iframe=true&appId=329340577474651&width=59&height=20" width="59" height="20" style="border:none;overflow:hidden" scrolling="no" frameborder="0" allowTransparency="true"></iframe>';
?>
<!--Facebook sharing code end here-->
<!--Pintrest sharing code end here-->
<a href='javascript:void((function()%7Bvar%20e=document.createElement(&apos;script&apos;);e.setAttribute(&apos;type&apos;,&apos;text/javascript&apos;);e.setAttribute(&apos;charset&apos;,&apos;UTF-8&apos;);e.setAttribute(&apos;src&apos;,&apos;http://assets.pinterest.com/js/pinmarklet.js?r=&apos;+Math.random()*99999999);document.body.appendChild(e)%7D)());'><img src='http://www.brandaiddesignco.com/insights/PinIt.png'/></a>
<!--Social sharing code end here-->
				
				
				
                <div class="post-act-btn">

                    <?php
                     require './dbcon.php';
                     $select ="select * from business_like where group_id = '$_GET[id]' and user_id = '$user_id'";
                     $res = mysqli_query($conn, $select);
                     if(mysqli_fetch_assoc($res)>0)
                     {
                    ?>
                    
                    
                    <div class="post-act-ins">

                        <?php
                        $likeqry = mysqli_query($conn, "SELECT * FROM likes WHERE post_id='$postres[id]' AND liker_unique_id='$user_id'");
                        $likecount = mysqli_num_rows($likeqry);

                        if ($likecount > 0) {
                            ?>
                            <button class="post-like-button liked" id="<?= $postres['id'] ?>">Unlike</button>
                        <?php
                        } else {
                            ?>
                            <button class="post-like-button" id="<?= $postres['id'] ?>">Like</button>
                        <?php } ?>


                        <button class="post-comment-btn" id="<?= $postres['id'] ?>">Comment</button>

                        <button class="post-share-btn" id="<?= $postres['id'] ?>">Share</button>

                    </div>

                    
                    
                    <div class="comment-head"><h3>Comments:</h3></div>

                    <div class="comment-area">
                        <?php
                        $commentqry = mysqli_query($conn, "SELECT * FROM comments WHERE post_id='$postres[id]' LIMIT 6");

                        if (mysqli_num_rows($commentqry) > 0) {
                            WHILE ($commentresult = mysqli_fetch_assoc($commentqry)) {
                                $commentr = mysqli_query($conn, "SELECT pet_name,pet_unique_id,profile_pic FROM user_inf WHERE pet_unique_id='$commentresult[commenter_unique_id]' UNION SELECT company_name,business_uniqueid,profile_image FROM business WHERE business_uniqueid='$commentresult[commenter_unique_id]' UNION SELECT ngo_name,ngo_unique_id,profile_image FROM ngo_resgitration WHERE ngo_unique_id='$commentresult[commenter_unique_id]'");
                                $cmntr = mysqli_fetch_assoc($commentr);
                                ?>
                                <div class="user-comments">
								<span class="user-icn-img">
								<?php if($cmntr['profile_pic']=="") {
				echo "<img src='images/fr-pro-big-img.jpg'>";
							}
							else {
							?>
			
			<img src="<?= $cmntr['profile_pic'] ?>" alt="user image" />
							<?php } ?>
								</span>
                                    <div class="cmnt-text"><a href='about3.php?id=<?= $cmntr['pet_unique_id'] ?>'><?= $cmntr['pet_name'] ?></a>
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
                     </div>
                    <?php
                    }
                    ?>
                </div>
            </div>
        </div>
   </div> 

   <?php if( $count % 3 == 0 ){ ?>
		<div class="ads">
					
                                <?php
                               
                        //require './dbcon.php';
                            $display_banner = "select * from ads ORDER BY RAND() LIMIT 3";
    $results = mysqli_query($conn, $display_banner);
                            while ($row = mysqli_fetch_array($results)) {
                           $description = $row["description"];
                         
                         ?>
       <div class="one-col-post-ads">
        <div class="one-col-inn">                 
            <div class="post-in-c">
                <div class="post-content">

<div class="post-img"><img src="<?php echo $row["banner_image"] ?>" alt=""></div>
<h2><p class="pst-text"><?php echo $row["heading"] ?></p></h2>
<p class="pst-text"><?php echo substr($description, 0, 100)?></p>
</div>
</div>
</div>
</div>
                         <?php
                       } ?>
					   </div>
					   <?php 
                         }
                     ++$count;
                        ?>
   
   
   
    <?php
}
//mysql_close($conn);
?>
						


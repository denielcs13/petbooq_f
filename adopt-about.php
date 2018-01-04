<?php
session_start();
require 'dbcon.php';
if ((isset($_SESSION['pet_unique_id']))) {   
   $parent_id=$_SESSION['pet_unique_id'];
}
if ((isset($_SESSION['business_unique_id']))) {   
   $parent_id=$_SESSION['business_unique_id'];
}
if ((isset($_SESSION['ngo_unique_id']))) {   
   $parent_id=$_SESSION['ngo_unique_id'];
}
?>
<html>
<?php require_once 'inc/head-content.php';  ?>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="feather/featherlight.min.js" type="text/javascript" charset="utf-8"></script>
	<link type="text/css" rel="stylesheet" href="feather/featherlight.min.css" />
<body>
<?php require_once 'inc/header_11.php';  ?>
    <?php
        //$parent_id = $_SESSION['pet_unique_id'];        
        $userqry = mysqli_query($conn, "SELECT * FROM user_inf WHERE pet_unique_id='$parent_id'");
        $userinf = mysqli_fetch_assoc($userqry);
        $display = "SELECT * FROM(SELECT post.id,post.child_post_id,post.title,post.posts,post.url,post.image,post.time FROM addfriend JOIN post on addfriend.parent_id=post.child_post_id WHERE addfriend.child_id='$parent_id' AND addfriend.status>'0' UNION SELECT post.id,post.child_post_id,post.title,post.posts,post.url,post.image,post.time FROM addfriend JOIN post on addfriend.child_id=post.child_post_id WHERE addfriend.parent_id='$parent_id' AND addfriend.status>'0') AS u ORDER BY u.id DESC LIMIT 5";
        $disprun = mysqli_query($conn, $display);
        ?>

        <style>
            #filediv0, #filediv1, #filediv2, #filediv3 {
                width:80%;
                float:left;
            }
            .frn_req_acc, .frn_req_rej {
                float:left;
            }
            #add-more-img {
                display:none;
            }
            input[id="video_upload"] {
                display:none;
            }
            .vid-upl {
                -webkit-appearance: button;
                padding: 6px;
                background: #2c86bf;
                color: WHITE;
            }
            .post-video-upl {
                float:left;
            }
			.post-row .pro-post-content {
				height:64%;
			}
			.two-col-post-brdr .left .post-row .post-img {
				width:96%;
			}
			.post-row .post-img img {
				width:45%;
				float:left;
			}
			.post-image .photo {
				width:100%;
				
			}
			.videos {
				height:250px;
			}
			.one-col-post {
				width:50%;
			}
			#loading-post {
	display:none;
	background:#fff;
}
			#loading-post img {

	margin-left: 35%;
}
.loading-post {
	position: absolute;
    text-align: center;
    left: 46%;
    top: 2.5%;
}	
.box-left {
	float:left;
	width:50%;
}
.post-box-right {
	float:right;
	width:40%;
}	
.one-col-post-box {
	height: -webkit-fill-available;
}
.img-wrap div#media {
	//height:50%;
	width:100%;
	display:none;
}

.img-wrap div#media.selected {
	display:block;
}
li.box-image-pb {
	width:100%;
}
.img-wrap {
	position:relative;
	top:17%;
}
.img-wrap li img, .img-wrap li video {
	height:80%;
}
#box-prev {
	position:relative;
	bottom:150px;
	width:10%;
	float:left;
}
#box-next {
	position:relative;
	bottom:150px;
	width:10%;
	float:right;
	
}
.img-wrap #media video {
	height:340px;
}
ul {
   padding:2px;
    overflow:hidden;
	list-style:none;
}
li {
   float:left;
    //outline:1px solid gray;
    text-align:center;
    
}
li:first-child:nth-last-child(1) {
    width: 100%;
}
li:nth-last-child(2),
li:nth-last-child(2) ~ li {
    width: 50%;
}
/* three items */
li:nth-last-child(3),
li:nth-last-child(3) ~ li {
    width: 50%;
	
}

/* four items */
li:first-child:nth-last-child(4),
li:nth-last-child(4) ~ li {
    width: 50%;
}
li:first-child:nth-last-child(5),
li:nth-last-child(5) ~ li {
    width: 50%;
}
li:first-child:nth-last-child(6),
li:nth-last-child(6) ~ li {
    width: 50%;
}
li:first-child:nth-last-child(7),
li:nth-last-child(7) ~ li {
    width: 50%;
}
li:first-child:nth-last-child(8),
li:nth-last-child(8) ~ li {
    width: 50%;
}
li:first-child:nth-last-child(9),
li:nth-last-child(9) ~ li {
    width: 50%;
}
li:first-child:nth-last-child(10),
li:nth-last-child(10) ~ li {
    width: 50%;
}
.post-image img {
    height:200px;
	object-fit:cover;
}
.about-page .pb-image-box {
	margin:auto;
}

.pb-image-box img {
	padding-right:3px;
}
ul#post-media {
	padding:0;
}
        </style>


<div class="main-content user-pro-dtls-page usr-feed-page-nw about-page about-mate-page usr-feed-page user-pro-dtls-page" id="about-load-ref">
<div class="main-content-inn col-three main-content-full">
<div class="col-first-side">
                             <?php 
				if ((isset($_SESSION['pet_unique_id']))) {   
				require_once 'inc/user_profile_sidebar.php';
				require_once 'inc/side-bar.php';
				require_once 'inc/rehome-a-pet-side-bar.php';				
                                                }
                                if ((isset($_SESSION['business_unique_id']))) {   
                                require_once 'inc/business_profile_sidebar.php';
                                require_once 'inc/side-bar.php';
				require_once 'inc/rehome-a-pet-side-bar.php';
                                                }
                                if ((isset($_SESSION['ngo_unique_id']))) {   
                                require_once 'inc/ngo_profile_sidebar.php';
                                                }

				?>
</div>
                               <?php
				$profileqry=mysqli_query($conn,"SELECT * FROM adopt_pet WHERE id='$_GET[id]'");
				$profileinfo=mysqli_fetch_assoc($profileqry);
				
				?>
<div class="main-content-inn-left">
<div class="col-first">
<div class="two-col-post two-col-post-brdr">
<div class="user-pro-dtls">
<div class="pro-timeline"><?php if($profileinfo['bg_image']=="") {
							echo "<img src='images/paw.gif'>";
							}
							else {
							?>
							<img src="<?= $profileinfo['bg_image'] ?>" alt="user image" />
							<?php } ?>
							
							
							</div>
							
<div class="usr-pro-img"><?php if($profileinfo['pet_photo']=="") {
							echo "<img src='images/fr-pro-big-img.jpg'>";
							}
							else {
							?>
							<img src="<?= $profileinfo['pet_photo'] ?>" alt="user image" />
							<?php } ?></div>
<div class="usr-pro-dtl-r">
<h2><?= $profileinfo['pet_name_adopt']; ?></h2>
<p><?php if($profileinfo['about_pet']=="") {
							echo "Choosing a purebred is the best way to know what a dog's looks and personality might be...";
							}
							else {
							?>
							<?= $profileinfo['about_pet']; ?>
							<?php } ?></p>
<div class="usr-anc-l">
<span>Name : <?= $profileinfo['pet_name_adopt']; ?></span>
                                    <span>Age : <?= $profileinfo['age']; ?></span>
<span>Sex : <?= $profileinfo['sex']; ?></span>
<span>Email : <?= $profileinfo['email']; ?></span>
<!--                                    <span>Breed : <//?= $profileinfo['breed']; ?></span>-->
</div>
<div class="usr-cnct-l"><!--<a href="#">Connect</a>--> <!--<a href="#" class="edit">Edit</a>--></div>
</div>
</div>

<div class="pst-hld">
<div class="divide-line">
</div>
<div class="two-col-post">
<div id="" class="macy-top masonry-0l">



<?php 
$propostqry=mysqli_query($conn,"SELECT * FROM post WHERE child_post_id='$parent_id' ORDER BY id DESC LIMIT 4");
								WHILE($propost=mysqli_fetch_assoc($propostqry)) {
									$imcount=$propost['img_count'] + $propost['vid_count'];
									$psnameqry=mysqli_query($conn,"SELECT pet_name,pet_unique_id,profile_pic FROM user_inf WHERE pet_unique_id='$parent_id' UNION SELECT company_name,business_uniqueid,profile_image FROM business WHERE business_uniqueid='$parent_id' UNION SELECT ngo_name,ngo_unique_id,profile_image FROM ngo_resgitration WHERE ngo_unique_id='$parent_id'");
									$psname=mysqli_fetch_assoc($psnameqry);
								?>
<div class="left item demo">
<div class="post-in-c" id="<?= $propost['id'] ?>">
<div class="post-content">
<h2><span class="user-icn-img">
<a href="#">
	<?php if($psname['profile_pic']=="") {
							echo "<img src='images/fr-pro-big-img.jpg'>";
							}
							else {
							?>
							<img src="<?= $psname['profile_pic'] ?>" alt="user image" />
							<?php } ?>

</a>
</span>
<p class="user-nm"><a href="about3.php?id=<?= $psname['pet_unique_id'] ?>"><?= $psname['pet_name'] ?></a></p></h2>
<a href="<?= $propost['url'] ?>">
<h3><?= $propost['title'] ?></h3>
<p class="pst-text" id="post_desc"><?= $propost['posts'] ?></p>
</a>
</div>

<div class="post-image">
<ul id="post-media" data-count="<?= $imcount ?>">

<?php if($propost['img_count']>0) {
												$proimages=explode(",",$propost['image']);
                                                for($i=0;$i<count($proimages);$i++) {   
											?>
											<li class="pb-image-box">
<a href="aj_box.php?id=<?= $propost['id'] ?>&im=<?= $proimages[$i] ?> .ajcontent" data-featherlight="ajax">
<img src="<?= $proimages[$i] ?>"></a>
</li>
												<?php } }  ?>


											<?php if($propost['vid_count']>0) {
												$provid=explode(",",$propost['video']);
												for($i=0;$i<count($provid);$i++) { 
												
												?>   
												<li class="pb-image-box">
											<a href="aj_box.php?id=<?= $propost['id'] ?>&vid=<?= $provid[$i] ?> .ajcontent" data-featherlight="ajax"><video width="230" height="200" controls>
                                            <source src="<?= $provid[$i] ?>" type="video/mp4">
 
                                            </video></a>
											</li>
											<?php } } ?>
<!--postact-->								
</ul>			
		</div>									
<?php
											$likecount=mysqli_query($conn,"SELECT * FROM likes WHERE post_id='$propost[id]'");
												$likenum=mysqli_num_rows($likecount);
												?>
                                            <div class="post-content">
                                            
         
		
                                                <p class="ttl-lks">
		<?php $user_like=mysqli_query($conn,"SELECT * FROM likes WHERE post_id='$propost[id]' AND liker_unique_id='$parent_id'"); 
										if(mysqli_num_rows($user_like) > 0) {     ?>
												<i class="fa fa-paw paw-like" id="paw-likes"></i>
										<?php } else { ?>
										<i class="fa fa-paw " id="paw-likes"></i>
										<?php } ?>
												
												<span class="number-likes<?= $propost['id'] ?>"><?= $likenum ?></span> Likes</p>
                                            </div>
                                            <div class="post-act-btn">

                                                <div class="post-act-ins">
												
                                                    <?php
											$likeqry=mysqli_query($conn,"SELECT * FROM likes WHERE post_id='$propost[id]' AND liker_unique_id='$parent_id'");
												$likecount=mysqli_num_rows($likeqry);
												
													if($likecount > 0) {	
													?>
													<button class="post-like-button liked" id="<?= $propost['id'] ?>">Unlike</button>
												<?php }
												else {
													?>
													<button class="post-like-button" id="<?= $propost['id'] ?>">Like</button>
												<?php } ?>
													
													
                                                    <button class="post-comment-btn" id="<?= $propost['id'] ?>">Comment</button>
													
                                                    <button class="post-share-btn" id="<?= $propost['id'] ?>">Share</button>
													
                                                </div>
												
												
												<div class="comment-head"><h3>Comments:</h3></div>
								
												<div class="comment-area">
												<?php
												
								$commentqry=mysqli_query($conn,"SELECT * FROM comments WHERE post_id='$propost[id]'");
								
												if(mysqli_num_rows($commentqry)>0) {
													WHILE($commentresult=mysqli_fetch_assoc($commentqry)) {
//	$commentr=mysqli_query($conn,"SELECT * FROM user_inf WHERE pet_unique_id='$commentresult[commenter_unique_id]'");
        $commentr=mysqli_query($conn,"SELECT pet_name,pet_unique_id,profile_pic FROM user_inf WHERE pet_unique_id='$commentresult[commenter_unique_id]' UNION SELECT company_name,business_uniqueid,profile_image FROM business WHERE business_uniqueid='$commentresult[commenter_unique_id]' UNION SELECT ngo_name,ngo_unique_id,profile_image FROM ngo_resgitration WHERE ngo_unique_id='$commentresult[commenter_unique_id]'");                                                                                                    
	$cmntr=mysqli_fetch_assoc($commentr);
														?>
														
													<div class="user-comments"><span class="user-icn-img">
														<?php if($cmntr['profile_pic']=="") {
							echo "<img src='images/fr-pro-big-img.jpg'>";
							}
							else {
							?>
							<img src="<?= $cmntr['profile_pic'] ?>" alt="user image" />
							<?php } ?>
														
													</span>
														<div class="cmnt-text"><a href='about3.php?id=<?= $cmntr['pet_unique_id'] ?>'><?= $cmntr['pet_name']?></a><span class="cmmnt-t"><?=$commentresult['comment'] ?></span></div></div>
													
													<?php
													}	
												}
												
												?>
												<div class="post-comment-box" id="<?= $propost['id'] ?>" style="display:none;">
												<textarea class='comment-box' placeholder='Enter your comments'></textarea><button class='comment-submit'>Submit</button>
												</div>
												
												</div>  
											  
												</div>

											
											
											
											
<!--postactend-->											
											
</div>
</div>

								<?php } ?>
<?php include 'shared-post-about.php'; ?>

</div>
</div>
</div>

</div>
</div>

<?php require_once 'inc/ads_sidebar_d.php'; ?>
</div>



</div>
</div>
<!--share-->

	<link rel="stylesheet" href="css/modal.css">	
		
				
					<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/js/bootstrap.min.js" integrity="sha384-vBWWzlZJ8ea9aCX4pEW3rVHjgjt7zpkNpZk+02D9phzyeVkE+jo0ieGizqPLForn" crossorigin="anonymous"></script>
					 
					
			<div class="modal fade" id="myModal" tabindex="-1" role="dialog" data-pid="123" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-sm" role="document">
    <div class="modal-content">
      <div class="modal-header">
	  
        <h3 class="modal-title" id="exampleModalLabel">Select Friends To Share This Post</h3>
        <button type="button" class="close" id="share-modal-close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
	  <div class="fr-li-cont">
	  <form method="post" id="share-form">
	  <?php
    $friendqry="SELECT user_inf.pet_name,user_inf.powner_name,user_inf.pet_unique_id,user_inf.profile_pic,addfriend.parent_id as sender,addfriend.child_id as recepient,addfriend.status FROM addfriend JOIN user_inf ON addfriend.child_id = user_inf.pet_unique_id WHERE addfriend.parent_id ='$parent_id' and addfriend.status = '1' UNION SELECT user_inf.pet_name,user_inf.powner_name,user_inf.pet_unique_id,user_inf.profile_pic,addfriend.child_id as sender,addfriend.parent_id as recepient,addfriend.status FROM addfriend JOIN user_inf ON addfriend.parent_id = user_inf.pet_unique_id WHERE addfriend.child_id ='$parent_id' and addfriend.status = '1'";
	
$friendrun=mysqli_query($conn,$friendqry);
WHILE($friendlist=mysqli_fetch_assoc($friendrun)) {
	
	
	
	
	

	?>
                                <div class="fr-li-row">
                                    <div class="fr-t-l">
									
          <a href="#"><span class="user-icn-img">
                  <?php if($friendlist['profile_pic']=="") {
							echo "<img src='images/pet-icon.png' alt='user image'>";
							}
							else {
							?>
							<img src="<?= $friendlist['profile_pic']  ?>" alt="user image" />
							<?php } ?>
                  <span class="fr-nm"><?= $friendlist['pet_name'] ?></span></span></a>
		  <input type="checkbox" style="display:none" class="check-share" name="<?= $friendlist['pet_name'] ?>" value="<?= $friendlist['pet_unique_id'] ?>"> 
                                    </div>
                                    <div class="user-nm" id="<?= $friendlist['pet_unique_id']?>"><a href="#" class="share-select-frn">SELECT</a></div>
                                </div>
							
<?php } ?>

								</div>
	  
        
      </div>
      <div class="modal-footer">
        
        <input type="submit" id="share-btn" value="Share">
		
      </div>
	  
</form>
    </div>
  </div>
</div>	

<script>
$(document).ajaxComplete(function() {
	var img=$('#imurl').text();
	var vid=$('#vidurl').text();
	
	if(img!='') {
	$('#box-image-disp div').find('img[src$="'+img+'"]').parent().addClass('selected');
	}
	if(vid!='') {
		//alert($('#box-image-disp div').find('video source[src$="'+vid+'"]').attr('src'));
		$('#box-image-disp div').find('video source[src$="'+vid+'"]').parent().parent().addClass('selected');
	}
	
	
});
</script>
			<script>
$(document).ready(function() {
//$('.img-wrap img:gt(0)').hide();

$(document).on('click','#box-next',function() {

    //$('.img-wrap div#media img.selected').hide().next().show().end().appendTo('.img-wrap');
	if($('.img-wrap div#media.selected').next().is('div#media')) {
	$('.img-wrap div#media.selected').removeClass('selected').next().addClass('selected');
	}

	
});


$(document).on('click','#box-prev',function() {
 if($('.img-wrap div#media.selected').prev().is('div#media')) {
	$('.img-wrap div#media.selected').removeClass('selected').prev().addClass('selected');
 }
});
});
</script>
<script type="text/javascript">
$(document).ready(function() {
	
		 
	$("#profile-post-form").on('submit',(function(e)  {
		
           e.preventDefault();
		$.ajax({
        	url: "save-post-about.php",
			type: "POST",
			data:  new FormData(this),
			contentType: false,
    	    cache: false,
			processData:false,	
beforeSend: function()
                {
                    $('#loading-post').show();
                },			
			success: function(data)
		    {
	             $('#loading-post').hide();
				//$('#post-display').prepend(data);
				
				
				location.reload();
				$('#profile-post-form')[0].reset();
		$('#post-submit-btn').removeAttr('disabled');
		    },
		  	error: function() 
	    	{
				
	    	} 
	       
	   });
	   $(this).find(':submit').attr( 'disabled','disabled' );
	  // $(this).unbind("submit");
    //$(this).on('submit',function(){return false;});

	}));
	
	
});
</script>


			<script>
			
			//$(document).ready(function(){
			//$(".post-comment-btn").click(function(){
			//alert();
			//});
			//});
			</script>

			<script type="text/javascript">

$(document).on('click', '.post-like-button', function() {
 
	var post_id=$(this).attr("id");
	
		$.ajax({
        	url: "post-functions.php",
			type: "POST",
			data: { id: post_id },
    	                cache: false,			
			success: function(data)
		    {
	        
			var resp=data.split('|');
						
						$('#' + post_id + '.post-like-button').text(resp['0']);
						
                        $('.number-likes' + post_id).html(resp['1']);
                        $('.number-likes' + post_id).prev('#paw-likes').toggleClass('paw-like');
			
				
				
		        
		    },
		  	error: function() 
	    	{
				
	    	} 	        
	   });
});

</script>

			
			<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>	
			<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"></script>		
	<script type="text/javascript">
    $(document).ready(function () {
      
        $(document).on('click','.post-share-btn', function() {
			 var pid=$(this).attr('id');
           $('#myModal').show().attr("data-pid",pid);
		 
		   //$('#myModal').data("pid",pid);
		   
        }),
		$('.share-select-frn').click(function() {
			 $(this).attr('id');
			$(this).parent().parent().toggleClass("marked");
			$(this).parent().parent().find('.check-share').trigger('click');
		}),
$('#share-modal-close').click(function() {

$('#myModal').hide();

});
		
    });
</script>				
		
<script type="text/javascript">
$(document).ready(function() {
$("#share-form").on('submit',(function(e)  {
		
           e.preventDefault();
		   var pid=$(this).closest('.modal').attr('data-pid');
		   var fd=new FormData(this);
		   fd.append('pid',pid);
		$.ajax({
        	url: "post-share-fun.php",
			type: "POST",
			data: fd,
			contentType: false,
    	    cache: false,
			processData:false,			
			success: function(data)
		    {
	
				alert(data);
				$('#share-form')[0].reset();
				$('#myModal').hide();
		
		    },
		  	error: function() 
	    	{
				
	    	} 	        
	   });
	}));
});
</script>	

<style>
div.about-page .two-col-post .left.item{width: 100% !important;}
.masonry-0l {
    margin: 1em 0;
    padding: 0;
    -moz-column-gap: 1em;
    -webkit-column-gap: 1em;
    column-gap: 1em;
}

.item {
    display: inline-block;
    background: #fff;
    padding: 1em;
    margin: 0 0 1em;
    width: 100%;
    box-sizing: border-box;
    -moz-box-sizing: border-box;
    -webkit-box-sizing: border-box;
    box-shadow: 2px 2px 4px 0 #ccc;
}

@media only screen and (min-width: 400px) {
    .masonry-0l  {
        -moz-column-count: 2; 
        -webkit-column-count: 2;
        column-count: 2;
    }
}

@media only screen and (min-width: 700px) {
    .masonry-0l  {
        -moz-column-count: 2;
        -webkit-column-count: 2;
        column-count: 2;
    }
}

@media only screen and (min-width: 900px) {
    .masonry-0l  {
        -moz-column-count: 2;
        -webkit-column-count: 2;
        column-count: 2;
    }
}

@media only screen and (min-width: 1100px) {
    .masonry-0l  {
        -moz-column-count: 2;
        -webkit-column-count: 2;
        column-count: 2;
    }
}


</style>

<div id="loading-post"><span class="loading-post">Loading Post</span><img src="loading.gif"></div>
<!--share end-->
<script type="text/javascript">

$(document).on('click', '.post-comment-btn', function() {
 
 $(this).parent().next().next().find('.post-comment-box').show();
 
 });
 </script>
 <script>
  
 $(document).ready(function() {
	
 $(document).on('click', '.comment-submit', function() {
	var post_id=$(this).parent().attr("id");
	var comment_data=$(this).parent().find('.comment-box').val();
	//alert(comment_data);
	
		$.ajax({
        	url: "post-functions.php",
			type: "POST",
			data: { 
			commentid: post_id , commenttext: comment_data
			},
    	    cache: false,			
			success: function(data)
		    {
	          $('#'+post_id+'.post-comment-box').hide();
			  //$('#'+post_id+'.post-comment-box').parent().append("<div class='user-comments'>"+data+"</div>");
		        $('#'+post_id+'.post-in-c').find('.comment-area').html(data); 
				 
		    },
			
		  	error: function() 
	    	{
				
	    	} 
	        
		});
		

 });
});

</script>
<?php require_once 'inc/footer.php';  ?>
</body>
</html>
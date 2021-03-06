<?php
session_start();
if (!(isset($_SESSION['pet_unique_id']))) {   
    header('Location:index.php');
}
if(isset($_GET['id'])) {
	$gp_id=$_GET['id'];
}

?>
<html>
<?php require_once 'inc/head-content.php';  ?>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<script src="feather/featherlight.min.js" type="text/javascript" charset="utf-8"></script>
<link type="text/css" rel="stylesheet" href="feather/featherlight.min.css" />
<body>
<?php require_once 'inc/header.php';  ?>
    <?php
        $parent_id = $_SESSION['pet_unique_id'];
        $gp_id=$_GET['id'];
        require 'dbcon.php';
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


<div class="main-content user-pro-dtls-page usr-feed-page-nw about-page usr-feed-page  groups-page event-page event-join-page" id="">
<div class="main-content-inn col-three main-content-full">
<div class="col-first-side">
<div class="pro-right-sec">
<div class="grp-name"><h2><i class="fa fa-paw"></i>Pet Event</h2></div>
<div class="sidebar">
<ul>
<li><a href="#"><span class="icn"><img src="images/create-page-icon.png" alt="icon"></span>Create Page</a></li>
<li><a href="#"><span class="icn"><img src="images/create-grp-icon.png" alt="icon"></span>Create Groups</a></li>
<li><a href="#"><span class="icn"><img src="images/event-icon.png" alt="icon"></span>Events</a></li>
<li><a href="#"><span class="icn"><img src="images/create-grp-icon.png" alt="icon"></span>Create Ads</a></li>
<li><a href="#"><span class="icn"><img src="images/notes-icon.png" alt="icon"></span>Create Notes</a></li>
<li><a href="#"><span class="icn"><img src="images/rec-icon.png" alt="icon"></span>Recommendations</a></li>
</ul>
</div>
<div class="grp-top">
<h4>Event Setting</h4>
<ul>
<li><a href="#"><i class="fa fa-clock-o"></i>Manage Events</a></li>
<li><a href="#"><i class="fa fa-calendar"></i>Calendar</a></li>
<li><a href="#"><i class="fa fa-birthday-cake"></i>Pet Birthday</a></li>
<li><a href="#"><i class="fa fa-history"></i>Past</a></li>
</ul>
</div>

</div>
</div>
                               <?php
				$profileqry=mysqli_query($conn,"SELECT * FROM user_inf WHERE pet_unique_id='$parent_id'");
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
							
							
<div class="usr-pro-dtl-r">
<div class="usr-pro-left">
<h2 class="upl-hdng">Upload Photo</h2>
<div class="usr-cnct-l"><input type="file" value="Uplaod Photo" /><button><i class="fa fa-upload"></i>Upload</button><</div>
</div>


</div>
</div>
<div class="pst-hld">
<div class="two-col-post">
<div class="stat-textarea post-f left item demo">
<div class="post-in-c">
<div class="shdl-date">
<div class="left"><span class="mnth">Jan</span><span class="dt">01</span></div>
<div class="right">
<h3 class="ev-hding">Pet Birthday</h3>
<div class="pbl-b"><span><i class="fa fa-globe"></i> Published by</span> <a href="#">Pradeep Sagar</a></div>
<div class="usr-pro-right">
<div class="post-act-ins">
<button class="post-join-button" id=""><i class="fa fa-user-plus"></i> Invite</button>
<button class="post-like-button" id=""><i class="fa fa-pencil-square-o"></i> Edit</button>
<button class="post-share-btn" id=""><i class="fa fa-envelope"></i> Message Guests</button>
</div>
</div>
</div>
</div>

<div class="lcn-shd time-shd">
<div class="left"><i class="fa fa-clock-o"></i></div>
<div class="right">
<p>Thursday, November 9 at 12 PM</p>
</div>
</div>


<div class="lcn-shd">
<div class="left"><i class="fa fa-map-marker"></i></div>
<div class="right">
<p>Vasant Kunj</p>
<div class="adr">South Delhi, New Delhi, India 110070</div>
<a href="#" class="map">View Map</a>
</div>
</div>


</div>
</div>

<div class="one-col-post">
<div class="inv-shd">
<div class="left">1 Going, 0 Maybe, 0 Invited</div>
<div class="right">
<div class="inv-btn"><a href="#"><i class="fa fa-envelope"></i> Invite</a></div>
</div>
</div>
<div class="fri-cir-list">
<div class="fri-cir-bx">
<div class="user-icn-img">
<span class="fr-img"><a href="about3.php?id=8181890" class="frn_profile"><img src="images/user_image09.jpg" alt="user image">
<div class="fr-check"><i class="fa fa-check"></i></a></div>
</span>
<span class="fr-nm"><a href="about3.php?id=8181890" class="frn_profile">Mickey</a></span>
</div>
</div>

<div class="fri-cir-bx">
<div class="user-icn-img">
<span class="fr-img"><a href="about3.php?id=8181890" class="frn_profile"><img src="images/user_image02.jpg" alt="user image">
<div class="fr-check"><i class="fa fa-check"></i></a></div>
</span>
<span class="fr-nm"><a href="about3.php?id=8181890" class="frn_profile">Mickey</a></span>
</div>
</div>

</div>
<div class="fri-nc-g"><a href="about3.php?id=8181890">Ashok</a> is going</div>
</div>

<div class="">
<div class="one-col-post">
							
<form method="post" id="profile-post-form">
<div class="uplbtn-btm">
<h2 class="p-hdng">Share your new activity</h2>
<div class="upl-btm-text"><input name="title" placeholder="Experience" type="text"></div>
<div class="upl-btm-text"><textarea name="description" placeholder="Share your pets"></textarea></div>
</div>
<div class="upload-btn uplbtn-top uplbtn-btm-t">
<div class="upload-btn-hld">
<input name="post-url" placeholder="Type your URL" class="typ-t" type="text">
</div>
<div class="upload-btn-hld upload-btn-hld-top">
<div class="upload-btn-inhld" id="upload-post-img">

<input name="files[]" value="upload" class="fl-img" multiple="" type="file">

</div>
<input value="Post" id="post-submit-btn" class="fl-subm" type="submit">
</div>
</div>
</form>
								
</div>

<div class="one-col-post" id="360">
                                    <div class="one-col-inn">
                                        <div class="">
										<div class="post-content">
										<h2><span class="user-icn-img"><img src="images/fr-pro-big-img.jpg"></span><p class="user-nm"><a href="about3.php?id="></a></p></h2>
		 <h3></h3>
		 <span class="post-link"><a href="http://" target="_blank"></a></span>
                                                <p class="pst-text"></p><p>
										</p></div>
                 	
                                          
<div class="post-image post-video">
<div class="post-mul-image">
<div class="post-mul-image">

<ul id="post-media" data-count="1">
	
<li class="pb-image-box">
<a href="aj_box.php?id=360&amp;im=6733394/post_images/482199a1c4152d87b3dab503af3e6dba.jpg .ajcontent" data-featherlight="ajax">
<img class="photo" src="6733394/post_images/482199a1c4152d87b3dab503af3e6dba.jpg">
</a>
</li>




	

</ul>
</div>

</div>
</div>

<script>
$(document).ready(function() {
$('video').removeAttr('autoplay');
});
</script>                                 
											                                            <div class="post-content">
                                            
         
		
                                                <p class="ttl-lks">
												<i class="fa fa-paw " id="paw-likes"></i>
																						
												<span class="number-likes360">1</span> Likes</p>
                                            </div>
                                            <div class="post-act-btn">

                                                <div class="post-act-ins">
												
                                                    													<button class="post-like-button" id="360">Like</button>
																									
													
                                                    <button class="post-comment-btn" id="360">Comment</button>
													
                                                    <button class="post-share-btn" id="360">Share</button>
													
                                                </div>
												
												<div class="comment-head"><h3>Comments:</h3></div>
								
												<div class="comment-area">
																								<div class="post-comment-box" id="360" style="display:none;">
												<textarea class="comment-box" placeholder="Enter your comments"></textarea><button class="comment-submit">Submit</button>
												</div>
												
												</div>                                     </div>
                                        </div>
                                    </div>
									
									
									
                                </div>

</div>
</div>

</div>



<div class="col-third   animated fadeInRight">
<div class="ltst-arc">
                        <div class="ads-arc">
                            <h2>Sponsored Ads</h2>
                            <?php
                            require './dbcon.php';
                            $display_banner = "select * from ads ORDER BY RAND() LIMIT 3";
                            $results = mysqli_query($conn, $display_banner);
                            while ($row = mysqli_fetch_array($results)) {
                                $description = $row["description"];
                                ?>
                                <div class="post-row">
                                    <div class="post-rw-hld">
                                        <div class="post-img"><img src="<?php echo $row["banner_image"] ?>" alt=""></div>
                                        <div class="post-content">
                                            <h2><p class="user-nm"><a href="#"><?php echo $row["heading"] ?></a></p></h2>
                                            <p class="pst-text"><?php echo substr($description, 0, 100) ?></p>
                                        </div>
                                    </div>
                                </div>
                                <?php
                            }
                            ?>
                           
                        </div>
                        </div>
</div>
</div>

<div class="two-col-right">
<div class="fr-list" id="friends-list rel-events">
	<h2 class="fr-headnig">
	<p class="user-nm">Related Events</p>
	</h2>
	<div class="fr-li-cont">
	<div class="fr-li-row">
	<div class="fr-t-l">
	<div class="fr-left">
	<span class="user-icn-img">
	<img src="images/user_image04.jpg" alt="user_image"/>
	</span>
	</div> 
	<div class="fr-right">
	<span class="fr-nm"><a href="#" class="frn_profile">Cat Game Event</a></span>
	<p class="tm-ad"><span class="">Sat 11 Nov at</span><a href="#">Vasant Kunj New Delhi</a></p>
	<div class="g-btm">2,895 guests</div>
	<div class="int-g">
	<a href="#">Interested</a>
	<a href="#">Going</a>
	</div>
	</div>
	</div>                                   
	</div>
	<div class="fr-li-row">
	<div class="fr-t-l">
	<div class="fr-left">
	<span class="user-icn-img">
	<img src="images/user_image04.jpg" alt="user_image"/>
	</span>
	</div> 
	<div class="fr-right">
	<span class="fr-nm"><a href="#" class="frn_profile">Cat Game Event</a></span>
	<p class="tm-ad"><span class="">Sat 11 Nov at</span><a href="#">Vasant Kunj New Delhi</a></p>
	<div class="g-btm">2,895 guests</div>
	<div class="int-g">
	<a href="#">Interested</a>
	<a href="#">Going</a>
	</div>
	</div>
	</div>                                   
	</div>
	<div class="fr-li-row">
	<div class="fr-t-l">
	<div class="fr-left">
	<span class="user-icn-img">
	<img src="images/user_image04.jpg" alt="user_image"/>
	</span>
	</div> 
	<div class="fr-right">
	<span class="fr-nm"><a href="#" class="frn_profile">Cat Game Event</a></span>
	<p class="tm-ad"><span class="">Sat 11 Nov at</span><a href="#">Vasant Kunj New Delhi</a></p>
	<div class="g-btm">2,895 guests</div>
	<div class="int-g">
	<a href="#">Interested</a>
	<a href="#">Going</a>
	</div>
	</div>
	</div>                                   
	</div>
	</div>
</div>
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
	        
			if($('#'+post_id+'.post-like-button').text()=='Like') {
				$('#'+post_id+'.post-like-button').text('Unlike');
			}
			else if($('#'+post_id+'.post-like-button').text()=='Unlike'){
				$('#'+post_id+'.post-like-button').text('Like');
			}
				
			
			
				//alert(parseInt($('#number-likes').html()));
				$('.number-likes'+post_id).html(data);
				$('.number-likes'+post_id).prev('#paw-likes').toggleClass('paw-like');
				
		        
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
        -moz-column-count: 1; 
        -webkit-column-count: 1;
        column-count: 1;
    }
}

@media only screen and (min-width: 700px) {
    .masonry-0l  {
        -moz-column-count: 1;
        -webkit-column-count: 1;
        column-count: 1;
    }
}

@media only screen and (min-width: 900px) {
    .masonry-0l  {
        -moz-column-count: 1;
        -webkit-column-count: 1;
        column-count: 1;
    }
}

@media only screen and (min-width: 1100px) {
    .masonry-0l  {
        -moz-column-count: 1;
        -webkit-column-count: 1;
        column-count: 1;
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
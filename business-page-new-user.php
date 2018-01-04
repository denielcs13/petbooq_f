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
    	$user_id=$parent_id;
//        $user_id=$_SESSION['pet_unique_id'];
        //$parent_id = $_SESSION['pet_unique_id'];
       // print_r($parent_id);
       //$parent_id = '3377778';
	   //print_r($_GET);
        require 'dbcon.php';
        $userqry = mysqli_query($conn, "SELECT * FROM business WHERE business_uniqueid='$_GET[id]'");
        $userinf = mysqli_fetch_assoc($userqry);

        //$display = "SELECT * FROM(SELECT post.id,post.child_post_id,post.title,post.posts,post.url,post.image,post.time FROM addfriend JOIN post on addfriend.parent_id=post.child_post_id WHERE addfriend.child_id='$parent_id' AND addfriend.status>'0' UNION SELECT post.id,post.child_post_id,post.title,post.posts,post.url,post.image,post.time FROM addfriend JOIN post on addfriend.child_id=post.child_post_id WHERE addfriend.parent_id='$parent_id' AND addfriend.status>'0') AS u ORDER BY u.id DESC LIMIT 5";
        $display="SELECT * FROM post WHERE child_post_id='$_GET[id]' ORDER BY id DESC";
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


<div class="main-content user-pro-dtls-page usr-feed-page-nw about-page usr-feed-page  groups-page" id="about-load-ref">
<div class="main-content-inn col-three main-content-full">
<div class="col-first-side">
<?php
                    if((isset($_SESSION['pet_unique_id']))) {   
                   require_once 'inc/user_profile_sidebar.php'; 
                   require_once 'inc/side-bar.php';
                   require_once 'inc/rehome-a-pet-side-bar.php';
                   }
                   if((isset($_SESSION['business_unique_id']))) {   
                   require_once 'inc/bus_profile_sidebar.php'; 
                   }
                   if ((isset($_SESSION['ngo_unique_id']))) {   
                   require_once 'inc/ngo_profile_sidebar.php';
                       }
                   
                 ?>    
</div>
                               <?php
				$profileqry=mysqli_query($conn,"SELECT * FROM business WHERE business_uniqueid='$_GET[id]'");
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
<div class="usr-pro-right">
<div class="post-act-ins">
<?php
$blikeqry=mysqli_query($conn,"SELECT * FROM business_like WHERE group_id='$_GET[id]' AND user_id='$user_id'");

if(mysqli_num_rows($blikeqry)>0) { ?>
<button class="follow-button" id="<?= $_GET['id'] ?>">UnFollow</button>
<?php }
else { ?>
<button class="follow-button" id="<?= $_GET['id'] ?>">Follow</button>

<?php } ?>

<div class="hiddenclass" style="display:show" id=<?= $user_id?>></div>
</div>
</div>
</div>
<div class="mem-admin-infs">
</div>
</div>

<div class="pst-hld">
<div class="divide-line">
</div>
<div class="two-col-post">
<div id="" class="macy-top masonry-0l">

<div class="left item demo">
<?php include 'business-post-data.php'; ?></div>

</div>
</div>
<div class="two-col-right">
<?php include 'inc/pet-adopt-mate-sidebar.php'; ?>
<!--<div class="two-col-right-box">
<div class="box-top">
<strong class="page-rght-top-h">Know friends who might like your Page?</strong>
<div class="ad-mem"><input type="" name="" placeholder="Enter name or email address" /></div>
</div>

<div class="sug-mem-box inv-fr-box">
<h4>Invite Friends</h4>
<div class="sug-mem-row">
<span class="user-icn-img"><img src="6936069/profile_pic/golden-retrievers.jpg" alt="user image"><span class="fr-nm">
<a href="#" class="frn_profile">Gregory12</a></span></span>
<span class="ad-mem-btn"><button>Invite</button></span>
</div>

<div class="sug-mem-row">
<span class="user-icn-img"><img src="6936069/profile_pic/golden-retrievers.jpg" alt="user image"><span class="fr-nm">
<a href="#" class="frn_profile">Gregory12</a></span></span>
<span class="ad-mem-btn"><button>Invite</button></span>
</div>

<div class="sug-mem-row">
<span class="user-icn-img"><img src="6936069/profile_pic/golden-retrievers.jpg" alt="user image"><span class="fr-nm">
<a href="#" class="frn_profile">Gregory12</a></span></span>
<span class="ad-mem-btn"><button>Invite</button></span>
</div>

<div class="sug-mem-row">
<span class="user-icn-img"><img src="6936069/profile_pic/golden-retrievers.jpg" alt="user image"><span class="fr-nm">
<a href="#" class="frn_profile">Gregory12</a></span></span>
<span class="ad-mem-btn"><button>Invite</button></span>
</div>

<div class="sug-mem-row">
<span class="user-icn-img"><img src="6936069/profile_pic/golden-retrievers.jpg" alt="user image"><span class="fr-nm">
<a href="#" class="frn_profile">Gregory12</a></span></span>
<span class="ad-mem-btn"><button>Invite</button></span>
</div>

<div class="sug-mem-row">
<span class="user-icn-img"><img src="6936069/profile_pic/golden-retrievers.jpg" alt="user image"><span class="fr-nm">
<a href="#" class="frn_profile">Gregory12</a></span></span>
<span class="ad-mem-btn"><button>Invite</button></span>
</div>

<div class="sug-mem-row">
<span class="user-icn-img"><img src="6936069/profile_pic/golden-retrievers.jpg" alt="user image"><span class="fr-nm">
<a href="#" class="frn_profile">Gregory12</a></span></span>
<span class="ad-mem-btn"><button>Invite</button></span>
</div>

<div class="sug-mem-row">
<span class="user-icn-img"><img src="6936069/profile_pic/golden-retrievers.jpg" alt="user image"><span class="fr-nm">
<a href="#" class="frn_profile">Gregory12</a></span></span>
<span class="ad-mem-btn"><button>Invite</button></span>
</div>

<div class="s-all"><a href="#">See All Friends > </a></div>

</div>


<div class="photo-box">
<h4>Page Photos</h4>
  <div class="usr-pro-photoglr">
<div class="usr-photo-img"><img src="images/user_image01.jpg" alt=""></div>
<div class="usr-photo-img"><img src="images/user_image02.jpg" alt=""></div>
<div class="usr-photo-img"><img src="images/user_image03.jpg" alt=""></div>
<div class="usr-photo-img"><img src="images/user_image05.jpg" alt=""></div>
<div class="usr-photo-img"><img src="images/user_image06.jpg" alt=""></div>
<div class="usr-photo-img"><img src="images/user_image07.jpg" alt=""></div>
<div class="s-all"><a href="#">See More > </a></div>
</div></div>


</div>-->


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

$(document).on('click','#box-next',function(e) {
	e.preventDefault();

    //$('.img-wrap div#media img.selected').hide().next().show().end().appendTo('.img-wrap');
	if($('.img-wrap div#media.selected').next().is('div#media')) {
	$('.img-wrap div#media.selected').removeClass('selected').next().addClass('selected');
	}

	
});


$(document).on('click','#box-prev',function(e) {
	e.preventDefault();

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
        	url: "business-post.php",
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
				//$('#page-load-ref').load(document.URL +  '#page-load-ref');
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
		$(document).on('click','#comment-load',function(e) {
			e.preventDefault();
			var postid=$(this).closest('.one-col-post').attr('id');
			$.ajax({
        	url: "get-comment-data.php",
			type: "POST",
			data: { 
			pid: postid 
			},
    	    cache: false,			
			success: function(data)
		    {
	         
			  $('#'+postid+'.one-col-post').find('.comment-area').html(data);
			
		      
		    },
		  	error: function() 
	    	{
				
	    	} 	        
		});
		});
		</script>
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
                                    <div class="user-nm" id="<?= $friendlist['pet_unique_id'] ?>"><a href="#" class="share-select-frn">SELECT</a></div>
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

<?php require_once 'inc/footer.php';  ?>
<script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"></script>	
			<script src="https://code.jquery.com/ui/1.12.0/jquery-ui.min.js"></script>		
	<script type="text/javascript">
    $(document).ready(function () {
      
        $(document).on('click','.post-share-btn', function() {
			 var pid=$(this).attr('id');
           $('#myModal').show().attr("data-pid",pid);
		 
		   //$('#myModal').data("pid",pid);
		   
        }),
		$('.share-select-frn').on('click',function(e) {
			e.preventDefault();
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
		   var $form = $(this);
            $form.find('submit').attr('disabled', true);
		   var pid=$(this).closest('.modal').attr('data-pid');
		   var fd=new FormData(this);
		   fd.append('pid',pid);
		   
		$.ajax({
        	url: "post-share-tst.php",
			type: "POST",
			data: fd,
			contentType: false,
    	    cache: false,
			processData:false,			
			success: function(data)
		    {
	          $('#alert-msg').html(data).show();
			  $('#alert-msg').fadeOut(10000);
			  
				//alert(data);
				$('#share-form')[0].reset();
				$('#myModal').hide();
				$('#share-form').find('.fr-li-row').removeClass('marked');
		
		    },
		  	error: function() 
	    	{
				
	    	} 	
		
	   });
	   return false;
	}));
});
</script>	
<script type="text/javascript">
	var fired=0;

    $(window).scroll(function() {

        if($(document).scrollTop() + window.innerHeight >= document.getElementsByTagName("body")[0].scrollHeight) {
			
			if ($(window).data('ajax_in_progress') === true)
            return;
			
			if(fired==0) {
            var last_id = $(".one-col-post:last").attr("id");
            loadMoreData(last_id);
			
			}
			fired=1;
        }
		
    });

    function loadMoreData(last_id){
      $.ajax(
            {
                url: 'bus_loadmoredata.php?last_id=' + last_id,
                type: "get",
                beforeSend: function()
                {
                    $('.ajax-load').show();
                }
				
            })
            .done(function(data)
            {
				
				//alert(last_id);
                $('.ajax-load').hide();
                $("#post-display").append(data);
				fired=0;
				if(data.length<25) {
					$(window).data('ajax_in_progress', true);
				}
            })
			
            .fail(function(jqXHR, ajaxOptions, thrownError)
            {
                  alert('server not responding...');
            });
			
    }
</script>

<script type="text/javascript">

$(document).on('click', '.follow-button', function() {
      
      var post_id=$(this).attr("id");
      var hidden = $(".hiddenclass").attr("id");
      //alert(hidden);
	
		$.ajax({
        	url: "follow.php",
		type: "POST",
		data: { id: post_id,userid:hidden},
    	        success: function(data)
		{
	        $('#'+post_id+'.follow-button').text(data);
			location.reload();
	        
		},
	 });
});

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
<script>
            $(function () {
                function callAjax() {
//        $('.post-row').load("..post-row");
                    $('.ads-arc').load(document.URL + ' .ads-arc');
                }
                setInterval(callAjax, 5000);
            });

        </script>
	
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
			  $('#'+post_id+'.one-col-post').find('.comment-area').html(data);
			  //$('#'+post_id+'.post-comment-box').parent().append("<div class='user-comments'>"+data+"</div>");
		      
		    },
		  	error: function() 
	    	{
				
	    	} 	        
		});
		$(this).attr( 'disabled','disabled' );
 });
});

</script>	
<script>
$(document).ready(function() {
	$('.one-col-post').each(function() {
	if($(this).find('#post-media').data('count')>5) {
		var elcount=$(this).find('#post-media').data('count');
		$(this).find('#post-media').find('.pb-image-box').slice(5,elcount).hide();
		//if($(this).find('#show-more-img').html()=='Show More') {
		$(this).find('#post-media').append("<div class='show-more-img'><a id='show-more-img' href='#'>Show More</a></div>");
		//}
		
	}
	});
});
</script>
<script>
$(document).on('click','#show-more-img',function(e) {
	e.preventDefault();
	$(this).parent().parent().find('.pb-image-box:nth-child(6) img').click();
});              
</script>

<!--share end-->
</body>
</html>
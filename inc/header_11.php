<?php
error_reporting(E_ERROR |  E_PARSE);
 session_start();

	
   include("dbcon.php");
  
   if(isset($_COOKIE['member_login'])) {
	   
      $myusername = $_COOKIE['member_login'];
      $mypassword = $_COOKIE['member_password']; 
      
      //$sql = "SELECT * FROM user_inf WHERE email = '$myusername'";
	//$sql = "select pet_name,password,pet_unique_id from user_inf where email = '$myusername'";  
	  $sql = "select * from user_inf where email = '$myusername'";  
	  
      $result = mysqli_query($conn,$sql);
      $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
      
      
     
      if(password_verify($row['password'], $mypassword)) {
         echo "logged In Successfully".$status;
         $_SESSION['login_user'] = $myusername;
         header("location: feed-page-copy.php");
       }
	  else 
	  {
         $error = "Your Login Name or Password is invalid";
		echo $error;
      }
	   	   
   }
   
  
   if(isset($_POST['username'])) {
      
      
      $myusername = mysqli_real_escape_string($conn,$_POST['username']);
      $mypassword = mysqli_real_escape_string($conn,$_POST['password']); 
      $dec_password=md5(utf8_encode($mypassword));
      //$sql = "SELECT * FROM user_inf WHERE email = '$myusername' and password = '$dec_password'";
	//$sql = "select pet_name,pet_unique_id from user_inf where email = '$myusername' powner_name = '$myusername'"; 
      $sql = "select * from login where email = '$myusername'";
      $result = mysqli_query($conn,$sql);
      $count = mysqli_num_rows($result);
      if($count == 1){
        $row = mysqli_fetch_array($result,MYSQLI_ASSOC);
        
      if($row["type"]=='user')
      {
      echo "<script>window.location='feed-page-copy.php'</script>";
      $_SESSION['login_user'] = $myusername;
      $_SESSION['pet_unique_id']=$row['unique_id'];
	  
      }
      if($row["type"]=='business')
      {
      echo "<script>window.location='bus_page.php'</script>";
      $_SESSION['login_user'] = $myusername;
      $_SESSION['business_unique_id']=$row['unique_id'];
      }
      if($row["type"]=='ngo')
      {
      echo "<script>window.location='ngo_feed_page.php'</script>";
      $_SESSION['login_user'] = $myusername;
      $_SESSION['ngo_unique_id']=$row['unique_id'];
      }
    
         // echo "logged In Successfully".$status;
        // $_SESSION['login_user'] = $myusername;
         //$_SESSION['unique_id']=$row['pet_unique_id'];
        // $_SESSION['business_unique_id'] = $row['unique_id'];
	//$_SESSION['user_name'] = $row['powner_name'];
	//$_SESSION["pet_name"]=$row["pet_name"];
	//$_SESSION["profile_pic"]=$row["profile_pic"];
         //$_SESSION['child_user_id'] = $row['child_user_id'];
       //  echo "<script>window.location='bus_page.php'</script>";
         //echo "<script>window.location='feed-pagepost.php'</script>";
         //header("location: photo-upload.php");
      }
	  else 
	  {
         echo "<script>alert('Your email id or password not match')</script>";
	     echo "<script>window.location='index.php'</script>";
      }
   }
?>
<script src="ajax.googleapis.com/ajax/libs/jquerymobile/1.4.5/jquery.mobile.js"></script>
<script>
$(document).ready(function() {
    $('#mob-menu-btn').click(function(){
        $(".op-div").slideToggle({
            width: 'toggle',
            transition: '.4s ease',
            height: '100%',
            slow:  '1000',

        });

    
    $("body").css({position: "relative", right: "60%", width: "100%",transition: '.4s ease'});
	$('body').attr('id','mob-side-body');
    });



    $('.sdbr-del-btn').on('click',function() {
		
       $(".op-div").css({display : "none"});
       $("body").css({position: "relative",right:"0", width: "100%",transition: ".4s ease"});  
    });
	
$('#mob-side-body').on('click touchstart', function(){
	$(".op-div").css({display : "none"});
       $("body").css({position: "relative",right:"0", width: "100%",transition: ".4s ease"});  
});
  
});


/*$(document).click(function() {
$(".op-div").css({display : "none"});
       $("body").css({position: "relative",right:"0", width: "100%",transition: ".4s ease"});  
});*/


</script>

<script>
 $(document).ready(function(){
  var colors = ['#0e83e2', '#c90', '#FF33FF', '#a0c000', '#00B3E6', 
      '#E6B333', '#3366E6', '#999966', '#0c9', '#B34D4D',
      '#80B300', '#809900', '#d26', '#6680B3', '#66991A', 
      '#a2c', '#9ebf2c', '#FF1A66', '#E6331A', '#4eb900',
      '#66994D', '#B366CC', '#4D8000', '#B33300', '#CC80CC', 
      '#66664D', '#991AFF', '#E666FF', '#4DB3FF', '#1AB399',
      '#E666B3', '#33991A', '#CC9999', '#B3B31A', '#00E680', 
      '#4D8066', '#809980', '#eda91f', '#4eb900', '#999933',
      '#FF3380', '#CCCC00', '#4eb900', '#4D80CC', '#9900B3', 
      '#E64D66', '#4DB380', '#FF4D4D', '#0c9', '#6666FF'];                
  var rand = Math.floor(Math.random()*colors.length);           
  $('.header').css("background-color", colors[rand]);
  /*$('.header-inn .col-first-side').css("background-color", colors[rand]);*/
});
</script>


<div class="header st-m-header" style="background: none">
<div class="header-inn">

<div class="op-btn"><i class="fa fa-bars" id="mob-menu-btn" aria-hidden="true"></i></div>
<div class="col-first-side op-div" style="display:none">
<div class="sdbr-del"><i class="fa fa-close sdbr-del-btn" aria-hidden="true"></i></div>
<?php require_once 'inc/mob-sidebar.php'; ?>  
</div>


<div class="header-left">
<?php if(!isset($_SESSION['login_user'])) { ?>
    <div class="logo"><a href="index.php"><img src="images/logo.png" alt="logo" /></a></div>
<?php
}
else if(isset($_SESSION['login_user']) &&  isset($_SESSION['pet_unique_id']))
{
	?>

<div class="logo"><a href="feed-page-copy.php"><img src="images/logo.png" alt="logo" /></a></div>    
<?php
}
else if(isset($_SESSION['login_user']) &&  isset($_SESSION['business_unique_id'])) {
?> 
<div class="logo"><a href="bus_page.php"><img src="images/logo.png" alt="logo" /></a></div>   
<?php } 
else if(isset($_SESSION['login_user']) &&  isset($_SESSION['ngo_unique_id'])) {
?>
<div class="logo"><a href="ngo_feed_page.php"><img src="images/logo.png" alt="logo" /></a></div>   
<?php } ?>
<!--<div class="search">
<input placeholder="Search..." type="">
</div>-->
</div>
<div class="header-right">
            <form action="" method="post">
<?php if (!isset($_SESSION['login_user'])) { ?>


                    <div class="al-j"><a href="#">Already joined?</a></div>
                    <div class="hdr-in-b">
                        <input type="text" name="username" placeholder="Email">
                        <input type="password" name="password" placeholder="Password" />
                        <button type="submit" name="sub">Log In</button>
                        <a href="forgetpassword.php" class="f-p">Forgot Password !</a>
    <?php
} elseif (isset($_SESSION['login_user'])) {
    echo "<input type='text' id='autocomplete' name='search' placeholder='Search here... ' class='search_lft ui-autocomplete' />";
  ?>
  
	<div class="header-fl-right">
	<?php
	if(isset($_SESSION['login_user']) &&  isset($_SESSION['pet_unique_id'])) { ?>
	<ul class="notification-bar">
	<?php
		
		echo "<span class='head-li-left'><li><a href ='feed-page-copy.php'  class='hdr-post-anc hm-icon'>Home</a></li>";
                $nameqry=mysqli_query($conn,"SELECT pet_name FROM user_inf WHERE pet_unique_id='$_SESSION[pet_unique_id]'");
	    $nameres=mysqli_fetch_assoc($nameqry);
	echo "<lI><a href='about.php' class='profile-img-icon'>".$nameres['pet_name']."</a></li>";
		$brcount=0;
$bdaycountqry = "SELECT user_inf.pet_unique_id,user_inf.dob,addfriend.parent_id as sender,addfriend.child_id as recepient,addfriend.status FROM addfriend JOIN user_inf ON addfriend.child_id = user_inf.pet_unique_id WHERE addfriend.parent_id ='$_SESSION[pet_unique_id]' and addfriend.status = '1' UNION SELECT user_inf.pet_unique_id,user_inf.dob,addfriend.child_id as sender,addfriend.parent_id as recepient,addfriend.status FROM addfriend JOIN user_inf ON addfriend.parent_id = user_inf.pet_unique_id WHERE addfriend.child_id ='$_SESSION[pet_unique_id]' and addfriend.status = '1'";
                            $bfrnd_list = mysqli_query($conn,$bdaycountqry);
							
										WHILE($bfrnds=mysqli_fetch_assoc($bfrnd_list)) {
		                                
		                                   $brday=$bfrnds['dob'];
	if($brday!='') {
$brday = new DateTime($brday);
	$brdate =$brday->format("m/d");
	$crdate=date("m/d");
	if($brdate==$crdate) {
		$brcount+=1;
	}
	}
										}
		echo "<li class='mob-li'><a href='friend-list.php' class='friend-icon-h'>Friends</a></li>";		
		echo "<li class='al-j al-j-inv'><a href='invitation.php' class='inv-icon-i'>Invitation</a></li>";
		echo"</span>

<span class='head-li-right'>";
		
    include 'notif.php';
			include 'messagebox.php';
echo "<li><a href='birthdaylist.php' class='bth-notf'>Birthdays<span class='bth-count'>".$brcount."</span></a></li>";
			
	}
	else if(isset($_SESSION['login_user']) &&  isset($_SESSION['business_unique_id'])) {
echo "<span class='head-li-right'>";
		include 'notification.php';
                include 'messagebox.php';
                echo "<li><a href ='bus_page.php'  class='hdr-post-anc'>Home</a></li>";
		$nameqry=mysqli_query($conn,"SELECT company_name FROM business WHERE business_uniqueid='$_SESSION[business_unique_id]'");
	        $nameres=mysqli_fetch_assoc($nameqry);
		echo "<li><a href='about-business.php' class='profile-img-icon'><span>".$nameres['company_name']."</span></a></li>";
echo "</span>";
		
	}
	else if(isset($_SESSION['login_user']) &&  isset($_SESSION['ngo_unique_id'])) {
echo "<span class='head-li-right'>";
		include 'notification.php';
                include 'messagebox.php';

                 echo "<li><a href ='ngo_feed_page.php'  class='hdr-post-anc'>Home</a></li>";
		$nameqry=mysqli_query($conn,"SELECT ngo_name FROM ngo_resgitration WHERE ngo_unique_id='$_SESSION[ngo_unique_id]'");
	    $nameres=mysqli_fetch_assoc($nameqry);
		echo "<li><a href='about-ngo.php' class='profile-img-icon'><span>".$nameres['ngo_name']."</span></a></li>";
		echo "</span>";
	}
	
    echo "<li><a href='user-log-out.php' class='sign-o'>Sign Out</a></li></div>";
}
?></ul>

</div>
                </div>
            </form>
        </div>
</div>
</div>


<div class="ftr-bottom-sec">
    <div class="header" style="background: none">
<div class="header-inn">

<div class="op-btn"><i class="fa fa-bars" id="mob-menu-btn" aria-hidden="true"></i></div>



<div class="header-left">
<?php if(!isset($_SESSION['login_user'])) { ?>
    <div class="logo"><a href="index.php"><img src="images/logo.png" alt="logo" /></a></div>
<?php
}
else if(isset($_SESSION['login_user']) &&  isset($_SESSION['pet_unique_id']))
{
	?>

<div class="logo"><a href="feed-page-copy.php"><img src="images/logo.png" alt="logo" /></a></div>    
<?php
}
else if(isset($_SESSION['login_user']) &&  isset($_SESSION['business_unique_id'])) {
?> 
<div class="logo"><a href="bus_page.php"><img src="images/logo.png" alt="logo" /></a></div>   
<?php } 
else if(isset($_SESSION['login_user']) &&  isset($_SESSION['ngo_unique_id'])) {
?>
<div class="logo"><a href="ngo_feed_page.php"><img src="images/logo.png" alt="logo" /></a></div>   
<?php } ?>
<!--<div class="search">
<input placeholder="Search..." type="">
</div>-->
</div>
<div class="header-right">
            <form action="" method="post">
<?php if (!isset($_SESSION['login_user'])) { ?>


                    <div class="al-j"><a href="#">Already joined?</a></div>
                    <div class="hdr-in-b">
                        <input type="text" name="username" placeholder="Email">
                        <input type="password" name="password" placeholder="Password" />
                        <button type="submit" name="sub">Log In</button>
                        <a href="forgetpassword.php" class="f-p">Forgot Password !</a>
    <?php
} elseif (isset($_SESSION['login_user'])) {
    echo "<input type='text' id='autocomplete' name='search' placeholder='Search here... ' class='search_lft' />";
  ?>
  
	<div class="header-fl-right">
	<?php
	if(isset($_SESSION['login_user']) &&  isset($_SESSION['pet_unique_id'])) { ?>
	<ul class="notification-bar">
	<?php
		
		echo "<span class='head-li-left'><li><a href ='feed-page-copy.php'  class='hdr-post-anc hm-icon'><i class='fa fa-home'></i> Home</a></li>";
                $nameqry=mysqli_query($conn,"SELECT pet_name FROM user_inf WHERE pet_unique_id='$_SESSION[pet_unique_id]'");
	    $nameres=mysqli_fetch_assoc($nameqry);
	echo "<lI><a href='about.php' class='profile-img-icon'><i class='fa fa-user'></i>  ".$nameres['pet_name']."</a></li>";
		$brcount=0;
$bdaycountqry = "SELECT user_inf.pet_unique_id,user_inf.dob,addfriend.parent_id as sender,addfriend.child_id as recepient,addfriend.status FROM addfriend JOIN user_inf ON addfriend.child_id = user_inf.pet_unique_id WHERE addfriend.parent_id ='$_SESSION[pet_unique_id]' and addfriend.status = '1' UNION SELECT user_inf.pet_unique_id,user_inf.dob,addfriend.child_id as sender,addfriend.parent_id as recepient,addfriend.status FROM addfriend JOIN user_inf ON addfriend.parent_id = user_inf.pet_unique_id WHERE addfriend.child_id ='$_SESSION[pet_unique_id]' and addfriend.status = '1'";
                            $bfrnd_list = mysqli_query($conn,$bdaycountqry);
							
										WHILE($bfrnds=mysqli_fetch_assoc($bfrnd_list)) {
		                                
		                                   $brday=$bfrnds['dob'];
	if($brday!='') {
$brday = new DateTime($brday);
	$brdate =$brday->format("m/d");
	$crdate=date("m/d");
	if($brdate==$crdate) {
		$brcount+=1;
	}
	}
										}
		echo "<li class='mob-li'><a href='friend-list.php' class='friend-icon-h'><i class='fa fa-user-plus'></i> Friends</a></li>";		
		echo "<li class='al-j al-j-inv'><a href='invitation.php' class='inv-icon-i'><i class='fa fa-envelope-open'></i> Invitation</a></li>";
		
		
    
			
echo "<li class='ftr-b-li'><a href='birthdaylist.php' class='bth-notf'>Birthdays<span class='bth-count'>".$brcount."</span></a></li></span><span class='head-li-right'>";
			
	}
	else if(isset($_SESSION['login_user']) &&  isset($_SESSION['business_unique_id'])) {
		
echo "<span class='head-li-left'>";
                echo "<li><a href ='bus_page.php'  class='hdr-post-anc'><i class='fa fa-home'></i> Home</a></li>";
		$nameqry=mysqli_query($conn,"SELECT company_name FROM business WHERE business_uniqueid='$_SESSION[business_unique_id]'");
	        $nameres=mysqli_fetch_assoc($nameqry);
		echo "<li><a href='about-business.php' class='profile-img-icon'><span><i class='fa fa-user'></i> ".$nameres['company_name']."</span></a></li>";
echo "</span>";
		
	}
	else if(isset($_SESSION['login_user']) &&  isset($_SESSION['ngo_unique_id'])) {
	
                echo "<span class='head-li-left'>";
                 echo "<li><a href ='ngo_feed_page.php'  class='hdr-post-anc'><i class='fa fa-home'></i> Home</a></li>";
		$nameqry=mysqli_query($conn,"SELECT ngo_name FROM ngo_resgitration WHERE ngo_unique_id='$_SESSION[ngo_unique_id]'");
	    $nameres=mysqli_fetch_assoc($nameqry);
		echo "<li><a href='about-ngo.php' class='profile-img-icon'><span><i class='fa fa-user'></i> ".$nameres['ngo_name']."</span></a></li>";
echo "</span>";

		
	}
	
    echo "<li><a href='user-log-out.php' class='sign-o'>Sign Out</a></li></div>";
}
?></ul>

</div>
                </div>
            </form>
        </div>
</div>
</div>
</div>
	


<script type="text/javascript">
var NoResultsLabel = "No Results";
  $(function () {
   // Initialize 
   $("#autocomplete").autocomplete({
   
   source: function (request, response) {
   //Fetch data
   $.ajax({
   url: "search111.php",
   type: 'POST',
   dataType: "json",
   data: {
          search: request.term
         },
   success: function (data) {
   if(!data.length)
   {
   results = [NoResultsLabel];
   response(results);
   }
   else{
   console.log(data);
   response(data);
   }
   }
   });
   },
   select: function (event, ui) {
   if (ui.item.label === NoResultsLabel) {
   event.preventDefault();
   }
   else
   {
    console.log(ui.item.owner);
     var ide=ui.item.id;
	//console.log(ide);
     //if(ui.item.owner=="Pet Food"||ui.item.owner=="Accessories"||ui.item.owner=="Veteran"||ui.item.owner=="Fashion"||ui.item.owner=="Pet Paathology //Lab"||ui.item.owner=="Other"||ui.item.owner=="Pet Traders"||ui.item.owner=="Breeders"||ui.item.owner=="Ambulance")
     if(ui.item.owner=="Business")
      {
     location.href="business-page-new-user.php?id="+ide;
    
     }
     else if(ui.item.owner=="Group")
     {
      location.href="groups1.php?id="+ide;
     }
	else if(ui.item.owner=="page")
     {
     location.href="pages1.php?id="+ide;
     }
     else if(ui.item.owner=="ngo")
     {
     location.href="ngo-page-new-user.php?id="+ide;
     }
     else
     {
   //console.log("About login");
   location.href="about3.php?id="+ide;
     }
    
     $('#autocomplete').val(ui.item.value); // display the selected text
     $('#autocomplete').val(ui.item.label);
     $('#autocomplete').val(ui.item.label);
     $('#selectuser_id').val(ui.item.value.id); // save selected id to input
     return false;
     }
     }
   });
   $("#autocomplete").data("ui-autocomplete")._renderItem = function (ul, item) {
    return $('<li/>', {'data-value': item.label}).append($('<a/>', {href: "#"})
            .append($('<img/>', {src: item.image, alt: item.label})).append(item.label))
            .appendTo(ul);
};
  });
</script>
<script>
function loadlink(){
    $('.ads-arc').load(document.URL + ' .ads-arc');
}

loadlink(); 
setInterval(function(){
    loadlink() 
}, 120000);








</script>


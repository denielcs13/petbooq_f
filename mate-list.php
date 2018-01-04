<html>
    <?php require_once 'inc/head-content.php'; ?>
    <body>
        <?php require_once 'inc/header_11.php'; ?>
<div class="main-content user-pro-dtls-page usr-feed-page-nw friend-list-page friend-listing-page rehome-list">
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
                                require_once 'inc/side-bar.php';
                                require_once 'inc/rehome-a-pet-side-bar.php'; 
                                                }

		    ?>
                </div>
                <div class="main-content-inn-left">
                    <div class="col-first">
                       <div class="two-col-post">
                         <h2 class="fr-heading"><span class="fr-h-l">Petmate List</span> <span class="fr-inp-l"><input type="text" name="search" placeholder="Search" id="search"></span></h2>
<?php
session_start();
$parent_id = $_SESSION["pet_unique_id"];
$display2 = "SELECT * FROM pet_meet";
$query_fetchs = "select * from pet_meet ";
$results = mysqli_query($conn, $query_fetchs);
?>
<div id="display_data_met">
    <?php
while($row = mysqli_fetch_array($results))
{
 ?>
                                    <div class="left friend-box">
                                        <div class="post-in-c">
                                            <div class="fr-left">
                                                <div class="fri-image">
                                                    <a href="mate-about.php?id=<?= $row['id'] ?>">
                                                        <?php
                                                        if ($row['pet_photo'] == "") {
                                                            echo "<img class='photo' src='images/fr-pro-big-img.jpg'>";
                                                        } else {
                                                            ?>
                                                            <img class="photo"  alt="" src="<?= $row['pet_photo'] ?>">
                                                        <?php } ?>
                                                    </a>
                                                </div>
                                            </div>
                                            <div class="fr-right">
                                                <div class="fri-name">
                                                    <p class="ttl-lks"><a href="mate-about.php?id=<?= $row['id'] ?>"><?= $row['pet_name'] ?></a></p>
                                                </div>
                                                <div class="usr-cnct-l">
                                                    <p class="pst-text"><?php echo substr($row['about_pet'], 0, 80) ?></p>
                                                </div>
                                            </div>
                                        </div>
                                    </div> 
 
 
 
   
<?php// echo $row['pet_name']."<br>";?>
<?php
 }
 //include 'search.php';
?>
</div>

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script>
    $(document).ready(function () {
        
        $("#search").keyup(function () {
            var data = $("#search").val();
            $.ajax({
                url: 'mate-search.php',
                type: 'POST',
                data: {search:data},
                success: function (response) {
                $("#display_data_met").html(response);
                }
            });
        });
    });
</script>
</div>
                    </div>
                    <?php require_once 'inc/ads_sidebar_d.php'; ?>
                </div>
            </div>
        </div>
        <link rel="stylesheet" href="css/packery-docs.css" media="screen" />
        <script src="js/packery-docs.min.js"></script>
        <?php require_once 'inc/footer.php'; ?>
    </body>
</html>
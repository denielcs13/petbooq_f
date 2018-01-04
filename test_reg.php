<html>
    <?php require_once 'inc/head-content.php'; ?>
    <body>

        <?php require_once 'inc/header.php'; ?>

        <?php
        session_start();
        $error_name = $error_typepet = $error_date = $error_month = $error_year = $error_owner_name = $error_owner_email = $error_passwords = $error_country = $error_mobile = "";
        if (isset($_POST['user_submit'])) {

            $pet_name = trim($_POST["pet_name"]);
            $typepet = trim($_POST["type_pet"]);
            $date_of_birth = trim($_POST["dob"]);
            $month = trim($_POST["month"]);
            $year = trim($_POST["year"]);
            $owner_name = trim($_POST["owner_name"]);
            $owner_email = trim($_POST["owner_email"]);
            $passwords = trim(md5($_POST["passwords"]));
            $country = trim($_POST["country"]);
            $mobile = trim($_POST["mobile"]);
            if (empty($pet_name)) {
                $error_name = "Enter pet name";
            }
            if (empty($typepet)) {
                $error_typepet = "Select pet type";
            }
            if (empty($date_of_birth)) {
                $error_date = "Select date of birth";
            }
            if (empty($owner_name)) {
                $error_owner_name = "Select owner name";
            }
            if (empty($owner_email)) {
                $error_owner_email = "Enter email";
            }
            if (empty($passwords)) {
                $error_passwords = "Enter password";
            }
            if (empty($country)) {
                $error_country = "Select country";
            }

            if (empty($mobile)) {
                $error_mobile = "Enter mobile number";
            }
            if (!empty($pet_name) && !empty($typepet) && !empty($date_of_birth) && !empty($owner_name) && !empty($owner_email) && !empty($passwords) && !empty($country) && !empty($mobile)) {
                $random_number = rand(1000000, 9999999);
                $expireAfter = 2;
                $_SESSION['otp'] = $random_number;
                require_once './dbcon.php';
                $unique = "select(email) from otp_verfication where email ='" . $owner_email . "'";
                $res = mysqli_query($conn, $unique);
                if (mysqli_num_rows($res) == 1) {
                 echo "Already exist";
                }
                
                else 
                    {
                   print_r($random_number);
                    require_once './dbcon.php';
                    $email = $_POST["email"];
                    $subject = "Petbooq verification registration";
                    //$message = "Your one time OTP number".$_SESSION['otp'];
                    $message='<table width="900" cellspacing="0" cellpadding="0" style="line-height: 25px;
    font-family: sans-serif; font-size: 15px;letter-spacing: 0.5px;">
  <tbody><tr>
    <td width="374><img src="http://petbooqtesting.com/images/logo.png" width="200" height="100"></td>
    <td width="524" align="right" style="text-transform:uppercase;"></td>
  </tr>
  <tr>
    <td><font color="#990000" face="Georgia, Times New Roman, Times, serif" size="+2">Registration Verification by Petbooq</td>
    <td>&nbsp;</td>
  </tr>
  <tr style="text-transform:uppercase;">
    <td colspan="2"><strong>'.'Your one time OTP number'.' '.$_SESSION['otp']'</strong><br>
    Thank you the interest shown in our products and services.<br>    <br>
</td>
  </tr> 
  </tbody></table>';
					$header = "mythostest@petbooqtesting.com";
                    mail($owner_email, $subject, $message, $header);
                    $otp_verification = "Insert into otp_verfication(otp,email,createdOn) value (" . $_SESSION['otp'] . ",'$owner_email',NOW())";
                        mysqli_query($conn, $otp_verification);
                        //echo "New record insert sucessfully";
                        //echo 'Message has been sent';
                        $_SESSION['pet_name'] = $pet_name;
                        $_SESSION['typepet'] = $typepet;
                        $_SESSION['dob'] = $date_of_birth;
                        $_SESSION['month'] = $month;
                        $_SESSION['year'] = $year;
                        $_SESSION['owner_name'] = $owner_name;
                        $_SESSION['owner_email'] = $owner_email;
                        $_SESSION['password'] = $passwords;
                        $_SESSION['country'] = $country;
                        $_SESSION['mobile'] = $mobile;
                        $_SESSION['otp'] = $random_number;
                        header("Location:opt-verification.php");
//                    }
                }
            }
        }
        ?>
        <div class="main-content register-page">
            <div class="main-content-inn">
                <div class="reg-left-sec">
                    <div class="reg-left-top">
                        <h2>Trending Images</h2>
                        <div class="tr-img">
                            <div class="tr-img-col">
                                <?php
                                require './dbcon.php';
                                $image = "select * from uploadimages ORDER BY RAND() LIMIT 3";
                                $res = mysqli_query($conn, $image);
                                while ($row = mysqli_fetch_array($res)) {
                                    $dir = $row["uniqueid"] . "/Photos/" . $row["image_name"];
                                    ?>
                                    <div class="image">    <div class="tr-img-col"> <img src="<?php echo $dir; ?>" width="50" height="50"></div></div>
                                    <?php
                                }
                                ?>

                            </div>
                        </div>

                        <div class="tr-video">
                            <h2>Trending Video</h2>
                            <div class="tr-vd-col">
                            <div class="vdo">
                                    <?php
                                    require './dbcon.php';
                                    $image = "select * from videoupload ORDER BY RAND() LIMIT 1";
                                    $res = mysqli_query($conn, $image);
                                    while ($row = mysqli_fetch_array($res)) {
                                        //    $dir = $row["uniqueid"] . "/photo/" . $row["image_name"];
                                        $vid = $row["uniqueid"] . "/Videos/" . $row["video_name"];
                                        
                                        //    print_r($vid);
                                        ?>
                                        <link href="css/video-js.css"  rel="stylesheet">
                                        <script src="js/videojs-ie8.min.js"></script>
                                        <video id="my-video" class="video-js" controls preload="auto" width="600" height="330px" poster="MY_VIDEO_POSTER.jpg" data-setup="{}">
                                                <source src="<?php echo $vid; ?>" type='<?php echo $row["video_type"]; ?>'>
                                            </video>
                                         <script src="http://vjs.zencdn.net/6.2.7/video.js"></script>
                                            <?php
                                        }
                                        ?>
                                </div>
                            </div>
                        </div>
			</div>
                </div>


                <div class="reg-right-sec">
                    <div class="acc-sec-top">
                        <p>Have a Pet?</p>
                        <h1>Create a new account</h1>
                        <p>It's free and always will be.</p>
                    </div>
                    <div class="reg-form-sec">
                        <form action="#" method="post" name="registration" id="userregistration">
                            <div class="pt-dt">
                                <h2 class="heading">Pet Details</h2>
                                <div class="reg-f-row">
                                <input type="text" name="pet_name" id="pet_name" placeholder="Pet Name"/>
<?php
if (empty($_POST["pet_name"])) {
    echo "<p style='color:red'>" . $error_name . "</p>";
}
?></div>
                                <div class="reg-f-row">
                                <select name="type_pet" id="type_pet">
                                    <option value="">Type of Pet</option>
                                    <option value="Cat">Cat</option>
                                    <option value="Dog">Dog</option>
                                    <option value="Rabbit">Rabbit</option>
                                </select>
<?php
if (empty($_POST["type_pet"])) {
    echo "<p style='color:red'>" . $error_typepet . "</p>";
}
?></div>
                                <div class="form-row">
                                    <label>Date of Birth</label> 
                                    <div class="fld-r dob">
<?php
if (empty($_POST["dob"]) && empty($_POST["month"]) && empty($_POST["year"])) {
    echo "<p style='color:red'>" . $error_date . "</p>";
}
?>
                                        <select class="d-sml" name="dob" id="dob">
                                            <option value="">DD</option>
                                            <?php
                                            for ($i = 1; $i <= 31; $i++) {
                                                ?>
                                                <option value="<?php echo $i; ?>"><?php echo $i; ?></option>
                                                <?php
                                            }
                                            ?>
                                        </select>
                                        <select class="d-mid" name="month" id="month">
                                            <option value="">MM</option>
                                            <option value="January">January</option>
                                            <option value="February">February</option>
                                            <option value="March">March</option>
                                            <option value="April">April</option>
                                            <option value="May">May</option>
                                            <option value="June">June</option>
                                            <option value="July ">July</option>
                                            <option value="August">August</option>
                                            <option value="September">September</option>
                                            <option value="October">October</option>
                                            <option value="November">November</option>
                                            <option value="December">December</option>
                                        </select>
                                        <select class="d-big" name="year" id="year">
                                            <option value="">YYYY</option>
                                            <?php for ($i = 1885; $i <= 2040; $i++) { ?>
                                                <option value="<?php echo $i ?>"><?php echo $i; ?></option>
                                                <?php
                                            }
                                            ?>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="usr-dt">
                                <h2 class="heading">Your Details</h2>
                                <div class="reg-f-row">
                                <input type="text" placeholder="Name" name="owner_name" id="owner_name"/>
                                <?php
                                if (empty($_POST["owner_name"])) {
                                    echo "<p style='color:red'>" . $error_owner_name . "</p>";
                                }
                                ?></div>
                                <div class="reg-f-row">   
                                <input type="text" placeholder="Email" name="owner_email" id="owner_email"/>
                                <?php
                                if (empty($_POST["owner_email"])) {
                                    echo "<p style='color:red'>" . $error_owner_email . "</p>";
                                }
                                ?> 
                                <small>Please Enter Your Correct Email, This will be used for login</small>
                                </div>
                                <div class="reg-f-row">
                                <input type="password" placeholder="Password" name="passwords" id="passwords"/>
<?php
if (empty($_POST["password"])) {
    echo "<p style='color:red'>" . $error_passwords . "</p>";
}
?> </div>
								<div class="reg-f-row">
                                <select name="country" id="country">
                                    <option value="">Country</option>
                                    <option value="Australia">Australia</option>
                                    <option value="China">China</option>
                                    <option value="Brazil">Brazil</option>                                    
                                    <option value="Bangladesh">Bangladesh</option>
                                    <option value="Belgium">Belgium</option>
                                    <option value="Cambodia">Cambodia</option>
                                    <option value="Canada">Canada</option> 
                                    <option value="Cuba">Cuba</option>
                                    <option value="France">France</option>
                                    <option value="Germany">Germany</option>
                                    <option value="Hong Kong">Hong Kong</option>
                                    <option value="India">India</option>
                                    <option value="Indonesia">Indonesia</option>
                                    <option value="Ireland">Ireland</option>
                                    <option value="Italy">Italy</option>
                                    <option value="Japan">Japan</option>
                                    <option value="Kenya">Kenya</option>
                                    <option value="Malaysia">Malaysia</option>
                                    <option value="Maldives">Maldives</option>
                                    <option value="Mauritius">Mauritius</option>
                                    <option value="Mexico">Mexico</option>
                                    <option value="Nepal">Nepal</option>
                                    <option value="Netherlands">Netherlands</option>
                                    <option value="New Zealand">New Zealand</option>
                                    <option value="Norway">Norway</option>
                                    <option value="Pakistan">Pakistan</option>
                                    <option value="Philippines">Philippines</option>
                                    <option value="Quilon">Quilon</option>
                                    <option value="Russia CIS">Russia CIS</option>
                                    <option value="Singapore">Singapore</option>
                                    <option value="South Africa">South Africa</option>
                                    <option value="South Korea">South Korea</option>
                                    <option value="Spain">Spain</option>
                                    <option value="Sri Lanka">Sri Lanka</option>
                                    <option value="Sweden">Sweden</option>
                                    <option value="Switzerland">Switzerland</option>
                                    <option value="Thailand">Thailand</option>                              
                                    <option value="UK">UK</option>
                                    <option value="USA">USA</option>
                                    <option value="Zimbabwe">Zimbabwe</option>
                                </select>
								<?php
								if (empty($_POST["country"])) {
									echo "<p style='color:red'>" . $error_country . "</p>";
								}
								?></div>
                                <div class="form-row">
                                    <label>Phone No.</label> 
                                    <div class="fld-r phn">
                                        <input type="text" placeholder="" value="+91" class="sml"/>
                                        <input type="text" placeholder="No." class="mid" name="mobile" id="mobile"/>
										<?php
										if (empty($_POST["mobile"])) {
											echo "<p style='color:red'>" . $error_mobile . "</p>";
										}
										?>
                                    </div>
                                    <small>OTP will be sent to the registerd mobile number </small>
                                </div>
                            </div>

                            <div class="dic-inf">
                                <p>By clicking Create Account, you agree to our Terms and confirm 
                                    that you have read our Data Policy, 
                                    including our Cookie Use Policy. You may receive SMS message 
                                    notifications from Facebook and can opt out at any time.
                                </p>
                            </div>
                            <div class="sub-btn">
                                <input type="submit" value="Create Account" name="user_submit" onclick=" return validate()"/>
                            </div>
                        </form>
                        <script type="text/javascript">
                            function validate()
                            {
                                var petname = document.getElementById("pet_name");
                                if (petname.value == "")
                                {
                                    alert("Enter pet name");
                                    return false;
                                }
                                var type_pet = document.getElementById("type_pet");
                                if (type_pet.value == "")
                                {
                                    alert("Select pet type");
                                    return false;
                                }
                                var dob = document.getElementById("dob");
                                if (dob.value == "")
                                {
                                    alert("Select date");
                                    return false;
                                }
                                var month = document.getElementById("month");
                                if (month.value == "")
                                {
                                    alert("Select month");
                                    return false;
                                }
                                var year = document.getElementById("year");
                                if (year.value == "")
                                {
                                    alert("Select year");
                                    return false;
                                }
                                var year = document.getElementById("year");
                                if (year.value == "")
                                {
                                    alert("Select year");
                                    return false;
                                }

                                var owner_name = document.getElementById("owner_name");
                                if (owner_name.value == "")
                                {
                                    alert("Enter owner name");
                                    return false;
                                }
                                var owner_email = document.getElementById("owner_email");
                                if (owner_email.value == "")
                                {
                                    alert("Enter owner email");
                                    return false;
                                }
                                var passwords = document.getElementById("passwords");
                                if (passwords.value == "")
                                {
                                    alert("Enter password");
                                    return false;
                                }

                                var country = document.getElementById("country");
                                if (country.value == "")
                                {
                                    alert("Select country");
                                    return false;
                                }


                                var mobile = document.getElementById("mobile");
                                if (mobile.value == "")
                                {
                                    alert("Enter mobile number");
                                    return false;

                                }
                        </script>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
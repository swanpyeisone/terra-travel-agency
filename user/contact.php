<?php 
error_reporting(0);
include '../config/connection.php';
  $id=$_REQUEST['pid'];
  $n = "SELECT name FROM package_tbl WHERE package_id = $id";
  $re=mysqli_query($con,$n);

  while ($row = mysqli_fetch_assoc($re)) {
  $r = $row['name'];
  ?>
<?php 
  }

?>
<?php 

 $name = $email = $nrc = $phone = $adult = $children = "";
 $nameErr = $emailErr = $nrcErr = $phoneErr = $adultErr = $childrenErr = $think = "";
 $Name = $Email = $Nrc = $Phone = $Adult = $Children =  "";

 if(isset($_POST['btn_save'])){
    if (empty($_POST["name"])) {
    $nameErr = "Name is required";
    } else {
    $name = test_input($_POST["name"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[a-zA-Z ]*$/",$name)) {
      $nameErr = "Only letters and white space allowed";
    }
  }

  if (empty($_POST["email"])) {
    $emailErr = "Email is required";
  } else {
    $email = test_input($_POST["email"]);
    // check if e-mail address is well-formed
    if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
      $emailErr = "Invalid email format";
    }
  }

  if (empty($_POST["nrc"])) {
    $nrcErr = "NRC is required";
  } else {
    $nrc = test_input($_POST["nrc"]);
    // check if e-mail address is well-formed
    if (!preg_match("/^([0-9]{1,2})\/([A-Z][a-z]|[A-Z][a-z][a-z])([A-Z][a-z]|[A-Z][a-z][a-z])([A-Z][a-z]|[A-Z][a-z][a-z])\([N,P,E]\)[0-9]{6}$/",$nrc)) {
      $nrcErr = "Invalid NRC format";
    }
  }

  if (empty($_POST["phone"])) {
    $phoneErr = "Phone Number is required";
  } else {
    $phone = test_input($_POST["phone"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[0-9]{11}$/", $phone)) {
  // $phone is valid
         $phoneErr = "Invalid Phone Number";   
    }
  }

  if (empty($_POST["adult"])) {
    $adultErr = "Adult is required";
  } else{
    $adult = test_input($_POST["adult"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[0-9]$/", $adult)) {
  // $phone is valid
         $adultErr = "Invalid Adult";   
    }else {
        $Username=mysqli_real_escape_string($con,$_POST["name"]);
        $Email=mysqli_real_escape_string($con,$_POST["email"]);
        $Nrc=mysqli_real_escape_string($con,$_POST["nrc"]);
        $Phone=mysqli_real_escape_string($con,$_POST["phone"]);
        $Adult=mysqli_real_escape_string($con,$_POST["adult"]);
        $Children=mysqli_real_escape_string($con,$_POST["children"]);

        $sql = "INSERT INTO user_tbl(package_name, username, email, userNRC, phone, adult_people, children_people) VALUES ('$r','$Username',' $Email','$Nrc','$Phone',' $Adult','$Children')";

        
        mysqli_query($con,$sql);

        $think = "Thank you for your Booking!!";
  }
  }

if (empty($_POST["children"])) {
    
  } else if(test_input($_POST["children"])) {
    $children = test_input($_POST["children"]);
    // check if name only contains letters and whitespace
    if (!preg_match("/^[0-9]$/", $children)) {
  // $phone is valid
         $childrenErr = "Invalid Children";   
    }
  }  
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

 ?>


<?php include("user_header.php"); ?>


<section class="page-section " id="contact">
    <div class="container">
        <div class="text-center">
            <h2 class="section-heading text-uppercase mt-4">Booking</h2>

        </div>
        <center>
            <h1><span class="text-success"><?php echo $think;?></span>
                <p class="help-block text-danger"></p>
            </h1>

            <div class="container py-3">
                <form id="contactForm" name="sentMessage" novalidate="novalidate" method="post">

                    <label class="text-label">Name
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input name="name" type="text" placeholder="Your Name"
                        data-validation-required-message="Please enter your name.">
                    <span class="text-danger"><?php echo $nameErr; ?></span>
                    <p class="help-block text-danger"></p><br><br>

                    <label class="text-label">Email
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;:&nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input name="email" type="email" placeholder="Your Email "
                        data-validation-required-message="Please enter your email address.">
                    <span class="text-danger"><?php echo $emailErr; ?></span>
                    <p class="help-block text-danger"></p><br><br>

                    <label class="text-label">NRC
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :
                        &nbsp;&nbsp;&nbsp;&nbsp;</label>
                    <input name="nrc" type="text" placeholder="Enter NRC"
                        data-validation-required-message="Please enter your NRC.">
                    <span class="text-danger"><?php echo $nrcErr; ?></span>
                    <p class="help-block text-danger"></p><br><br>

                    <label class="text-label">Phone no &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; : &nbsp;&nbsp;&nbsp;</label>
                    <input name="phone" type="tel" placeholder="Your Phone "
                        data-validation-required-message="Please enter your phone number.">
                    <span class="text-danger"><?php echo $phoneErr; ?></span>
                    <p class="help-block text-danger"></p><br><br>

                    <label
                        class="text-label">Adult&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        :&nbsp;&nbsp;&nbsp;</label>
                    <input name="adult" type="text" placeholder="0">
                    <span class="text-danger"><?php echo $adultErr; ?></span>
                    <p class="help-block text-danger"></p><br><br>

                    <label class="text-label">Children&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        :&nbsp;&nbsp;&nbsp;</label>
                    <input name="children" type="text" placeholder="(2-12 years)">
                    <span class="text-danger"><?php echo $childrenErr; ?></span>
                    <p class="help-block text-danger"></p><br><br>

                    <div class="text-center">
                        <div id="success"></div>
                        <button class="btn btn-primary btn-xl text-uppercase margin-left mb-5" id="sendMessageButton"
                            name="btn_save" type="submit">Send</button>
                        <div id="success"></div>
                    </div>
                </form>
            </div>
        </center>
    </div>
</section>

<?php 
  include("user_footer.php");
?>
</body>

</html>

<?php 
  include("../config/connection.php");
  $nameErr = $pswErr = $error = "";
  $name = $password = ""; 
  if(isset($_POST['btn_login'])){
    if (empty($_POST['name'])) {
        $nameErr = "AdminName is required";
    }else if (empty($_POST['psw'])) {
        $pswErr = "Password is required";
    }else{
      $name = $_POST['name'];
      $password = $_POST['psw'];

      mysqli_select_db($con,'terra');

      $s = "select * from admin_tbl where adminname = '$name' && adminpassword = '$password'";

      $result = mysqli_query($con,$s);

      $num = mysqli_num_rows($result);

      if($num == 1){
        header('location:home.php');
      }else{
        
        $error = "Invalid adminname or password";
      }
    }
  }
 ?>

<!DOCTYPE html>
<html>
<head>
	<title></title>
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button {
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

button:hover {
  opacity: 0.8;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 20%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}
span{
  color:red;
}

/* Add Zoom Animation */

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>

<h2 align="center">Admin Login Form</h2>


<div>
  
  <form class="modal-content animate" action="index.php" method="post">
    

    <div class="container">	

      <label for="name"><b>Adminname</b></label>
      <input type="text" placeholder="Enter Adminname" name="name">
      <span class="text-danger"><?php echo $nameErr; ?></span>
      <p class="help-block text-danger"></p><br>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw">
      <span class="text-danger"><?php echo $pswErr; ?></span>
      <p class="help-block text-danger"></p><br>
      
      <span class="text-danger"><?php echo $error; ?></span>
      <p class="help-block text-danger"></p>
      <button type="submit" name="btn_login">Login</button>
      
    </div>

  </form>
</div>

</body>
</html>
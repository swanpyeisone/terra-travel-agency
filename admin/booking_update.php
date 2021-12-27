<?php 
	
include '../config/connection.php';
if(isset($_POST['update'])){
	$id=$_REQUEST['id'];
	$price = $_POST['price'];

	$sql = "UPDATE user_tbl SET total_price='$price' WHERE userid = $id";
	mysqli_query($con,$sql);
	header('location:confirm_booking.php');
}
 ?>

 <!DOCTYPE html>
 <html>
 <head>
 	<title></title>
 <meta charset="utf-8">
  <meta name="viewport" content="width=device-width,initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

<!-- Popper JS -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

<!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
<link rel="stylesheet" type="text/css" href="library/fontawesome/fontawesome-all.min.css">

<link rel="stylesheet" type="text/css" href="admin_style.css">
 </head>
 <body>
 	<?php 
 	include('admin_header.php')
 	 ?>
 	<center>
 	<div class="container py-3">
  		<form method="POST" enctype="multipart/form-data">
  	
 			<input type="text" placeholder="Total Price" aria-label="Username" aria-describedby="basic-addon1" name="price">
		<br><br>

	<button name="update" class="btn btn-primary">Update</button>
 </form>
 </div>
</center>
<?php 
include('admin_footer.php')
 ?>


 </body>
 </html>

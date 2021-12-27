<?php 
include '../config/connection.php';
if(isset($_POST['update'])){
	$id=$_REQUEST['typeid'];
	$name = $_POST['triptypename'];
	$about = $_POST['about'];
	$image = $_FILES['TypeImage']['name'];

	$target = '../trip_image/' . $image;

	$sql = "UPDATE triptype_tbl SET triptypename='$name',About='$about',photo='$target' WHERE typeid = $id";
	
	if(mysqli_query($con,$sql)){
        move_uploaded_file($_FILES['TypeImage']['tmp_name'], $target);
        header('location:triptype_entry.php');
      }else{
        echo "query error : ".mysqli_error($con);
      }
	
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
    include("admin_header.php");
    ?>
    <center>
 	<div class="container py-3">
  <form method="POST" enctype="multipart/form-data">
  	
 
 <input type="text" placeholder="TripTypeName" aria-label="Username" aria-describedby="basic-addon1" name="triptypename">
<br><br>


 <input type="text" placeholder="About" aria-label="Username" aria-describedby="basic-addon1" name="about"><br><br>
<br><br>

<div>
	Image
	<input type="file" name="TypeImage"><br><br>
</div>

 <button name="update" class="btn btn-success">Update</button>
 </form>
</div>
</center>
 	
<?php
    include("admin_footer.php");
 ?>
 </body>
 </html>

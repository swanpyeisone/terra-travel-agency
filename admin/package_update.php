<?php 
include '../config/connection.php';
if(isset($_POST['update'])){
	$id=$_REQUEST['packageid'];
	$name = $_POST['name'];
	$duration = $_POST['duration'];
	$startdate = $_POST['startdate'];
	$enddate = $_POST['enddate'];
	$adult_price = $_POST['adult_price'];
	$children_price = $_POST['children_price'];

	$image = $_FILES['TypeImage']['name'];

	$target = '../package_image/' . $image;

	$sql = "UPDATE package_tbl SET name='$name',duration='$duration',startdate='$startdate',enddate='$enddate',adult_price='$adult_price',children_price='$children_price',photo='$target' WHERE package_id = $id";
	
	if(mysqli_query($con,$sql)){
        move_uploaded_file($_FILES['TypeImage']['tmp_name'], $target);
        header('location:package_entry.php');
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
 	include('admin_header.php')
 	 ?> 
   <center>
 	<div class="container py-3">
  <form method="POST" enctype="multipart/form-data">
  	

 <input type="text" placeholder="Name" aria-label="Username" aria-describedby="basic-addon1" name="name">
<br><br>


 <input type="text" placeholder="Duration" aria-label="Username" aria-describedby="basic-addon1" name="duration">
<br><br>

  StartDate
 <input type="date" name="startdate">
<br><br>

  EndDate
 <input type="date" name="enddate">
<br><br>

 <input type="text" placeholder="Adult Price" aria-label="Username" aria-describedby="basic-addon1" name="adult_price">
<br><br>

 <input type="text"
  placeholder="Children Price" aria-label="Username" aria-describedby="basic-addon1" name="children_price">
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
include('admin_footer.php')
 ?>

 
 </body>
 </html>

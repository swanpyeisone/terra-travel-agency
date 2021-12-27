
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
<div class="container">

	<table class="table table-striped">
	<tr  class="bg-dark" style="color: white;">
		<th>ID</th>
		<th>Package Name</th>
		<th>User Name</th>
		<th>Email</th>
		<th>NRC</th>
		<th>Phone</th>
		<th>Adult Price</th>
		<th>Chidren Price</th>
		<th>Total Price</th>
	</tr>
	
	

<?php 
	include '../config/connection.php';


	$sql = "SELECT * FROM user_tbl";

	$result = mysqli_query($con,$sql);

	while($gg = mysqli_fetch_array($result)){
?>

<tr>
	<td><?php echo $gg['userid'] ?></td>
	<td><?php echo $gg['package_name'] ?></td>
	<td><?php echo $gg['username'] ?></td>
	<td><?php echo $gg['email'] ?></td>
	<td><?php echo $gg['usernrc'] ?></td>
	<td><?php echo $gg['phone'] ?></td>
	<td><?php echo $gg['adult_people'] ?></td>
	<td><?php echo $gg['children_people'] ?></td>
	<th><?php echo $gg['total_price'] ?></th>
	
	<td><a href="booking_update.php?id=<?php echo $gg['userid']?>"><button class="btn btn-success">Update</button></a></td>
	<td><a href="booking_delete.php?id=<?php echo $gg['userid']?>"><button class="btn btn-danger">Delete</button></a></td>
</tr>


<?php 
	}
?>
</table>
</div> 
</body>
</html>
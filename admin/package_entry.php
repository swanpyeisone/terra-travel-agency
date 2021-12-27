<?php 

	include("../config/connection.php");
?>
<?php 

$triptypeid="";
$name="";
$duration="";
$start_date="";
$end_date="";
$adult_price="";
$children_price="";
$image="";
$msg = "";

if (isset($_POST['btn_upload'])) {

	$triptypeid=mysqli_real_escape_string($con,$_POST["triptype_name"]);
	$name=mysqli_real_escape_string($con,$_POST["package_name"]);
	$duration=mysqli_real_escape_string($con,$_POST["duration"]);
	$start_date=mysqli_real_escape_string($con,$_POST["start_date"]);
	$end_date=mysqli_real_escape_string($con,$_POST["end_date"]);
	$adult_price=mysqli_real_escape_string($con,$_POST["adult_price"]);
	$children_price=mysqli_real_escape_string($con,$_POST["children_price"]);
	$image=mysqli_real_escape_string($con,$_FILES["image"]["name"]);

	$target = '../package_image/' . $image;
	
	$sql = "INSERT INTO package_tbl(typeid, name, duration, startdate, enddate, adult_price, children_price, photo) VALUES ('$triptypeid','$name','$duration','$start_date','$end_date','$adult_price','$children_price','$target')";

	if (mysqli_query($con,$sql)) {
		move_uploaded_file($_FILES['image']['tmp_name'],$target);
		$msg =  "Save Success";
	}else{
		echo "query error :". mysqli_error($con);
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
<center >
	<form action="package_entry.php" method="POST" enctype="multipart/form-data" class="entry_form py-3"> 
		<select name="triptype_name">
				<?php 
					$sql = "SELECT typeid, triptypename FROM triptype_tbl";
					$result = mysqli_query($con,$sql);

					while ($row = mysqli_fetch_assoc($result)) { ?>
					<option value="<?php echo $row['typeid'] ?>">
						<?php echo $row['triptypename']; ?>						
					</option>
				<?php } ?>
		</select><br><br>
		 Package Name
		<input type="text" name="package_name" placeholder="Enter package name"><br><br>
	
		Duration 
		<input type="text" name="duration" placeholder="Enter package name"><br><br> 
	
		Start Date
		<input type="date" name="start_date" ><br><br>

		End Date
		<input type="date" name="end_date"><br><br>

		Adult Price
		<input type="text" name="adult_price"><br><br>

		Children Price
		<input type="text" name="children_price"><br><br>

		Image
		<input type="file" name="image" ><br><br>

		<input class="btn btn-success" type="submit" name="btn_upload" value="Save">
	</form>
	<h3>Update and delete</h3>
</center>

<div class="container">

	<table class="table table-striped">
	<tr class="bg-dark" style="color: white;">
		<th>ID</th>
		<th>Name</th>
		<th>Duration</th>
		<th>Start Date</th>
		<th>End Date</th>
		<th>Adult Price</th>
		<th>Children Price</th>
		<th>Photo</th>
		<th></th>
		<th></th>
	</tr>
	
	

<?php 
	include '../config/connection.php';


	$sql = "SELECT * FROM package_tbl";

	$result = mysqli_query($con,$sql);

	while($gg = mysqli_fetch_array($result)){
?>

<tr>
	<td><?php echo $gg['package_id'] ?></td>
	<td><?php echo $gg['name'] ?></td>
	<td><?php echo $gg['duration'] ?></td>
	<td><?php echo $gg['startdate'] ?></td>
	<td><?php echo $gg['enddate'] ?></td>
	<td><?php echo $gg['adult_price'] ?></td>
	<td><?php echo $gg['children_price'] ?></td>
	<td><?php echo '<img src="../package_image/'. $gg['photo'].'" height="100px;" width="200px;">'?></td>
	<td><a href="package_update.php?packageid=<?php echo $gg['package_id']?>"><button class="btn btn-success">Update</button></a></td>
	<td><a href="package_delete.php?packageid=<?php echo $gg['package_id']?>"><button class="btn btn-danger">Delete</button></a></td>
</tr>


<?php 
	}
?>
</table>
	</div>

<?php
    include("admin_footer.php");
?>
</body>
</html>
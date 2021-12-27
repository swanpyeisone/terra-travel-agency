<?php 
	include("../config/connection.php");
 ?>

<?php 
 $id = "";
 $tripname="";
 $tripimage="";
 $about="";
 $update_name="";
 $msg = "";

 if (isset($_POST['Save'])) {
  	$tripname = mysqli_real_escape_string($con,$_POST["name"]);
    $about = mysqli_real_escape_string($con,$_POST["about"]);
  	$tripimage = mysqli_real_escape_string($con,$_FILES["TypeImage"]["name"]);    

  	$target = '../trip_image/' . $tripimage;
  	
    $query = "Select * from triptype_tbl where triptypename = '" . $tripname ."'";
    $result = mysqli_query($con, $query);
    $row = mysqli_num_rows($result);

    if($row == 1){
      $msg =  "Duplicate Data";
    }
    else{
      $sql = "INSERT INTO triptype_tbl( triptypename,About, photo) VALUES ('$tripname','$about','$target')";
      if(mysqli_query($con,$sql)){
        move_uploaded_file($_FILES['TypeImage']['tmp_name'], $target);
        header('location:triptype_entry.php');
      }else{
        echo "query error : ".mysqli_error($con);
      }
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
    if($msg != ""){
      echo $msg;
    }
?>

<center>
  <form action="triptype_entry.php" method="POST" enctype="multipart/form-data" class="entry_form">      
    <h2>TripType Entry</h2>
    <h3>Data Entry</h3>
    TripTypeName  &nbsp;&nbsp;
    <input type="text" name="name"><br><br>
    About &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="text" name="about"><br><br>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Image
    <input type="file" name="TypeImage"><br><br>
    <input class="btn btn-success" type="submit" name="Save" value="Save" class="ml-3"><br><br>
   </form>
   <h3>Update and delete</h3>
   </center> 


	<div class="container">

	<table class="table table-striped">
	<tr class="bg-dark" style="color: white;">
		<th>ID</th>
		<th>Tripname</th>
		<th>About</th>
		<th>Photo</th>
		<th></th>
		<th></th>
	</tr>
	
	

<?php 
	include '../config/connection.php';


	$sql = "SELECT * FROM triptype_tbl";

	$result = mysqli_query($con,$sql);

	while($gg = mysqli_fetch_array($result)){
?>

<tr>
	<td><?php echo $gg['typeid'] ?></td>
	<td><?php echo $gg['triptypename'] ?></td>
	<td><?php echo $gg['About'] ?></td>
	<td><?php echo '<img src="../trip_image/'. $gg['photo'].'" height="100px;" width="200px;">'?></td>
	<td><a href="triptype_update.php?typeid=<?php echo $gg['typeid']?>"><button class="btn btn-success">Update</button></a></td>
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
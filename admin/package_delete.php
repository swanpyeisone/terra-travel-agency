<?php 
include '../config/connection.php';

$id = $_GET['packageid'];

$sql = "DELETE FROM package_tbl WHERE package_id = $id";

mysqli_query($con,$sql);
header('location:package_entry.php');
 ?>
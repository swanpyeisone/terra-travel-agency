<?php 
include '../config/connection.php';

$id = $_GET['id'];

$sql = "DELETE FROM user_tbl WHERE userid = $id";

mysqli_query($con,$sql);
header('location:confirm_booking.php');
 ?>
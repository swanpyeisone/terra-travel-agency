<?php 
$did=$_REQUEST['desid'];
include '../config/connection.php';
 ?>
  <?php include("user_header.php"); ?>

<div class="container py-3">
  <?php 
        $sql = "SELECT * FROM destination_tbl where destinationid=" . $did;
        $result = mysqli_query($con,$sql);

        while ($row = mysqli_fetch_assoc($result)) {
        ?>
          <div class="main" style="width:95%;">
            <h1 class="py-4" style="font-weight: bold;text-align: center;"><?php echo $row["name"]; ?></h1>
            <img data-aos="fade-right" data-aos-delay="50" data-aos-duration="1500" src="<?php echo $row["photo"];?>"  width="1050px;" height="500px;">
            <p class="section-subheading #249638 py-3" data-aos="fade-left" style="font-size: 18px;"><?php echo $row["text"]; ?></p>
          </div>
        <?php 
          }
         ?>
    
  </div>
 
<div class="container mb-3" style="background-color: #d9dddc;">
  <div class="widget-box"> 
  <h3 class="widget-title text-center" data-aos="zoom-in" data-aos-delay="50" data-aos-duration="1500" style="font-weight: bold;">Photo Gallery<a href="photo_gallery.php?did=<?php echo "$did"; ?>" class="btn btn-outline-success mt-2 ml-2">View More</a></h3>
  
  <div class="gallery-image py-3">
  <?php 
    $sql = "SELECT * FROM photo_tbl WHERE destinationid = $did LIMIT 0,9";
    $result = mysqli_query($con,$sql);

    while ($row = mysqli_fetch_assoc($result)) {
    ?>
      
      <img data-aos="fade-down" data-aos-delay="50" data-aos-duration="1500" class="mr-2 ml-2" src="<?php echo $row["photo"];?>" width="100px;" height="80px;">
      
    <?php 
    }
    ?>
    
    </div>
  

</div>

</div>
<?php 
  include("user_footer.php");
?>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>
</body>
</html>
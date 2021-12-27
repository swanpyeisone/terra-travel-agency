<?php 
$did=$_REQUEST['did'];
include '../config/connection.php';
 ?>
  <?php include("user_header.php"); ?>



<section class="page-section"> 
  <div class="container"> 
    <div class="text-center">
          <h1 class="section-heading1 text-uppercase mt-3" style="font-weight: bold;">Photo Gallery</h1>
      </div>
    </div>  
</section>

<section class="page-section">
  <div class="container" id="portfolio">
    
    
    <div class="row">
      
            <?php 
              $sql = "SELECT * FROM photo_tbl WHERE destinationid= $did";
              $result = mysqli_query($con,$sql);

            while ($row = mysqli_fetch_assoc($result)) {
            ?>
            <div class="col-lg-4 col-sm-6 mb-4">
            <div class="portfolio-item">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">
            <img class="img-fluid" data-aos="flip-left" data-aos-delay="50" data-aos-duration="1500" src="<?php echo $row["photo"];?>" width="800px" height="415px">
            </a>
            </div>
            </div>
            <?php 
            }
            ?>
         
    </div>
  </div>

</section>
<?php 
  include("user_footer.php");
?>
<script src="https://unpkg.com/aos@next/dist/aos.js"></script>
  <script>
    AOS.init();
  </script>
</body>
</html>
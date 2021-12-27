<?php 
include '../config/connection.php';
 ?>
  <?php include("user_header.php"); ?>

<section class="page-section"> 
	<div class="container">	
		<div class="text-center">
        <h1 class="section-heading1 text-uppercase mt-3" style="font-weight: bold;">Destinations</h1>
        <p class="section-subheading" style="font-size: 20px;">Myanmar as a whole country is such an exciting destination for its distinctive culture and geographical diversity. Various kinds of tourism such as adventure, trekking, cultural tour, ecotourism and water-related activities can be found in Myanmar as a one-stop destination. It is a cluster of famous destinations to visit. At the time you are in Myanmar, we would suggest choosing the following top 10 best destinations in Myanmar.

 				</p>
    </div>
  </div>	
</section>

<section class="page-section">
  <div class="container" id="portfolio">
    
    
    <div class="row">
      <?php 
        $sql = "SELECT * FROM destination_tbl";
        $result = mysqli_query($con,$sql);

        while ($row = mysqli_fetch_assoc($result)) {
        ?>
        <div class="col-lg-4 col-sm-6 mb-4">
          <div class="portfolio-item" data-aos="fade-down">
            <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">      
              <img class="img-fluid" src="<?php echo $row["photo"];?>" width="340px;" height="191.25px;">
            </a>
            <div class="portfolio-caption py-5">
            <div class="portfolio-caption-heading mb-3" style="color: green;"><?php echo $row["name"]; ?>
              
            </div>
            <div class="portfolio-caption-subheading text-muted"><?php echo $row["about"]; ?></br><a href="destination_list.php?desid=<?php echo $row["destinationid"];?>" class="btn btn-outline-success" style="float: right;">View Detail</a>
            </div>
          </div>
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
<?php 
    $tid=$_REQUEST['triptypeid'];

    include '../config/connection.php';
    
    include("user_header.php"); 

?>
     
 <section class="page-section mx-5">

    <div class="container" id="portfolio">
      <div class="text-center">
          <h1 class="section-heading1 text-uppercase mb-4" style="letter-spacing: 0.2em;font-weight: bold;">Packages</h1>
      </div>
    <div class="row">
            
            <?php 
            $sql="SELECT * FROM package_tbl where typeid=" . $tid;
            $result = mysqli_query($con,$sql);
            if(mysqli_num_rows($result) > 0)
            {

                while ($row = mysqli_fetch_assoc($result)) {

                ?>
                 <div class="col-lg-4 col-sm-6 mb-4">
                    <div class="portfolio-item" data-aos="flip-right" data-aos-delay="50" data-aos-duration="1500">
                        <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">  
                                       
                                 <img class="img-fluid" src="<?php echo $row['photo']; ?>" alt="" />
                        </a>
                        <div class="portfolio-caption py-5">
                            <div class="portfolio-caption-heading mb-3" style="color: green;"><?php echo $row['name']; ?></div>
                            <div class="portfolio-caption-subheading text-muted">
                                Duration : <?php echo $row['duration']; ?> <br>
                                Start Date : <?php echo $row['startdate'];?><br>
                                End Date : <?php echo $row ['enddate']; ?> <br>
                                Adult Price : <?php echo $row['adult_price']; ?><br>
                                Children Price : <?php echo $row['children_price']; ?><br>
                                <a href="contact.php?pid=<?php echo $row["package_id"];?>"><button class="btn btn-outline-success" style="float: right;">Book</button></a>
                            </div>

                        </div>
                               
                    </div>
                </div>

                <?php 
                    }
                }
                else{
                    echo "No packages";
                }
                ?>
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
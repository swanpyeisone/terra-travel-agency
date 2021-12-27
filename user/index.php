<?php 
include '../config/connection.php';
 ?>
	<?php include("user_header.php"); ?>

<header>
    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-aos="fade-down">
      	<ol class="carousel-indicators">
        	<li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
        	<li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
        	<li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="3"></li>
          <li data-target="#carouselExampleIndicators" data-slide-to="4"></li>
      	</ol>
      	<div class="carousel-inner" role="listbox">
        <!-- Slide One - Set the background image for this slide in the line below -->
        	<div class="carousel-item active" style="width: 1549px;height: 560px;background-image: url('../image/main/a.jpg')";>
          		<div class="carousel-caption d-none d-md-block">
            
          		</div>
        	</div>
        <!-- Slide Two - Set the background image for this slide in the line below -->
        	<div class="carousel-item" style="width: 1549px;height: 560px;background-image: url('../image/main/b.jpg')">
          		<div class="carousel-caption d-none d-md-block">
            
         	 	</div>
        	</div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
        	<div class="carousel-item" style="width: 1549px;height: 560px;background-image: url('../image/main/c.jpg')">
          		<div class="carousel-caption d-none d-md-block">
            
          		</div>
        	</div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="width: 1549px;height: 560px;background-image: url('../image/main/d.jpg')">
              <div class="carousel-caption d-none d-md-block">
            
              </div>
          </div>
        <!-- Slide Three - Set the background image for this slide in the line below -->
          <div class="carousel-item" style="width: 1549px;height: 560px;background-image: url('../image/main/e.jpg')">
              <div class="carousel-caption d-none d-md-block">
            
              </div>
          </div>
      	</div>
      	<a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
        	<span class="carousel-control-prev-icon" aria-hidden="true"></span>
        	<span class="sr-only">Previous</span>
      	</a>
      	<a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
        	<span class="carousel-control-next-icon" aria-hidden="true"></span>
        	<span class="sr-only">Next</span>
      	</a>

    </div>
</header>

<section class="page-section"> 
	<div class="container" data-aos="flip-up" data-aos-delay="50" data-aos-duration="1500">	
		<div class="text-center mt-3">
        	<h1 class="section-heading1 text-uppercase" style="color: green;">Welcome to Terra Travel Agency</h1>
        		<p class="section-subheading #98ff98 mb-1" style="font-size: 20px;">Traveling is an extraordinary experience every person needs to try. It reveals a whole new and exciting world out there, opens out your inner strength, and presents with unforgettable adventures.There is nothing quite like traveling, like seeing a new place for the first time or returning to a favorite one. People of all ages, from all around the world, go to foreign places for different reasons – mainly, for work, family, and leisure. Whether by plane, train, ship or by automobile, traveling is generally a pleasurable experience, at least for the people who can financially afford comfortable and safe methods of travel. But it has more benefits than satisfying one’s need to make money, like, for example, to see loved ones and enjoy oneself on vacation. There are other benefits of traveling worth mentioning and trying out. </p><hr>
    	</div>
    </div>	
</section>
<section class="page-section">
  <div class="container" id="portfolio">
    <div class="text-center">
      <h1 class="section-subheading1 text-uppercase" style="letter-spacing: 0.1em;font-weight: bold;">Packages For You</h1>
    </div>
    
    <div class="row py-4">
      <?php 
        $sql = "SELECT * FROM triptype_tbl";
        $result = mysqli_query($con,$sql);

        while ($row = mysqli_fetch_assoc($result)) {
       ?>
      <div class="col-lg-4 col-sm-6 mb-4" data-aos="zoom-in" data-aos-delay="50" data-aos-duration="1500">
        <div class="portfolio-item">
          <a class="portfolio-link" data-toggle="modal" href="#portfolioModal1">       
            <img class="img-fluid" src="<?php echo $row["photo"];?>" alt=""/></a>
          <div class="portfolio-caption py-5">
          <div class="portfolio-caption-heading mb-3" style="color: green;">
            <?php echo $row["triptypename"];?><br>
             
            </div>
          <div class="portfolio-caption-subheading text-muted">
             <?php echo $row["About"];?><br><br>
          <a href="packages_list.php?triptypeid=<?php echo $row["typeid"];?>" class="btn btn-outline-success" style="float: right;">View Detail</a> 
          </div>
          </div>
        </div>
      </div>
    <?php
    }
    ?>
      
  </div>
</section>

<section class="page-section">
  <div class="container">
    <div class="col-lg-7 float-left" data-aos="fade-right" data-aos-delay="50" data-aos-duration="1500">
    <h2 class="section-heading" style="font-weight: bold;">The Golden Myanmr</h2>
    <p>Myanmar or Burma (see §Etymology), officially the Republic of the Union of Myanmar, is a country in Southeast Asia. Myanmar is bordered by Bangladesh and India to its northwest, China to its northeast, Laos and Thailand to its east and southeast, and the Andaman Sea and the Bay of Bengal to its south and southwest. With a size of 676,578 square kilometres (261,228 square miles), Myanmar is the largest of the Mainland Southeast Asian states by area. As of 2017, the population is about 54 million.Its capital city is Naypyidaw, and its largest city is Yangon (Rangoon).Myanmar has been a member of the Association of Southeast Asian Nations (ASEAN) since 1997.Early civilisations in Myanmar included the Tibeto-Burman-speaking Pyu city-states in Upper Burma and the Mon kingdoms in Lower Burma.In the 9th century, the Bamar people entered the upper Irrawaddy valley, and following the establishment of the Pagan Kingdom in the 1050s, the Burmese language, culture and Theravada Buddhism slowly became dominant in the country. The Pagan Kingdom fell to Mongol invasions, and several warring states emerged. In the 16th century, reunified by the Taungoo dynasty, the country was for a brief period the largest empire in the history of Mainland Southeast Asia.The early 19th-century Konbaung dynasty ruled over an area that included modern Myanmar and briefly controlled Manipur and Assam as well. The British East India Company seized control of the administration of Myanmar after three Anglo-Burmese Wars in the 19th century, and the country became a British colony. Myanmar was granted independence in 1948 as a democratic nation. Following a coup d'état in 1962, it became a military dictatorship under the Burma Socialist Programme Party. </p>
    </div>
    <div class="col-lg-5 float-right" data-aos="fade-down" data-aos-delay="50" data-aos-duration="1500">
      <iframe style="width: 100%; height: 686.4px; border: 0;" src="http://maps.google.com/maps?hl=en&amp;ie=UTF8&amp;ll=37.0625,-95.677068&amp;spn=56.506174,79.013672&amp;t=m&amp;z=4&amp;output=embed"></iframe>
    </div>
  </div>
</section>


<div class="container py-5" data-aos="fade-left">
  <img src="../image/contact.jpg" class="img-fluid" width="1500px" height="842px">
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


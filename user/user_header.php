<?php 
    include '../config/connection.php';
?>
<!DOCTYPE html>
<html>

<head>
    <title>php project</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">

    <!-- jQuery library -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>

    <link rel="stylesheet" type="text/css" href="../css/style.css">
    <link rel="stylesheet" type="text/css" href="../library/fontawesome/fontawesome-all.min.css">
    <link rel="stylesheet" href="https://unpkg.com/aos@next/dist/aos.css" />
</head>

<body>
    <div class="logo-color">
        <img src="../image/heart logo.png" class="ml-3" width="230px" height="90px">
        <div class="text">
            <ul>
                <li><i class="fa fa-phone" aria-hidden="true"></i>
                    <span>09795813548,09795813549</span>
                </li>
                <li><i class="fa fa-fax" aria-hidden="true"></i> <span>fax: 95-1-252814</span></li>

                <li><i class="fa fa-envelope" aria-hidden="true"></i> <span>Terramyanmar@gmail.com</span></li>
            </ul>
        </div>
    </div>

    <nav class="navbar navbar-expand-lg navbar-primary" id="mainNav">
        <div class="container">
            <button class="navbar-toggler navbar-toggler-right ml-auto" type="button" data-toggle="collapse"
                data-target="#navbarResponsive" aria-controls="navbarResponsive">
                Menu
                <i class="fas fa-bars ml-1"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav text-uppercase ">
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="index.php"> Home
                        </a>
                    </li>

                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="Destination.php">
                            Destination
                        </a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="packages_list.php" id="navbarDropdownPortfolio"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Packages
                        </a>
                        <div class="dropdown-menu dropdown-menu-right" aria-labelledby="navbarDropdownPortfolio">
                            <?php 
                        $sql="SELECT * FROM triptype_tbl";
                        $result = mysqli_query($con,$sql);

                        while ($row = mysqli_fetch_assoc($result)) {

                        ?>
                            <a class="dropdown-item " href="packages_list.php?triptypeid=<?php echo $row['typeid']; ?>">
                                <?php echo $row["triptypename"]; ?>
                            </a>
                            <?php
                          }
                          ?>
                        </div>
                    </li>
                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="why terra.php">Why Terra</a></li>

                    

                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="about us.php">About us</a></li>

                    <li class="nav-item"><a class="nav-link js-scroll-trigger" href="help.php">Help</a></li>
                </ul>
            </div>
        </div>
    </nav>
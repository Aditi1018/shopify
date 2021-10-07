<!doctype html>
<html lang="en">
  <head>
    <title>c_01</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=IBM+Plex+Sans+Arabic:wght@600&family=Montserrat:ital,wght@0,400;1,300;1,600&display=swap" rel="stylesheet">
    <script src="https://kit.fontawesome.com/85f09f485e.js" crossorigin="anonymous"></script>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600;700&display=swap">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
 <link rel="stylesheet" href="shop.css">
  </head>
  <body>
    
       <nav class="navbar navbar-expand-lg navbar-light bg-warning">
  <a class="navbar-brand" href="shop.php"><img src="SS.png" alt="" width="200px"></a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  
  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav ml-auto">
      <li class="nav-item active">
        <a class="nav-link" href="shop.html">Home <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
          Categories
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="c_01.php?id=1001&c=DAL ATTA AND MORE">DAL,ATTA & MORE</a>
          <a class="dropdown-item" href="c_01.php?id=1002&c=BATH AND BODY">BATH AND BODY</a>
          <a class="dropdown-item" href="c_01.php?id=1003&c=FOOD AND SNACKS">FOOD & SNACKS</a>
          <a class="dropdown-item" href="c_01.php?id=1004&c=HOUSEOLD ITEMS">HOUSEOLD ITEMS</a>
          <a class="dropdown-item" href="c_01.php?id=1005&c=FRUITS AND VEGETABLES">FRUITS & VEGETABLES</a>
          <a class="dropdown-item" href="c_01.php?id=1006&c=BEVERAGES">BEVERAGES</a>
          
      </li>
      <li class="nav-item">
        <a class="nav-link" href="logout.php">Log out</a>
      </li>
     
      
    </ul>
   
  </div>
</nav>
<div class='container-fluid'>
        <?php
         
        extract($_REQUEST);
        $id=$_GET['id'];
        $qry="select distinct * from pdt_master where cat_id='$id'";
        
        
        echo "<h1 align='center'>".$_GET['c']."</h1>";
        $link=mysqli_connect("localhost","root","","categories");
       
        $resultSet = mysqli_query($link,$qry);
        
        
        $cols="<div class='row'>";
        while($r = mysqli_fetch_assoc($resultSet))
        {
        $cols.="
        <div class='col-md-2 col-sm-6 col-lg-4'>
          <div class='card bg-light mt-3'>
        <img src='$r[pdt_img]' class='mx-auto d-block card-img-bottom' style='width: 50%; height:200px' />
        <div class='card-header'><h5>$r[pdt_name]</h5></div>
        <div class='card-body'>
        
        
        <table class='table table-bordered bg-info text-light'>
        <tr><td>Product description</td><td>$r[pdt_dsc]</td></tr>
        <tr><td>Quantity</td><td>$r[pdt_quan]</td></tr>
        <tr><td>Price</td><td>Rs.$r[pdt_price]</td></tr>
        
        </table>
        
        
        
        <a href='cart.php?c=$r[pdt_id]' class='btn btn-primary btn-block'>Add to cart</a>
       
        </div>
        <div class='card-footer'>  </div>
        
        </div></div>" ;
        
        // #$tab .= "<tr><td>$r[pdt_name]</td> <td>$r[pdt_id]</td><td>$r[pdt_price]</td></tr>";
        }
       $cols.= "</div>";
        
        mysqli_close($link);
        
        
        echo $cols;
        ?>
        </div>
        <footer class="footer">
            <div class="container">
              <div class="row">
                <div class="footer-col">
                  <h4>company</h4>
                  <ul>
                    <li><a href="#">about us</a></li>
                    <li><a href="#">our services</a></li>
                    <li><a href="#">privacy policy</a></li>
                    <li><a href="#">in news</a></li>
                  </ul>
                </div>
                <div class="footer-col">
                  <h4>get help</h4>
                  <ul>
                    <li><a href="#">FAQ</a></li>
                    <li><a href="#">shipping</a></li>
                    <li><a href="#">returns</a></li>
                    <li><a href="#">order status</a></li>
                    <li><a href="#">payment options</a></li>
                  </ul>
                </div>
               
                <div class="footer-col">
                  <h4>get social with us</h4>
                  <div class="social-links">
                    <a href="#"><i class="fab fa-facebook-f"></i></a>
                    <a href="#"><i class="fab fa-twitter"></i></a>
                    <a href="#"><i class="fab fa-instagram"></i></a>
                    
                  </div>
                </div>
              </div>
            </div>
         </footer>
            
           
          <!-- Optional JavaScript -->
          <!-- jQuery first, then Popper.js, then Bootstrap JS -->
          <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
          <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
          <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        </body>
      </html>
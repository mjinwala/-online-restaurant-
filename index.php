<?php
session_start();
include_once('includes/dbconnection.php');
if(isset($_POST['addcart']))
{
$foodid=$_POST['foodid'];
$foodqty=$_POST['foodqty'];
$userid= $_SESSION['fosuid'];
$query=mysqli_query($con,"insert into tblorders(UserId,FoodId,FoodQty) values('$userid','$foodid','$foodqty') ");
if($query)
{
 echo "<script>alert('Food has been added in to the cart');</script>";   
} else {
 echo "<script>alert('Something went wrong.');</script>";      
}
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="" />
    <meta name="keywords" content="" />
    <title>little fast food</title>
    
    <link rel="stylesheet" href="css/bootstrap.min.css">  

<!-- font awesome -->
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/lightgallery-js/1.4.0/css/lightgallery.min.css">

    <link rel="stylesheet" href="assets/css/icons.min.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/main.css">
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/red-color.css">
    <link rel="stylesheet" href="assets/css/yellow-color.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
</head>
<body itemscope>
<?php include_once('includes/header.php');?>

        <section>
            <div class="block blackish opac50">
                <div class="fixed-bg" style="background-image: url(assets/images/3.jpg); background-repeat: no-repeat; min-height: 70vh;
    background-size: cover !important;
    background-position: center !important;
    display: flex;
    align-items: center;
    justify-content: center;"></div>
                <div class="restaurant-searching style2 text-center">
                    <div class="restaurant-searching-inner">
						<span>Delicious <i>Food</i> </span>
                        <h2 itemprop="headline">Order Delivery & Take-Out</h2>
                        
                    </div>
                </div><!-- Restaurant Searching -->
            </div>
        </section>
        
        <section class="about" id="about">

<h1 class="heading"> <span>about</span> us </h1>

<div class="row">

    <div class="image" style="padding-left:20px;">
        <img src="assets/images/abo.jpg" alt="">
    </div>

    <div class="content">
        <h3>Our Mission</h3>
        <p>Traceable food is trustworthy food. At Flourist, we work exclusively with Canadian family farms to source premium local grains and beans. Then we stone mill the grain in-house, to order.</p>
        <p>A healthy community is built on healthy food. And healthy food depends on how it’s grown, harvested and prepared. We think the question “where did your food come from?” is one each of us should be able to answer.</p>
        
    </div>

</div>

</section>

        <section class="gallery" id="gallery">

<center><h1 class="heading">our <span> gallery</span></h1>

<div class="gallery-container">

    <a href="assets/images/food/fast food/Cheese Veg burger.jpg" class="box">
        <img src="assets/images/food/fast food/Cheese Veg burger.jpg" alt="">
        <div class="icons"><i class="fas fa-plus"></i></div>
    </a>

    <a href="assets/images/food/drinks/Black Mojito.jpg" class="box">
        <img src="assets/images/food/drinks/Black Mojito.jpg" alt="">
        <div class="icons"><i class="fas fa-plus"></i></div>
    </a>

    <a href="assets/images/food/desserts/ice cream cookie dessert.jpg" class="box">
        <img src="assets/images/food/desserts/ice cream cookie dessert.jpg" alt="">
        <div class="icons"><i class="fas fa-plus"></i></div>
    </a>

    <a href="assets/images/food/drinks/Chocolate Cappuccino.webp" class="box">
        <img src="assets/images/food/drinks/Chocolate Cappuccino.webp" alt="">
        <div class="icons"><i class="fas fa-plus"></i></div>
    </a>

    <a href="assets/images/food/fast food/mexican pizza.jpg" class="box">
        <img src="assets/images/food/fast food/mexican pizza.jpg" alt="">
        <div class="icons"><i class="fas fa-plus"></i></div>
    </a>

    <a href="assets/images/food/desserts/lwc.jpg" class="box">
        <img src="assets/images/food/desserts/lwc.jpg" alt="">
        <div class="icons"><i class="fas fa-plus"></i></div>
    </a>
    <a href="assets/images/food/fast food/pizza.jpg" class="box">
        <img src="assets/images/food/fast food/pizza.jpg." alt="">
        <div class="icons"><i class="fas fa-plus"></i></div>
    </a>
    <a href="assets/images/food/fast food/tost.jpeg" class="box">
        <img src="assets/images/food/fast food/tost.jpeg" alt="">
        <div class="icons"><i class="fas fa-plus"></i></div>
    </a>

</div>

</section>



<!-- gallery end -->



<!-- order -->
<section class="order" id="order">

<div class="how-to-order">
    <div class="subtitle">
    <center><h2 class="order-subtitle">HOW TO <span>ORDER ? </span></h2>
    </div>
    <div class="row" style="color: #C70039 ;">
        <div class="column">
        <i class="fa-solid fa-utensils" aria-hidden="true"></i>
        <!-- <i class="fa-solid fa-utensils"></i> -->
          <p><b>Choose your food</b></p>
        </div>
        <div class="column">
          <i class="fas fa-cart-plus"></i>
          <p><b>Add to cart</b></p>
        </div>
        <div class="column">
          <i class="fas fa-money-check-alt"></i>
          <p><b>Checkout</b></p>
        </div>
         <div class="column">
         <i class="fas fa-box-open"></i>
         <p><b>We pack it up</b></p>
        </div>
          <div class="column">
          <i class="fas fa-shipping-fast"></i>
          <p><b>Fast Delivery</b></p>
        </div>
    </div>
 </div>

</section>
<!-- order -->


<!-- team -->

<section class="team" id="team">

<center><h1 class="heading">our  <span>chef</span></h1>

<div class="box-container">

    <div class="box">
        <div class="image">
            <img src="assets/images/t1.jpeg" alt="">
        </div>
        <div class="content">
            <h3>VIKAS KHANNA</h3>
            <p>CEO</p>
            <div class="share">
                <i class="fab fa-facebook-f"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-instagram"></i>
            </div>
        </div>
    </div>

    <div class="box">
        <div class="image">
            <img src="assets/images/t2.jpg" alt="">
        </div>
        <div class="content">
            <h3>RANVIR BRAR</h3>
            <p>manager</p>
            <div class="share">
                <i class="fab fa-facebook-f"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-instagram"></i>
            </div>
        </div>
    </div>

    <div class="box">
        <div class="image">
            <img src="assets/images/t3.jpg" alt="">
        </div>
        <div class="content">
            <h3>KRUNAL KAPOOR</h3>
            <p>manager</p>
            <div class="share">
                <i class="fab fa-facebook-f"></i>
                <i class="fab fa-twitter"></i>
                <i class="fab fa-instagram"></i>
            </div>
        </div>
    </div>

</div>

</section>

      

      <?php include_once('includes/footer.php');
include_once('includes/signin.php');
include_once('includes/signup.php');
      ?>

    </main><!-- Main Wrapper -->

    <script src="assets/js/jquery.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/main.js"></script>
</body>	

</html>
<!DOCTYPE html>
<html lang="en">

<?php
include ("header.php"); 
include ("database.php"); 
$currdate = date("yyyy-mm-dd", );
?>

<body>
    <div class="Section1">
        <img src="Images/Logo.png" style="Width:200px;"alt="Logo"><span>  Park Inn Hotel</span>
        <br>
    </div>

    <div class="Section2">
    <a href="#aboutus" style="color:white;padding-left:30px;padding-right:30px;">About us</a>
    <a href="#booknow"style="color:white;padding-left:30px;padding-right:30px;">Book now</a>
    <a href="#subscribe"style="color:white;padding-left:30px;padding-right:30px;">Subscribe</a>
    </div>

    <div class="Section3" >
        <div id="booknow">
            <h1 style="padding-bottom:30px;">Book your stay now..!</h1><span><button type="button"onclick="window.location.href='adminpanel/reservation.php'" style="width:50%; height:20%; font-family: 'Orelega One', cursive;"class="btn btn-lg btn-block btn-outline-danger">Book now</button></span>
        </div>
    </div>

    <div class="Section4">
        <div id="aboutus">
            <h1 style="padding-bottom:30px;">About us</h1>
            <p>Rooms Available:</p>
            <p>Standard Rooms</p>
            <p>Deluxe Rooms</p>
            <p>Joint rooms</p>
            <p>Apartment Style</p>
            <p>Stop at Park Inn Hotel - Bengaluru to discover the wonders of Bengaluru. </p>
            <p>The hotel has everything you need for a comfortable stay. 24-hour room service, free Wi-Fi in all rooms, 24-hour front desk, facilities for disabled guests, luggage storage are just some of the facilities on offer. </p>
            <p>Some of the well-appointed guestrooms feature television LCD/plasma screen, internet access– wireless, internet access – wireless (complimentary), non smoking rooms, air conditioning. Entertain  the hotel's recreational facilities, including fitness center.Park Inn Hotel - Bengaluru is an excellent choice from which to explore Jaipur or to simply relax and rejuvenate.</p> 
            <br>
            <hr style="backgroung-color:white;">
            <h1 style="padding-bottom:30px;">Gallery</h1>           
            <img src="Images/hotelImages1.jpg" class="rounded-lg"style="width:400px;"alt="Hotel Image"><span><img src="Images/hotelImages2.jpg" style="width:430px;padding-left:20px;font-size:2rem;"alt="Hotel Image"></span><span> <img src="Images/hotelImages3.jpg" style="width:400px;padding-left:20px;"alt="Hotel Image"></span>
            <br>
            <br>
            <hr style="backgroung-color:white;">      
        </div>
    </div>

    <div class="Section5">
    <div id="subscribe">
            <h1 style="padding-bottom:30px;">Subscribe to News letter</h1>
            <img src="Images/Gmail-logo.png" class="rounded-lg"style="width:200px;"alt="Hotel Image">
        <form action="" name="form" method="post">
          <div class="form-group"style=" padding-left:550px;padding-bottom:10px;" >
                <input style="width:55%; text-align:center;"name="name" class="form-control form-control-lg" type="text" placeholder="Full Name" required>
          </div>
          <div class="form-group"style=" padding-left:550px;padding-bottom:10px;" >
                <input style="width:55%; text-align:center;"name="phone" class="form-control form-control-lg" type="phone" placeholder="Phone Number"required>
          </div>
          <div class="form-group"style=" padding-left:550px;padding-bottom:10px;" >
                <input style="width:55%; text-align:center;"name="email" class="form-control form-control-lg" type="email" placeholder="Email Id"required>
          </div>
          <div class="form-group">
                <input   style="background-color: #DD4A48; color:#fff;"type="submit" name="sub"  class="btn btn-light">
          </div>
          </form>   
          <?php if (isset($_POST["sub"])) {
        $name = $_POST["name"];
        $phone = $_POST["phone"];
        $email = $_POST["email"];
        $sql = "INSERT INTO `subscribers`(`fullname`, `phoneno`, `email`,`subscribeddate`) VALUES ('$name','$phone','$email',now())";
      
        if (mysqli_query($con, $sql)) {
            echo "Subscribed";
            echo "<script type='text/javascript'> alert('Subscribed for ParkInn Newletter, Thank You..!')</script>";
        }
    } ?>        
    </div>
    </div>
   <footer style="background-color: #fff; color:black;">
   <center>
      <div class="footerdiv" style="background-color: #fff; color:black;">
      <p style="background-color: #fff; color:black; dont-size:2rem" class="EnjoyYourStay1">© Copyright 2022 Park Inn - Bengaluru</p>
    </div>

</body>
</html>
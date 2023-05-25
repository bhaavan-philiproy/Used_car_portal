<?php
    $con=mysqli_connect("localhost","root","","project");
    $Id=$_GET['Id'];
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        mysqli_query($con,"update cardetails set Status='Sold',Buyerid='$id' where Id='$Id'");
        header('Location: /car-portal/buyer.php?id='.$id);
    }
?>
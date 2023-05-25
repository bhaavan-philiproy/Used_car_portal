<?php
    $con=mysqli_connect("localhost","root","","project");
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        mysqli_query($con,"delete from cardetails where Uid=$id");
        mysqli_query($con,"delete from carportal where Id=$id");
        header('Location: admin_user.php');
    }
?>
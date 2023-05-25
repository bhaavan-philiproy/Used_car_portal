<?php
    $con=mysqli_connect("localhost","root","","project");
    if(isset($_GET['id'])){ 
        $id=$_GET['id'];
        mysqli_query($con,"delete from cardetails where Id=$id");
        header('Location: sellerview.php');
    }
?>
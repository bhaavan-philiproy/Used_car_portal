<?php
    $con=mysqli_connect("localhost","root","","project");
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $sql="select * from cardetails where Uid='$id' and Status='Unsold'";
        $result=mysqli_query($con,$sql);
        $row=mysqli_fetch_all($result);
    }
    if(isset($_POST['Sold'])){
        header("Location: /car-portal/adminpg.php?id=".$id);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin View</title>
</head>
<link rel="stylesheet" href="adminview.css" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script type="text/javascript" src="custom.js" ></script>
<body>
    <div class="container">
        <header><center>Car Details</center></header>
        <?php
            foreach ($row as $data ) {
        ?>
        <div class="img-box">
            <img height="30px" width="30px" src="<?php echo $data[7] ?>">
            <p><?php echo $data[2]?></p>
            <p><?php echo $data[3]?></p>
            <p><?php echo $data[4]?></p>
            <p><?php echo $data[5]?></p>
            <p><?php echo $data[6]?></p>
            <p><?php echo $data[8]?></p>
            <p><?php echo $data[9]?></p>
            <a href="" onclick="removecar(<?php echo $data[0] ?>,<?php echo $id ?>)">Remove</a>
            <form method="post" action="<?php $_SERVER['PHP_SELF']?>">
                <div class="input-field button">
                    <input type="submit" name="Sold" value="Sold Car" />
                </div>
            </form>
        </div>
        <?php
            }
        ?>
    </div>
</body>
</html>
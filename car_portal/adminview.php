<?php
    $con=mysqli_connect("localhost","root","","project");
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $sql="select * from cardetails where Uid='$id' and Status='Unsold'";
        $result=mysqli_query($con,$sql);
        $row=mysqli_fetch_all($result);
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
        </div>
        <?php
            }
        ?>
    </div>
</body>
</html>
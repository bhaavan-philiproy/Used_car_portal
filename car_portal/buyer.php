<?php
    $con=mysqli_connect("localhost","root","","project");
    if(isset($_GET['id'])){
        $id=$_GET['id'];
        $sql="select * from cardetails where Status='Unsold' and Uid !='$id'";
        $result=mysqli_query($con,$sql);
        $row=mysqli_fetch_all($result);
    }
    if(isset($_POST['Submit'])){
        $m=$_POST['Chat'];
        $vid=$_POST['vid'];
        $rid=$_POST['rid'];
        mysqli_query($con,"insert into message(Sid,Rid,Vid,Message) values('$id','$rid','$vid','$m')");
        header("Location: /car-portal/buyer.php?id=".$id);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Buyers View</title>
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
            <form method="post" action="<?php $_SERVER['PHP_SELF']?>">
                <textarea name="Chat" id="" cols="40" rows="5" placeholder="Message"></textarea>
                <input type="hidden" name="vid" value="<?php echo $data[0]?>">
                <input type="hidden" name="rid" value="<?php echo $data[1]?>">
                <input type="submit" name="Submit" value="Submit">
            </form>
            <br>
            <a href="buy.php?id=<?php echo $id?>&Id=<?php echo $data[0]?>">Buy</a>
        </div>
        <?php
            }
        ?>
    </div>
</body>
</html>

<?php
    $con=mysqli_connect("localhost","root","","project");
    $id=$_GET['id'];
    $action = $_SERVER['PHP_SELF'].'?id='.$id;
    if(isset($_POST['Submit'])){
        $c=$_POST['Company'];
        $m=$_POST['Model'];
        $co=$_POST['Color'];
        $y=$_POST['Year'];
        $t=$_POST['Type'];
        $p=$_POST['Price'];
        $target_dir="image/";
        $target_file=$target_dir.basename($_FILES["Image"]["name"]);
        move_uploaded_file($_FILES["Image"]["tmp_name"],$target_file);
        mysqli_query($con,"insert into cardetails (Uid,Company,Model,Color,Year,Type,Img,Price) values('$id','$c','$m','$co','$y','$t','$target_file','$p')");
        echo mysqli_error($con);
        // header("Location: {$action}");
        echo "<script>";
        echo "alert('Submitted Successfully')"; // Call your JavaScript function
        echo "</script>";
    }
    if(isset($_POST['View'])){
        header("Location: /car-portal/sellerview.php?id=".$id);
    }
    if(isset($_POST['Message'])){
        header("Location: /car-portal/sellermsg.php?id=".$id);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Seller</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="container">
        <header>Car Details</header>
        <form method="post" enctype="multipart/form-data" action="<?php $action ?>">
        <div class="field">
            <div class="input-field">
                <input type="text" name="Company" placeholder="Company" class="email" required/>
            </div>
        </div>
        <div class="field">
            <div class="input-field">
                <input type="text" name="Model" placeholder="Model" class="email" required/>
            </div>
        </div>
        <div class="field">
            <div class="input-field">
                <input type="text" name="Color" placeholder="Color" class="email" required/>
            </div>
        </div>
        <div class="field">
            <div class="input-field">
                <input type="number" name="Year" placeholder="Year" class="email" required min='1950'/>
            </div>
        </div>
        <div class="field">
            <div class="input-field">
                <input type="Text" name="Type" placeholder="Fuel Type" class="email" required/>
            </div>
        </div>
        <div class="field">
            <div class="input-field">
                <input type="number" name="Price" placeholder="Expected Price" class="email" required min='0'/>
            </div>
        </div>
        <!-- <div class="field"> -->
            <div>
                <input type="file" name="Image" id="img" required>
            </div>
        <!-- </div> -->
        <div class="input-field button">
            <input type="submit" name="Submit" value="Submit" />
        </div>
        </form>
        <form method="post" action="<?php $_SERVER['PHP_SELF']?>">
            <div class="input-field button">
                <input type="submit" name="View" value="View" />
            </div>
            <div class="input-field button">
                <input type="submit" name="Message" value="Message" />
            </div>
        </form>
    </div>
</body>
</html>


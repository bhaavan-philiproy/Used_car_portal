<?php
    $con=mysqli_connect("localhost","root","","project");
    $id=$_GET['id'];
    if(isset($_POST['Sell'])){
        header("Location: /car-portal/seller.php?id=".$id);
    }
    if(isset($_POST['Buy'])){
        header("Location: /car-portal/buyer.php?id=".$id);
    }
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Option</title>
    <link rel="stylesheet" href="style.css" />
</head>
<body>
    <div class="container">
        <header>User Option</header>
        <form method="post" action="<?php $_SERVER['PHP_SELF']?>">
            <div class="input-field button">
                <input type="submit" name="Sell" value="Sell Car" />
            </div>
            <div class="input-field button">
                <input type="submit" name="Buy" value="Buy Car" />
            </div>
        </form>
    </div>
</body>
</html>
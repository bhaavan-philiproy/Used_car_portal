<?php
    $con=mysqli_connect("localhost","root","","project");
    $id=$_GET['id'];
    if(isset($_POST['User'])){
        header("Location: /car-portal/admin_user.php?id=".$id);
    }
    if(isset($_POST['Car'])){
        header("Location: /car-portal/admin_car.php?id=".$id);
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
                <input type="submit" name="User" value="User Details" />
            </div>
            <div class="input-field button">
                <input type="submit" name="Car" value="Car Details" />
            </div>
        </form>
    </div>
</body>
</html>
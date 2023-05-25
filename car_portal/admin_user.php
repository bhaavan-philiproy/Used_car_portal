<?php
    $con=mysqli_connect("localhost","root","","project");
    $sql="select * from carportal where Role='2'";
    $result=mysqli_query($con,$sql);
    $users = mysqli_fetch_all($result);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>User Details</title>
    <link rel="stylesheet" href="view.css" />
</head>
<body>
    <div class="container">
        <table>
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th></th>
                <th></th>
            </tr>
            <?php
                foreach($users as $user) {
            ?>
            <tr>
                <td><?php echo $user[1]?></td>
                <td><?php echo $user[2]?></td>
                <td><a href="adminview.php?id=<?php echo $user[0] ;?>" class="viewop">View</a></td>
                <td><a href="delete.php?id=<?php echo $user[0] ;?>" class="deleteop">Delete</a></td>
            </tr>
            <?php }?>
        </table>
    </div>
</body>
</html>
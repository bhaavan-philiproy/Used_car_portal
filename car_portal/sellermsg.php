<?php
    $con=mysqli_connect("localhost","root","","project");
    $id=$_GET['id'];
    $sql="select carportal.Name,cardetails.Model,Message.Message from message LEFT JOIN carportal ON carportal.Id = message.Sid LEFT JOIN cardetails on cardetails.Id = message.Vid where Rid='$id'";
    $result=mysqli_query($con,$sql);
    $users = mysqli_fetch_all($result);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Message</title>
    <link rel="stylesheet" href="view.css" />
</head>
<body>
    <div class="container">
        <table>
            <tr>
                <th>Name</th>
                <th>Vehicle</th>
                <th>Message</th>
                <th></th>
                <th></th>
            </tr>
            <?php
                foreach($users as $user) {
            ?>
            <tr>
                <td><?php echo $user[0]?></td>
                <td><?php echo $user[1]?></td>
                <td><?php echo $user[2]?></td>
            <?php }?>
        </table>
    </div>
</body>
</html>
<?php
    $con=mysqli_connect("localhost","root","","project");
    if(isset($_POST['Login'])){
        $email = $_POST['Email'];
        $password = $_POST['Password'];
        $sql="select * from carportal where Email = '$email' and Password = '$password'";
        $result = mysqli_query($con,$sql);
        $row=mysqli_fetch_array($result);
        if($result->num_rows != 0)
        {
            if($row['Role']=="1"){
                $id  = $row['Id'];
                header("Location: /car-portal/adminpg.php?id=".$id);
            }
            elseif($row['Role']=="2"){
                $id  = $row['Id'];
                header("Location: /car-portal/userpg.php?id=".$id);
            }
        }elseif($result->num_rows == 0) {
            // PHP code for the "else" condition
            echo "<script>";
            echo "alert('User not found');"; // Call your JavaScript function
            echo "</script>";
        }
        echo mysqli_error($con);
    }
?>

<!DOCTYPE html>
<!-- Coding By CodingNepal - youtube.com/codingnepal -->
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Login</title>
  <link rel="stylesheet" href="lstyle.css">
</head>
<body>
  <div class="wrapper">
    <header>Login Form</header>
    <form method="post" action="<?php $_SERVER['PHP_SELF']?>">
      <div class="field email">
        <div class="input-area">
          <input type="text" name="Email" placeholder="Email Address">
          <i class="icon fas fa-envelope"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>
        <div class="error error-txt">Email can't be blank</div>
      </div>
      <div class="field password">
        <div class="input-area">
          <input type="password" name="Password" placeholder="Password">
          <i class="icon fas fa-lock"></i>
          <i class="error error-icon fas fa-exclamation-circle"></i>
        </div>
        <div class="error error-txt">Password can't be blank</div>
      </div>
      <input type="submit" name="Login" value="Login">
    </form>
    <div class="sign-txt">Not yet member? <a href="/car-portal/signup.php">Signup now</a></div>
  </div>
</body>
</html>
<script>
    function user(){
        alert("User not found");
    }
</script>
<?php
    $con=mysqli_connect("localhost","root","","project");
    if(isset($_POST['Signup'])){
        // $alphabet = "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789";
        // $pass=array();
        // $alphaLength=strlen($alphabet)-1;
        // for ($i = 0; $i < 8; $i++) {
        //     $n = rand(0, $alphaLength);
        //     $pass[] = $alphabet[$n];
        // }
        // $p= implode($pass);
        $n=$_POST['Name'];
        $e=$_POST['Email'];
        $p=$_POST['Password'];
        $cp=$_POST['Cpassword'];
        $r=$_POST['Role'];
        if($p != $cp){
          echo "<script>";
          echo "alert('Password doesn't match')"; // Call your JavaScript function
          echo "</script>";
        }
        else{
          mysqli_query($con,"insert into carportal(Name,Email,Password,Role) values('$n','$e','$p','$r')");
          echo mysqli_error($con);
          echo "<script>";
          echo "alert('SignUp Successful')"; // Call your JavaScript function
          echo "</script>";
          header("Location: /car-portal/login.php");
        }
        // mysqli_query($con,"insert into carportal(Name,Email,Password,Role) values('$n','$e','$p','$r')");
        // echo mysqli_error($con);
        // echo "<script>";
        // echo "alert('SignUp Successful')"; // Call your JavaScript function
        // echo "</script>";
        // header("Location: /car-portal/login.php");
    }
?>


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Sign Up</title>
    <link rel="stylesheet" href="style.css" />
  </head>
  <body>
    <div class="container">
      <header>Signup</header>
      <form method="post" action="<?php $_SERVER['PHP_SELF']?>">
        <div class="field email-field">
          <div class="input-field">
            <input type="text" name="Name" placeholder="Enter your Name" class="email" required/>
          </div>
        </div>
        <div class="field email-field">
          <div class="input-field">
            <input type="email" name="Email" placeholder="Enter your Email" class="email" required/>
          </div>
        </div>
        <div class="field create-password">
          <div class="input-field">
            <input
              type="password"
              name="Password"
              placeholder="Create Password"
              class="password"
              id="password"
              required
            />
          </div>
        </div>
        <div class="field confirm-password">
          <input type="checkbox" onclick="show()">Show Password
        </div>
        <div class="field confirm-password">
          <div class="input-field">
            <input
              type="password"
              name="Cpassword"
              placeholder="Confirm Password"
              class="cPassword"
              id="cpassword"
              required
            />
          </div>
        </div>
        <div class="field confirm-password">
          <input type="checkbox" onclick="cshow()">Show Password
        </div>
        <div class="field confirm-password">
            <div class="input-field">
                <select name="Role" id="role" required>
                    <option value="" disabled selected>Select Role</option>
                    <option value="1">Admin</option>
                    <option value="2">User</option>
                </select>
            </div>
        </div>
        <span class="signup">Already have an account?
            <a href="/car-portal/login.php">Login</a>
        <div class="input-field button">
          <input type="submit" name="Signup" value="Sign Up" />
        </div>
      </form>
    </div>
  </body>
</html>
<script>
  function show() {
  var x = document.getElementById("password");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
function cshow() {
  var x = document.getElementById("cpassword");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
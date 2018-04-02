<html>
<head>
	<title>Register</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">
  	<script src="js/bootstrap.min.js"></script>
</head>

<body class="container">
<br>
<a href="index.php"><span class="btn btn-primary">Home</span></a> <br />
<?php
include("config.php");
//connect to db here

if(isset($_POST['submit'])) {
	$user = $_POST['username'];
	$pass = $_POST['password'];

	if($user == "" || $pass == "") {
		echo "All fields should be filled. Either one or many fields are empty.";
		echo "<br/>";
		echo "<a href='register.php'>Go back</a>";
	} else {
		mysqli_query($conn,"INSERT INTO user(un, pw) VALUES('$user', md5('$pass'))")
			or die("Could not execute the insert query.");
			
		echo "<hr><div class='alert alert-success'>Registration successfully done. Click Home for login Now</div>";
		echo "<br/><hr>";
		
	}
} else {
?>

	<center><h2>New User Registration</h2><hr></center>
	<form name="form1" method="post" action="">
		<table class="table table-striped table-bordered table-condensed">			
			<tr> 
				<td>Username</td>
				<td><input type="text" name="username" class="form-control"></td>
			</tr>
			<tr> 
				<td>Password</td>
				<td><input type="password" name="password" class="form-control"></td>
			</tr>
			<tr>
            <td colspan="2"><br></td>
            </tr>
            <tr> 
				
				<td colspan="2"><input type="submit" class="btn btn-success btn-block btn-lg" name="submit" value="Register"></td>
			</tr>
		</table>
	</form>
<?php
}
//close the db connection here
?>
</body>
</html>

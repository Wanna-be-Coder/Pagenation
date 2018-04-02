<?php

require_once('config.php');
$id =   $_GET["id"];
$sql="SELECT * FROM `info` WHERE id='$id'";
$rs_result=mysqli_query ($conn,$sql);
if(isset($_POST["Submit"])){
	
	$bid=$_POST['booking_id'];
	$td=$_POST['tour_detail'];
	$on=$_POST['operator_name'];
	$mi=$_POST['money_in'];
	$mo=$_POST['money_out'];
	$r=$_POST['remarks'];
	
	$sql="UPDATE `info` SET `booking_id`='$bid',`tour_detail`='$td',`operator_name`='$on',`money_in`='$mi',`money_out`='$mo',`remarks`='$r' WHERE id ='$id'";
	
	$result=mysqli_query($conn,$sql);
	
	header("location:admin.php");
	
	
}



?>


<html>
<head>
	<title>Add Tracking info</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.min.css">

  	<script src="js/bootstrap.min.js"></script>
</head>

<body class="container">
<br>
	<a href="admin.php"><span class="btn btn-primary">Dashboard</span></a>
	<a href="search.php?search="><span class="btn btn-success">Search</span></a>
	<a href="logout.php"><span class="btn btn-warning">Logout</span></a>
	<br/><br/>
    <center><h1>Add Tracking Information</h1></center><hr>

	<form method="post" name="form1" enctype="multipart/form-data">
	<?php while($row=mysqli_fetch_array($rs_result)){ ?>	
      	<div class="input-group">
      		<span class="input-group-addon">Booking Number</span>
      		<input id="booking_id" type="text" class="form-control" name="booking_id" value="<?= $row["booking_id"]; ?>" disabled>
    	</div>
        <div class="input-group">
      		<span class="input-group-addon">Tour Detail</span>
      		<input id="tour_detail" type="text" class="form-control" name="tour_detail" value="<?= $row["tour_detail"]; ?>">
    	</div>
        	<div class="input-group">
      		<span class="input-group-addon">Operator Name</span>
      		<input id="operator_name" type="text" class="form-control" name="operator_name" value="<?= $row["operator_name"]; ?>">
    	</div>
        <div class="input-group">
      		<span class="input-group-addon">Money IN</span>
      		<input id="money_in" type="double" class="form-control" name="money_in" value="<?= $row["money_in"]; ?>">
    	</div>
         <div class="input-group">
      		<span class="input-group-addon">Money OUT</span>
      		<input id="money_out" type="double" class="form-control" name="money_out" value="<?= $row["money_out"]; ?>">
    	</div>
       
         <div class="input-group">
      		<span class="input-group-addon">Remarks</span>
      		<input id="remarks" type="text" class="form-control" name="remarks" value="<?= $row["remarks"]; ?>">
    	</div>
        
        <input type="submit" name="Submit" value="Update" class="btn btn-success btn-block btn-lg">
        
 
        
        
        
        
	<?php }?>
	</form>
</body>
</html>
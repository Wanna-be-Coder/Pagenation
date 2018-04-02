<?php
session_start();
ob_start();

if (!(isset($_SESSION['un']))){
header("location:index.php");
}
else {
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

	<form action="add_action.php" method="post" name="form1" enctype="multipart/form-data">
		
      	<div class="input-group">
      		<span class="input-group-addon">Booking Number</span>
      		<input id="booking_id" type="text" class="form-control" name="booking_id" placeholder="Booking Number or ID" required>
    	</div>
        <div class="input-group">
      		<span class="input-group-addon">Tour Detail</span>
      		<input id="tour_detail" type="text" class="form-control" name="tour_detail" placeholder="Tour Detail">
    	</div>
        	<div class="input-group">
      		<span class="input-group-addon">Operator Name</span>
      		<input id="operator_name" type="text" class="form-control" name="operator_name" placeholder="Operator Name">
    	</div>
        <div class="input-group">
      		<span class="input-group-addon">Money IN</span>
      		<input id="money_in" type="double" class="form-control" name="money_in" placeholder="Amount Get from the Tour" required>
    	</div>
         <div class="input-group">
      		<span class="input-group-addon">Money OUT</span>
      		<input id="money_out" type="double" class="form-control" name="money_out" placeholder="Amount given to Tour Operator" required>
    	</div>
        <div class="input-group">
      		<span class="input-group-addon">File Upload</span>
      		<input id="file_link" type="file" class="form-control" name="file_link" placeholder="Click Here to upload the pdf/png/jpeg/jpg file">
    	</div>
         <div class="input-group">
      		<span class="input-group-addon">Remarks</span>
      		<input id="remarks" type="text" class="form-control" name="remarks" placeholder="Remarks">
    	</div>
        
        <input type="submit" name="Submit" value="Save Information" class="btn btn-success btn-block btn-lg">
        
        <input type="reset" name="reset" value="Clear Information" class="btn btn-danger  btn-block btn-lg">
        
        
        
        
      
	</form>
    <?php
    }
    ?>
</body>
</html>


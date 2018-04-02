<?php
/**
 * Created by PhpStorm.
 * User: Saef
 * Date: 08-Mar-16
 * Time: 10:31 AM
 */
session_start();
ob_start();

if (!(isset($_SESSION['un']))){
    header("location:index.php");
}
else {
	
    require_once("config.php");
   // connect to db
//fetching data in descending order (lastest entry first)
    $sterm=$_GET['search'];
	//echo $sterm;
  	$sql = "SELECT * FROM info where deleted_at is NULL and (booking_id LIKE '%$sterm%' or operator_name LIKE '%$sterm%' or tour_detail LIKE '%$sterm%' ) order by id DESC"; 
	$rs_result = mysqli_query ($conn,$sql);
	$totalres=mysqli_num_rows($rs_result);
}

?>

<html>
<head>
    <title>Search</title>
    <link rel="stylesheet" href="css.css">
        
        <link rel="stylesheet" href="css/bootstrap.min.css">

  		<script src="js/bootstrap.min.js"></script>


</head>

<body class="container-fluid">
<br>
<a href="admin.php"> <span class="btn btn-primary">Dashboard</span></a>
<a href="add.php"> <span class="btn btn-success">Add New Data</span></a>
<a href="logout.php"><span class="btn btn-warning">Logout</span></a>
<center><h1>Search Results</h1></center><hr>
<table class="table table-striped table-bordered table-condensed">
<tr>
<td colspan="4" class="alert alert-success">
	<?php echo "<h3>Total ".$totalres." Results Found</h3>";?> 
</td>
<td colspan="4">
<form method="get" action="search.php" style="float:right">
<input type="text" name="search" placeholder="Input Booking Number or Tour Details or Operator Name" class="input-sm"/>
<input type="submit" value="Search" class="btn btn-success"/>
</form>
</td>
</tr>
    <tr>
        <th>Booking Number</th>
        <th>Tour Details</th>
        <th>Operator Name</th>
        <th>Money Receieved</th>
        <th>Money Sent</th>
        <th>Remarks</th>
        <th>Payment Date & Time</th>
        <th>Action</th>
    </tr>
    <?php
    while($res=mysqli_fetch_array($rs_result)) {
        echo "<tr>";
        echo "<td>".$res['booking_id']."</td>";
		echo "<td>".$res['tour_detail']."</td>";
		echo "<td>".$res['operator_name']."</td>";
		echo "<td>".$res['money_in']."</td>";
		echo "<td>".$res['money_out']."</td>";
		echo "<td>".$res['remarks']."</td>";
		echo "<td>".$res['date_time']."</td>";
		echo "<td><a href=./".$res['file_link']." target='_blank'><span class='glyphicon glyphicon-paperclip'></span></a> | <a href=\"delete.php?id=$res[id]\" onClick=\"return confirm('Are you sure you want to delete?')\"><span class='glyphicon glyphicon-remove-circle'></span></a></td>";
    }

    ?>
    
</table>
<?php

    //close db connection
?>
</body>
</html>

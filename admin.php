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
    //connect to db here
//fetching data in descending order (lastest entry first)
    
	$limit = 25;  
	if (isset($_GET["page"])) { $page  = $_GET["page"]; } else { $page=1; };  
	$start_from = ($page-1) * $limit;  
  	$sql = "SELECT * FROM info where deleted_at is NULL order by booking_id DESC LIMIT $start_from, $limit"; 
	$rs_result = mysqli_query ($conn,$sql);
}
?>

<html>
<head>
    <title>Homepage</title>
    <link rel="stylesheet" href="css.css">
        
        <link rel="stylesheet" href="css/bootstrap.min.css">

  		<script src="js/bootstrap.min.js"></script>


</head>

<body class="container-fluid">
<br>
<a href="add.php"> <span class="btn btn-success">Add New Data</span></a>
<a href="logout.php"><span class="btn btn-warning">Logout</span></a>
<center><h1>Payment Tracking Information</h1></center><hr>
<table class="table table-striped table-bordered table-condensed">
<tr>
<td colspan="8">
<form method="get" action="search.php" style="float:right">
<input type="text" name="search" placeholder="Booking Number or Tour Details or Operator Name" class="input-sm"/>
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
		echo "<td><a href=\"update.php?id=$res[id]\"><span class='glyphicon glyphicon-paperclip'></span></a> | <a href=\"delete.php?id=$res[id]\" onClick=\"return confirm('Are you sure you want to delete?')\"><span class='glyphicon glyphicon-remove-circle'></span></a></td>";
    }

    ?>
    
</table>
<?php
	$sql = "SELECT COUNT(id) FROM info";  
	$rs_result = mysqli_query($conn,$sql);
	$row = mysqli_fetch_row($rs_result);
	$total_records = $row[0];  
	$total_pages = ceil($total_records / $limit);  
	$pagLink = "<ul class='pagination pagination-lg'>";
	for ($i=1; $i<=$total_pages; $i++) {  
             $pagLink .= "<li class='page-item'><a href='admin.php?page=".$i."'>".$i."</a></li>";
		};  
	echo $pagLink . "</ul>";
    //close db connection here
?>
</body>
</html>

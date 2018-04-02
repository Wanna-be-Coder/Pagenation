<?php

$conn= mysqli_connect('localhost','root','','tracker');

if(!$conn){echo "Database could not be found";}
else{echo "Conneced";}
?>
<?php
header('Content-type: application/json');

$server = "itsadailythingcom.fatcowmysql.com";
$username = "usrbluffed";
$password = "20kowie08";
$database = "bluffed";

$con = mysql_connect($server, $username, $password) or die ("Could not connect: " . mysql_error());
mysql_select_db($database, $con);

$sql = "SELECT QuestionID, Question, CategoryID FROM Questions ORDER BY RAND() LIMIT 1";
$result = mysql_query($sql) or die ("Query error: " . mysql_error());

$row = mysql_fetch_assoc($result);
//$records = array();

//while($row = mysql_fetch_assoc($result)) {
//	$records[] = $row;
//}

mysql_close($con);

echo $_GET['jsoncallback'] . '(' . json_encode($row) . ');';
//echo $_GET['jsoncallback'] . '(' . json_encode($records) . ');';
?>
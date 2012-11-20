<?php
//header('Content-type: application/json');

$server = "itsadailythingcom.fatcowmysql.com";
$username = "usrbluffed";
$password = "20kowie08";
$database = "bluffed";

$con = mysql_connect($server, $username, $password) or die ("Could not connect: " . mysql_error());
mysql_select_db($database, $con);

$answer = mysql_real_escape_string($_POST["answer"]);
$sql = "INSERT INTO Answers (AnswerID, Answer) ";
$sql .= "VALUES (NULL, '$answer')";

if (!mysql_query($sql, $con)) {
    die('Error: ' . mysql_error());
} else {
    echo "Answer saved.";
}

mysql_close($con);

//echo $_GET['jsoncallback'] . '(' . json_encode($records) . ');';
?>


<?php


$dbconn3 = pg_connect(" dbname=jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna user=vkzivsefpcoxqi password=dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");
$sqltime = "SELECT EXTRACT(TIMEZONE FROM now())/3600.0";
$result = pg_query($sqltime);
echo $result;
//connect to a database named "mary" on the host "sheep" with a username and password

?>

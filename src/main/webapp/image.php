<?php
$uploaddir = '/home/postgres/';
$uploadfile = $uploaddir . basename($_FILES['userfile']['name']);
$name = $_POST['name'];

if (move_uploaded_file($_FILES['userfile']['tmp_name'], $uploadfile))
{   // echo "File is valid, and was successfully uploaded.\n";
}
else   {   echo "File size greater than 300kb!\n\n";   }

echo "'$name'\n";

$conn = pg_pconnect("dbname=jdbc:postgresql://ec2-54-243-213-188.compute-1.amazonaws.com:5432/deoqpobdfumna2 user=vkzivsefpcoxqi password=dc800fc78ba20df40f86c5c828c8a4b69dce75095371428e732ca89f2c36b080");
$query = "insert into image values ('$name', lo_import('$uploadfile'), 'now')";
$result = pg_query($query);

if($result)
{
    echo "File is valid, and was successfully uploaded.\n";
    unlink($uploadfile);
}
else
{
    echo "Filename already exists. Use another filename. Enter all the values.";
    unlink($uploadfile);
}
pg_close($conn);
?>
<html>
<head><title>File Upload To Database</title></head>

<body>
<h3>Please Choose a File and click Submit</h3>

<form enctype="multipart/form-data" action="image.php" method="POST">

    <input type="hidden" name="MAX_FILE_SIZE" value="300000" />
    Name : <input type="text" name="name" size="25" length="25" value="">

    <input type="hidden" name="MAX_FILE_SIZE" value="300000" />
    File: <input name="userfile" type="file" size="25"/>

    <input type="submit" value="Upload" />
</form>

</body>

<form action="upload.php" method="Post">
    <input type="hidden" name="width" id="width" value="">
    <input type="hidden" name="height" id="height" value="">
    <input type="submit" value="Resolution" name="submit">
</form>
<script type="text/javascript">
    var  findwidth = screen.width;
    var  findheigth =screen.height;

    document.getElementById("width").value=findwidth;
    document.getElementById("height").value=findheigth;

</script>



</html>

<?php
if(isset($_POST['submit']))
{
    $width = $_POST['width'];
    $heigth = $_POST['height'];
    echo $heigth,$width;

}



?>
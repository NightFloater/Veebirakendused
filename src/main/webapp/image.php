<form action="upload.php" method="POST">
    <input type="hidden" name="width" id="width" value="">
    <input type="hidden" name="height" id="height" value="">
    <input type="submit" value="Resolution" name="submit">
</form>
<script type="text/javascript">
    var  findwidth = window.width;
    var  findheight =window.height;

    document.getElementById("width").value=findwidth;
    document.getElementById("height").value=findheight;

</script>



<?php
if(isset($_POST['submit']))
{
    $width = $_POST['width'];
    $height = $_POST['height'];
    echo "$height,$width";

}



?>
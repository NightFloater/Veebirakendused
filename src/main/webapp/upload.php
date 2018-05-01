<html lang="en">
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



<p>Kliki siia, et oma reso naha ja mis kellaajal kylastasid</p>

<button onclick="myFunction()">Try it</button>



<p id="X"></p>
<p id="Y"></p>
<p id="time"></p>
<p id="IP"></p>



<script>
    function myFunction() {
        var x = "Total Width: " + screen.width + "px";
        var y = "Total Width: " + screen.height + "px";

        document.getElementById("X").innerHTML = x;
        document.getElementById("Y").innerHTML = y;

        var today = new Date();
        document.getElementById('time').innerHTML=today.getHours().toString();
    }
</script>


<script type="text/javascript">
    var userip;
</script>

<script type="text/javascript" src="https://l2.io/ip.js?var=userip"></script>

<script type="text/javascript">
    document.write("Su IP address on :", userip);
</script>


</body>






</html>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="resolution" content="resolution">
</head>
<body>

<p>Click the button to display the total width of your screen, in pixels.</p>

<button onclick="myFunction()">Try it</button>

<p id="demo"></p>

<script>
    function myFunction() {
        var x = "Total Width: " + screen.width + "px";
        document.getElementById("demo").innerHTML = x;
    }
</script>

</body>
</html>

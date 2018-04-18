<%@page import="java.sql.*" %>
<html>
<form method="get" action="blobexcode.jsp" onsubmit="txtvalidate()">
    <head>
        <style type="text/css">
            body{
                background-color:#d0e4fe;
            }
        </style>
    </head>

    <body>
    <table>
        <tr>
            <td>
                Customer Name&nbsp;<input type="text" name="Customername" id="customername">
            </td>
        </tr>
        <tr>
            <td>
                Customer Mob: <input type="text" onkeypress="return
isNumberKey(event)" name="Customerphone" id="customerphone" >
            </td>
        </tr>
        <tr>
            <td>
                Upload File:&nbsp;&nbsp;<input type="file" id="f" name="f" >
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="SUBMIT" id="submit">
            </td>
        </tr>

        <script type="text/javascript">
            function isNumberKey(evt)
            {
                var charCode = (evt.which) ? evt.which : event.keyCode
                if (charCode > 31 && (charCode < 48 || charCode > 57))
                    return false;
                else
                    return true;
            }
        </script>

        <script type="text/javascript">
            function txtvalidate()
            {
                if(document.getElementById("customername").value=="" ||
                    document.getElementById("customerphone").value=="")
                {
                    alert("Fill all fields");
                    return false;
                    document.Customername.focus();
                }
                else
                    return true;
            }
        </script>

    </table>
    </body>
</form>
</html>
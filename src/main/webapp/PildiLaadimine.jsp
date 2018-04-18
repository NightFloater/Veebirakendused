<%@page import="java.sql.*" %>
<html>
<form method="get" action="tulevaneKood.jsp" onsubmit="txtvalidate()">
    <head>
        <style type="text/css">
            body{
                background-color:#d0e4fe;
            }
        </style>
    </head>

    <body>
    <table>

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


    </table>
    </body>
</form>
</html>
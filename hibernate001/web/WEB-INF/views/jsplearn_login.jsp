<%@include file="includes/include_head.jsp"%>
<html>
<head>
    <title>JSP learn</title>
    <%@include file="includes/include_global_css.jsp"%>
</head>
<body>
<%@include file="includes/page_header.jsp"%>

<form action="" method="get">
    <table>
        <tr>
            <td>
                Login:
            </td>
            <td>
                <input type="text" name="inplog"/>
            </td>
        </tr>
        <tr>
            <td>
                Password:
            </td>
            <td>
                <input type="password" name="inppass"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submenter" value="Login"/>
            </td>
        </tr>
        <tr>
            <td></td>
            <td>
                <input type="submit" name="submregister" value="Register"/>
            </td>
        </tr>
    </table>




</form>

<%@include file="includes/page_footer.jsp"%>
</body>
</html>

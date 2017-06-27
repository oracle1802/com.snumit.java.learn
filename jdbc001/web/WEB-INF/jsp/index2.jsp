<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>

<html>
<head>
    <title>Добро пожаловать</title>
</head>
<body>
<h4> Добро пожаловать! </h4>
Поздравляем 2, вы <b>${visitorCount}</b> посетитель <br/>
<%
    java.util.Date date=new java.util.Date();
    System.out.println ("date is" + date);
%>
Строк в T1 : <b>${rowsCount}</b>  <br/>
<%--<% Logger logger=Logger.getLogger(this.getClass().getName());%>--%>
<%--<c:forEach var="toll" begin="1" end="10" step="1" >--%>
    <%--<c:set var="mytoll" value="${toll-5}" />--%>
    <%--<c:out value="${mytoll}"/></br>--%>
    <%--<% String message = "toll="--%>
                <%--+ pageContext.findAttribute("toll")--%>
                <%--+ " mytollt="--%>
                <%--+ pageContext.findAttribute("mytoll");--%>
        <%--logger.info( message );--%>
    <%--%>--%>
<%--</c:forEach>--%>

</body>
</html>
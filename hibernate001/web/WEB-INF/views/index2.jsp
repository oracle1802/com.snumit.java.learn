<%@include file="includes/include_head.jsp"%><html>
<head>
    <title>index2 page</title>
    <%@include file="includes/include_global_css.jsp"%>
</head>
<body>
<%@include file="includes/page_header.jsp"%>
<h4>Привет!!!</h4>
Вы <b>${visitorCount}</b> посетитель <br/>
<%
    java.util.Date date=new java.util.Date();
    System.out.println ("date is" + date);
%>
Переменная T1 : <b>${rowsCount}</b>  <br/>
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
<%@include file="includes/page_footer.jsp"%>
</body>
</html>
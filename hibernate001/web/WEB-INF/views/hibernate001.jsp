<%@include file="includes/include_head.jsp"%>
<html>
<head>
    <title>Hibernate001</title>
    <%@include file="includes/include_global_css.jsp"%>
</head>
<body>
    <%@include file="includes/page_header.jsp"%>
список
<ol class="contact-list">


    <c:if test="${empty contactlist}">
        contact-list is empty
    </c:if>

    <c:if test="${not empty contactlist}">
        <c:forEach var="elm" items="${contactList}">
            <c:out value="${elm.getFirstName()}"/>
        </c:forEach>
    </c:if>

</ol>

hi hibernate 001
    <%@include file="includes/page_footer.jsp"%>
</body>
</html>

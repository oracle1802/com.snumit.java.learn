<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div>
  <c:forEach var="user" items="${testPersistence.findAll()}">
    <li>
        ${user.firstName}
    </li>
  </c:forEach>
</div>
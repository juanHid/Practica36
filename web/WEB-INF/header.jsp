
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<c:choose>
    <c:when test="${ usuario == null}">
        <jsp:forward page="/login.jsp" />
    </c:when>    
</c:choose>

<a href="logout" >Logout</a>


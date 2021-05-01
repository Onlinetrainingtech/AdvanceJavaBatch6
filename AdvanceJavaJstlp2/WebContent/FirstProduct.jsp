<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="name" value="${param.uname}"></c:set>

<c:choose>
  <c:when test="${name.equals('admin')}">
     <c:out value="LoginSucess.."></c:out>
  </c:when>
  <c:otherwise>
 <%--  <c:out value="LoginFail"/> --%>
  <c:redirect url="error.jsp"></c:redirect>
</c:otherwise>
</c:choose>


</body>
</html>
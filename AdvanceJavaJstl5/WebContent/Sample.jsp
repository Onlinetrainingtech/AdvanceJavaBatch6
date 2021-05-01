<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <%@taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<c:set var="bal" value="100.34"></c:set>

<f:parseNumber var="d" value="${bal}" type="number"></f:parseNumber>

Your Number is:<c:out value="${d}"></c:out>

<f:parseNumber var="d" value="${bal}" integerOnly="true" type="number"></f:parseNumber>

Your Number is::<c:out value="${d}"></c:out>

<f:formatNumber value="20000" type="currency"></f:formatNumber>
</body>
</html>
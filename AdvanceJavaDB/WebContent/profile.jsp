<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
HttpSession sess=request.getSession(true);
String u1=(String)sess.getAttribute("k1");


%>
<form action="profileupdateaction.jsp">
UserName:<input type="text" name="u2" value="<%=u1%>" readonly/>
Password:<input type="text" name="pass" value=""/>
<input type="submit" value="UpdateProfile"/>
</form>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   String p=request.getParameter("pass");
   String u3=request.getParameter("u2");
  String str3="update adduserreg set pass='"+p+"' where uname='"+u3+"'";

Class.forName("org.h2.Driver");
Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/fullstackbatch6","sa","");
Statement stmt=conn.createStatement();
stmt.executeUpdate(str3);
out.println("Updated...!!!");

%>
</body>
</html>
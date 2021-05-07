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

 String uname=request.getParameter("uname");

  String pass=request.getParameter("pass");
  
  String email=request.getParameter("email");
  
  String mobile=request.getParameter("mobile");
  
  String str2="insert into adduserreg values('"+uname+"','"+pass+"','"+email+"','"+mobile+"')";
  
  Class.forName("org.h2.Driver");
  Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/fullstackbatch6","sa","");
  Statement stmt=conn.createStatement();
  stmt.executeUpdate(str2);
  RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
  rd.forward(request,response);

%>
</body>
</html>
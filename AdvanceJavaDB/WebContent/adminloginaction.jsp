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
try
{
   String e1=request.getParameter("email");
   String p1=request.getParameter("pass");
   
   String str1="select * from adminpage";
   Class.forName("org.h2.Driver");
   Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/fullstackbatch6","sa","");
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(str1);
   rs.next();
   String email=rs.getString(1);
   String pass=rs.getString(2);
   //System.out.println(email+""+pass);
   //System.out.println("****"+e1+""+p1);
   if(e1.equals(email)&&p1.equals(pass))
   {
	   RequestDispatcher rd=request.getRequestDispatcher("AdminHomePage.jsp");
	   rd.forward(request,response);
	   //System.out.println("LoginSucess!!!");
   }
   else
   { 
	   RequestDispatcher rd=request.getRequestDispatcher("AdminLogin.jsp");
	   rd.include(request,response);
	   out.println("LoginFail!!!");
	   //System.out.println("LoginFail!!!");
   }
}
catch(Exception r)
{
   System.out.println(r);
}
%>
</body>
</html>
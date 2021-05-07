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
   String u1=request.getParameter("uname");
   String p1=request.getParameter("pass");
   
   String str1="select * from adduserreg where uname='"+u1+"' and pass='"+p1+"'";
   Class.forName("org.h2.Driver");
   Connection conn=DriverManager.getConnection("jdbc:h2:tcp://localhost/~/fullstackbatch6","sa","");
   Statement stmt=conn.createStatement();
   ResultSet rs=stmt.executeQuery(str1);
   rs.next();
   String uname=rs.getString(1);
   String pass=rs.getString(2);
   System.out.println(uname+""+pass);
   System.out.println("****"+u1+""+p1);
   if(u1.equals(uname)&&p1.equals(pass))
   {
	   HttpSession sess=request.getSession();
	   sess.setAttribute("k1",u1);
	   RequestDispatcher rd=request.getRequestDispatcher("UserHomePage.jsp");
	   rd.forward(request,response);
	   //System.out.println("LoginSucess!!!");
   }
   else
   { 
	   RequestDispatcher rd=request.getRequestDispatcher("UserLogin.jsp");
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
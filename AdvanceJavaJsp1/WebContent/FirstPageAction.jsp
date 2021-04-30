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
   String e1=request.getParameter("email");

   String p1=request.getParameter("pass");
   
   if(e1.equals("admin@gmail.com")&&p1.equals("admin"))
   {
	   RequestDispatcher rd=request.getRequestDispatcher("sucess.jsp");
	   rd.forward(request,response);
   }
   else
   {
	    RequestDispatcher rd=request.getRequestDispatcher("FirstPage.jsp");
	    rd.include(request,response);
	    
	    out.println("LoginFail!!");
   }
%>
</body>
</html>
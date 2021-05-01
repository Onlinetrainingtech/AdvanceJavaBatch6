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

  if(e1.equals("admin@gmail.com"))
  {
	  %>
	  
	   <jsp:useBean id="r" class="com.RecordAction"></jsp:useBean>
	   
	   <jsp:setProperty property="*" name="r"/>
	   
	   Your Record is:
	   
	   <jsp:getProperty property="email" name="r"/>
	   
	   <jsp:getProperty property="pass" name="r"/>
	   
	  <%
  }
  else
  {
	  %>
	  
	  <jsp:include page="ActionTagPage.jsp"></jsp:include>
	  
	  <%
	  
	  out.println("LoginFail!!");
  }

%>
</body>
</html>
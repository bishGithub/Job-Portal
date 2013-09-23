<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Software Engineering Job Portal</title>
<link href="login.css" rel="stylesheet" type="text/css" />
<style type="text/css">
	body
	{
		background-image:url('water.jpg');
	
	}
</style>
</head>
<body>

<%
	/**
		code checks to see if the request parameter contains the logout key.
		If yes, then it removes attributes from the session.
	*/
	if(null!=request.getParameter("logoutID")){
		String logoutID = request.getParameter("logoutID");
		if(logoutID.equals("1")){
			session.removeAttribute("username");
		}
	}
	

%>
<form action = "validate.jsp" method = "post">
<div id="container">
	<div id="header">
		<h1>Company Login</h1><br/>
		<%
		if(null!=request.getParameter("error")){
			String errorID = request.getParameter("error");
			if(errorID.equals("1")){
				out.println("<h3>Invalid Credentials</h3></br>");
			}
			
			//session.setAttribute("empty",null);
		}
		%>
			UserName: <input type = "text" name = "username" /> <br/><br/>
			Password: <input type = "password" name = "password" /> <br/><br/>
			<input type = "submit" value = "submit"><br/><br/>
			<a href="company_registration.jsp">New User? Register</a>;
	</div>
</div>
</form>
</body>
</html>
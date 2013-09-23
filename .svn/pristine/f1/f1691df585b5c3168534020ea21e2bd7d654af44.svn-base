<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Software Engineering Job Portal</title>
<link href="login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div id="container">
	
		<h1>Student Login</h1><br/>		
	<center>	
	<table cellspacing="5" border="0" cellpadding="0">
		<tr valign="top" align="center">
		<td width="150">
		<form action = "validate_student_login.jsp" method = "post">
			UserName(1000 ID): <input type = "text" name = "username" /> <br/><br/>
			Password: <input type = "password" name = "password" /> <br/><br/>
			<input type = "submit" value = "Sign In"><br/><br/>			
		</form>
		<a href="#">Forgot Password ?</a>
		<%
			if (null != request.getParameter("error")) {
				String logoutID = request.getParameter("error");
				if (logoutID.equals("0")) {
					//session.removeAttribute("username");
					out.println("Invalid Username/Password");
				}
			}
		%>
		</td>
		<td width="1" bgcolor="#000000"><BR></td>
		<td>New Student? Check Your ID and Register 
		<form action = "se_student_check.jsp" method = "post">
		1000 ID: <input type = "text" name = "thousand_id" /> <br/><br/><br/>
		<input type="Submit" name="home_student" value="Generate Password"></input>
		</form> <br/><br/>
		<a href="home.jsp">Go to Main Page</a><br/><br/>
<%
	/**
		code checks to see if the request parameter contains the logout key.
		If yes, then it removes attributes from the session.
	 */
	if (null != request.getParameter("exists")) {
		String logoutID = request.getParameter("exists");
		if (logoutID.equals("0")) {
			//session.removeAttribute("username");
			out.println("Password previously generated");
		}
	}
	if (null != request.getParameter("incorrect")) {
		String logoutID = request.getParameter("incorrect");
		if (logoutID.equals("1")) {
			//session.removeAttribute("username");
			out.println("User not registered. Contact Dr. Kung {kung@uta.edu}");
		}
	}
	if (null != request.getParameter("email")) {
		String logoutID = request.getParameter("email");
		//session.removeAttribute("username");
		out.println("Password sent to " + logoutID);

	}
%>
		</td>
		</tr>
		</table>
		</center>
	
</div>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Student Welcome</title>
<link href="login.css" rel="stylesheet" type="text/css" />
</head>
<body>
<%
System.out.println(session.getAttribute("studentId"));
System.out.println(session.getAttribute("studentFName"));
System.out.println(session.getAttribute("studentLName"));
System.out.println(session.getAttribute("studentEmail"));
 %>
	<input id="change_password" type="button" value="Change Password" onClick="parent.location=''"/><br/>
	<input id="create_profile" type="button" value="Create/Modify Profile" onClick="parent.location='StudentProfile.jsp'"/> <br/>
	<input id="search_jobs" type="button" value="Search Jobs"/><br/>
	<input id="check_status" type="button" value="Check Job Status"/> <br/>
	<input id="logout" type="button" value="Log Out" onClick="parent.location='home.jsp'"/> <br/>
</body>
</html>
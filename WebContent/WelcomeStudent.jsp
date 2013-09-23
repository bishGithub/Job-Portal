<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Welcome</title>
<link href="design.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript">
</script>
<style type="text/css">
body {
	background-image: url('water.jpg');
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>

	<%
       /**
          code checks to see if the request parameter contains cancel request
       */
       if(null!=request.getParameter("cancel")){
               String cancel = (String) request.getParameter("cancel");
               if(cancel.equals("1")){

               }
       }

%>
	<div id="container">
		<div id="header">
			<h1>Welcome Student</h1>
		</div>
		<div id="navigation">
			<ul>
				<li><a href="WelcomeStudent.jsp">Home</a></li>
				<li><a href="StudentProfile.jsp">Profile</a></li>
				<li><a href="ListJobs.jsp">List All Jobs</a></li>
				<li><a href="ViewAccount.jsp">Application Status</a></li>
				<li><a href="change_password.jsp">Change Password</a></li>
				<li><a href="home.jsp?logoutID=1">Logout</a></li>
			</ul>
		</div>
		<div id="content-container">
			<div id="content">
				<h2>Welcome Student</h2>
				<p>Welcome to Student Page.</p>
			</div>
			<div id="aside">
				<h4>
					<%
                        if(null!=request.getParameter("success")){
               String cancel = (String) request.getParameter("success");
               if(cancel.equals("1")){
					out.println("Profile successfully updated!!");
               }else if(cancel.equals("3")){
               		out.println("You have successfully applied for the job!!");
               }
       }

%>
				</h4>
				<%
                       /**
                               code displays meeting updates in the right column of the page
                       */
                       String meeting = (String) request.getParameter( "meeting" );
                       if(meeting!=null){
                               out.println("<p>"+meeting+"</p>");
                       }else{

                       }
                       %>
			</div>
			<div id="footer">Copyright © UTArlington, 2012</div>
		</div>
	</div>
</body>
</html>
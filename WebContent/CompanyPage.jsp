<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascript">


</script>

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
	<div id="container">
		<div id="header">
			<h1>Welcome Company</h1>
		</div>
		<div id="navigation">
			<ul>
				<li><a href="CompanyPage.jsp">Home</a></li>
				<li><a href="CompanyProfile.jsp">Profile</a></li>
				<li><a href="PostJobs.jsp">Post Jobs</a></li>
				<li><a href="JobsCreated.jsp ">View Posted Jobs</a></li>
				<li><a href="home.jsp?logoutID=1">Logout</a></li>
			</ul>
		</div>
		<div id="content-container">
			<div id="content">
				<h2>Welcome Company.</h2>
				<p>Welcome to Company Page.</p>
<%
				if(null!=request.getParameter("success")){ String cancel = (String)
				request.getParameter("success"); if(cancel.equals("3")){
				out.println("Applicant Status Succesfully updated!!!"); } }
 %>
			</div>



			<div id="footer">Copyright © UTArlington, 2012</div>
		</div>
	</div>

</body>
</html>
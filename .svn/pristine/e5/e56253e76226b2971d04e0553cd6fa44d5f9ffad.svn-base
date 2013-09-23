<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>

<title>Software Engineering Job Portal</title>
<link href="login.css" rel="stylesheet" type="text/css" />
<script language="javascript" type="text/javascript">
</script>
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
		  code checks to see if a session is valid. Else redirects back to login page
		*/
		String username = (String) session.getAttribute( "username" );
		if(username==null){
			%><jsp:forward page = "login.jsp"></jsp:forward> <% 
		}
%>

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
		<h1>Company Login</h1>
	</div>
	<div id="navigation">
		<ul>
			<li><a href="Client.jsp">Home</a></li>
			
			<%
				/**
					code checks to see if the user has cancel privileges.
					If the user has initiated the meeting , only then 
					does he have the privilege to cancel it
				*/
				
				boolean checkUser =true;
				if(checkUser){
			%>
				<li><a href="Client.jsp?cancel=1">Cancel Meeting</a></li>
			<% } %>
			<li><a href="login.jsp?logoutID=1">Logout</a></li>
		</ul>
	</div>
	<div id="content-container">
		<div id="content">
			<h2>
				Organizer
			</h2>
			<p>
				Welcome to Meeting scheduler. <br/>
				You can update you organizer and also initiate a meeting request with the participants.<br/>
				The update column on the right will notify if there is any existing meeting scheduled.
			</p>
		</div>
		<div id="aside">
			<h3>
				Meeting Updates
			</h3>
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
		<div id="footer">
			Copyright © UTArlington, 2011
		</div>
	</div>
</div>
</body>
</html>
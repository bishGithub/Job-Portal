<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Change Password</title>

<script type="text/javascript">
	function submit() {
		//alert("I am here");
		if (document.getElementById('newpassword').value != document
				.getElementById('confirmpassword').value) {
			alert("Password and Confirm Password do not match");
		} else

		{
			document.forms["myform"].submit();
		}
	}
</script>

<link href="design.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript">
</script>
<style type="text/css">
       body
       {
               background-image:url('water.jpg');

       }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<%
       if(null!=request.getParameter("cancel")){
               String cancel = (String) request.getParameter("cancel");
               if(cancel.equals("1")){
               }
       }
%>
<div id="container">
       <div id="header">
               <h1>
                       Welcome Student

               </h1>
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
                       <h2>
                               Welcome Student
                       </h2>
                       
                       <form id='myform' action='verify_change_password.jsp'>
									<table border=0>
										<tr>
							
											<td width=200>Enter 1000 Id:</td>
											<td><input type="text" size=35 name="thousandid"
												id="thousandid" readonly value = "<%=session.getAttribute("studentId") %>"></input><br />
												<!-- id="thousandid"></input><br /> -->
											</td>
										</tr>
										<tr>
							
											<td width=200>Old Password:</td>
											<td><input type="password" size=35 name="oldpassword"
												id="oldpassword" /><br />
											</td>
										</tr>
										<tr>
							
											<td width=200>New Password:</td>
											<td><input type="password" size=35 name="newpassword"
												id="newpassword" /><br />
											</td>
										</tr>
										<tr>
							
											<td width=200>Confirm Password</td>
											<td><input type="password" size=35 name="confirmpassword"
												id="confirmpassword" /><br />
											</td>
										</tr>
										<tr>
											<td width=400></td>
											<td><a href="javascript: submit()">Submit</a></td>
											<!-- <td><input type="button" name = "changepwd" value="Submit" onclick="submit()"></td> -->
										</tr>
									</table>
								</form>
								
								<%
									if (null != request.getParameter("error")) {
										String logoutID = request.getParameter("error");
										if (logoutID.equals("0")) {
											//session.removeAttribute("username");
											out.println("Password and Thousand Id do not match");
										}
									}
									if (null != request.getParameter("success")) {
										String logoutID = request.getParameter("success");
										if (logoutID.equals("1")) {
											//session.removeAttribute("username");
											out.println("Password changed successfully");
										}
									}
								%>
				</div>
               

               <div id="footer">
                       Copyright © UTArlington, 2012
               </div>
       </div>
</div>
</body>
</html>
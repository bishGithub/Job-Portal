<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Job Status</title>
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
               /**
                 code checks to see if a session is valid. Else redirects back to login page
               */



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
               <h1>
                       Welcome Student

               </h1>
       </div>
       
       <div id="navigation">
               <ul>
                       <li><a href="WelcomeStudent.jsp">Home</a></li>
                       <li><a href="StudentProfile.jsp">Profile</a></li>
                       <li><a href="jobSearch.jsp">Search & Apply</a></li>
                       <%
                               boolean checkUser = true;
                               if(checkUser){
                       %>
                               <li><a href="jobApplied.jsp">Application Status</a></li>
							   <li><a href="change_password.jsp">Change Password</a></li>
                       <% } %>
                       <li><a href="home.jsp?logoutID=1">Logout</a></li>
               </ul>
       </div>
       
       <div id="content-container">
               <div id="content">
                       <h2>
                               Organizer
                       </h2>
					<div align="center"><span class="style1">Jobs Applied</span>
					</div>
					<form id="form1" name="form1" method="post" action="">
					  <p>&nbsp;</p>
					  <table width="766" height="52" border="1" align="center">
					    <tr>
					      <td width="193">Company Name </td>
					      <td width="201">Job Title </td>
					      <td width="163">Job Id </td>
					      <td width="181">Appilication Status </td>
					    </tr>

					    <tr>
					      <td colspan="4"><label>
					      <div align="center">
					      
					      <input id="Home" type="button" value="Home" onClick="parent.location='WelcomeStudent.jsp'"/> <br/>

					      </div>
					      </label></td>
					    </tr>
					  </table>
					  <p>&nbsp;</p>
					  <p>&nbsp;</p>
					</form>
               </div>
               
               <div id="footer">
                       Copyright © UTArlington, 2012
               </div>
       </div>
</div>
</body>
</html>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="util.MysqlConnect"%>
<%@ page import = "java.sql.*" %>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Welcome</title>
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
                      <%
		java.sql.Connection con;
		java.sql.Statement s;
		java.sql.ResultSet rs;
		java.sql.PreparedStatement pst;

		con = null;
		s = null;
		pst = null;
		rs = null;
		
		String jobId = request.getParameter("jobId");
		String applied = request.getParameter("applied");
		MysqlConnect dbConnectObject = new MysqlConnect();
		
		con = dbConnectObject.dbConnect();
		String sql = "select * from cse6324_job_posting WHERE job_id ="+jobId;
		s = con.createStatement();
		rs = s.executeQuery(sql);
		
       %>
       <div id="content-container">
               <div id="content">
                       <h2>
                               Job Information
                       </h2>
                       <table>
								
                       <%
                       while(rs.next()){%>
								
								<tr>
									<td>Job Id</td>
									<td><%=rs.getString(3) %></td>
								</tr>
								<tr>
									<td>Job Title</td>
									<td><%=rs.getString(4) %></td>
								</tr>
								<tr>
									<td>Company Name</td>
									<td><%=rs.getString(10) %></td>
								</tr>
								<tr>
									<td>Abtract</td>
									<td><%=rs.getString(5) %></td>
								</tr>
								<tr>
									<td>Category</td>
									<td><%=rs.getString(6) %></td>
								</tr>								
								<tr>
									<td>Job Description</td>
									<td><%=rs.getString(8) %></td>
								</tr>
								<tr>
									<td>Salary Range</td>
									<td><%=rs.getString(9) %></td>
								</tr>
								<%if(null == applied){ 
								System.out.println(applied);%>
								<tr>
									<td><a href= "ApplyJob.jsp?jobId=<%=jobId%>&companyId=<%=rs.getString(2)%>&companyName=<%=rs.getString(10)%>&jobTitle=<%=rs.getString(4) %>">Apply Now</a></td>
								</tr>
								<% } %>
                   <%    }
                   dbConnectObject.dbConnectionsClose();
                        %>
                 	</table>       
               </div>
             
               <div id="footer">
                       Copyright © UTArlington, 2012
               </div>
       </div>
</div>
</body>
</html>
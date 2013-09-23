<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="util.MysqlConnect"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "java.util.*" %>

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
		java.sql.Statement s2;
		java.sql.ResultSet rs;
		java.sql.ResultSet rs2;
		java.sql.PreparedStatement pst;

		con = null;
		s = null;
		pst = null;
		rs = null;
		rs2 = null;
		s2 = null;
		MysqlConnect dbConnectObject = new MysqlConnect();
		String studentId = (String)session.getAttribute("studentId");
		con = dbConnectObject.dbConnect();
		String sql2 = "select * from cse6324_job_application WHERE studentId = "+studentId;
		s2 = con.createStatement();
		rs2 = s2.executeQuery(sql2);
		String[] appliedJobs=  new String[100];
		
		int i=0;
		while(rs2.next()){
			appliedJobs[i++] = rs2.getString(5);
		}		
		List appJobs = Arrays.asList(appliedJobs) ;
		
		String sql = "select * from cse6324_job_posting";
		s = con.createStatement();
		rs = s.executeQuery(sql);
		
       %>
       <div id="content-container">
               <div id="content">
                       <h2>
                               Available Jobs
                       </h2>
                       <a href = "search.jsp">Search for a Job</a>
                       <table>
								<tr>
									<th>Job Id</th>
									<th>Job Title</th>
									<th>Company Name</th>
									<th></th>
								</tr>
                       <%
                       while(rs.next()){
							if(appJobs.contains(rs.getString(3))) { }else{                      
                       
                       %>
								<tr>
									<td><%=rs.getString(3) %></td>
									<td><%=rs.getString(4) %></td>
									<td><%=rs.getString(10) %></td>
									<td><a href="ViewJob.jsp?jobId=<%=rs.getString(3) %>">View</a></td>
								</tr>
                   <% }  
                     }
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
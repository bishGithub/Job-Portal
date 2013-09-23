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
                        Welcome Company

               </h1>
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
		String jobId = request.getParameter("jobId");
		MysqlConnect dbConnectObject = new MysqlConnect();
		
		con = dbConnectObject.dbConnect();
		String sql = "select s.student_id, s.f_name, s.l_name, j.status from cse6324_student_profile as s, cse6324_job_application as j where j.jobId='"+jobId+"' and j.studentId=s.student_id";
		s = con.createStatement();
		rs = s.executeQuery(sql);
		
       %>
       <div id="content-container">
               <div id="content">
                       <h2>
                               Applicants List!!
                       </h2>
                       <table>
								<tr>
									<th>Student Id</th>
									<th>First Name</th>
									<th>Last Name</th>
									<th></th>
									<th>Status</th>
								</tr>
                       <%
                       while(rs.next()){
							                 
                       
                       %>
								<tr>
									<td><%=rs.getString(1) %></td>
									<td><%=rs.getString(2) %></td>
									<td><%=rs.getString(3) %></td>
									<td><a href="ViewApplicantDetails.jsp?studentId=<%=rs.getString(1) %>&jobId=<%=jobId %>&status=<%=rs.getString(4)%>">View Applicant Details</a></td>
									<td><%=rs.getString(4) %></a></td>
								</tr>
                   <% }  
                    
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
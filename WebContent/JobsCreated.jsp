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
		String companyId = (String)session.getAttribute("companyId");
		MysqlConnect dbConnectObject = new MysqlConnect();
		
		con = dbConnectObject.dbConnect();
		String sql = "select * from cse6324_job_posting WHERE comp_id = "+companyId;
		s = con.createStatement();
		rs = s.executeQuery(sql);
		
       %>
       <div id="content-container">
               <div id="content">
                       <h2>
                               Jobs posted by You!!
                       </h2>
                       <table>
								<tr>
									<th>Job Id</th>
									<th>Job Title</th>
									<th></th>
								</tr>
                       <%
                       while(rs.next()){
							                 
                       
                       %>
								<tr>
									<td><a href="ViewJob.jsp?jobId=<%=rs.getString(3) %>"><%=rs.getString(3) %></a></td>
									<td><%=rs.getString(4) %></td>
									<td><a href="ViewApplicants.jsp?jobId=<%=rs.getString(3) %>">View Applicants</a></td>
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
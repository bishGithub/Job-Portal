<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="util.MysqlConnect"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Page</title>
<link href="design.css" rel="stylesheet" type="text/css" />
<style type="text/css">
       body
       {
               background-image:url('water.jpg');

       }
</style>
</head>
<body>
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
					MysqlConnect dbConnectObject = new MysqlConnect();					
					con = dbConnectObject.dbConnect();
					s = con.createStatement();
					String sql = null;

%>
  <div id="content-container">
               <div id="content">
                       <h3>
                               Select the Filter Condition and click on Submit to search for jobs
                       </h3>
                       
	<form name="" action="search.jsp" method="post">
		<select name="search" id="search">
			<option>Job Title</option>
			<option>Job Category</option>
			<option>Salary</option>
			<option>Keywords</option>
		</select> 
		<input type="text" name="word" />
		<input type = "submit" value = "Submit" />
	</form>
	<%
	if(null != request.getParameter("word")){
		
		String search = request.getParameter("search");
		String word = request.getParameter("word");
		System.out.println(word+"  "+search);
		if(search.equals("Company Name")){
			sql = "SELECT * FROM cse6324_company_profile WHERE comp_name LIKE '%"+word+"%'";
			rs = s.executeQuery(sql);		
		}else if(search.equals("Job Title")){
			
			sql = "SELECT * FROM cse6324_job_posting WHERE title LIKE '%"+word+"%'";
			rs = s.executeQuery(sql);		
		}else if(search.equals("Job Category")){
			sql = "SELECT * FROM cse6324_job_posting WHERE category LIKE '%"+word+"%'";
			rs = s.executeQuery(sql);
		}else if(search.equals("Salary")){
			sql = "SELECT * FROM cse6324_job_posting WHERE salary_range LIKE '%"+word+"%'";
			rs = s.executeQuery(sql);
		}else if(search.equals("Keywords")){
			sql = "SELECT * FROM cse6324_job_posting WHERE keywords LIKE '%"+word+"%'";
			rs = s.executeQuery(sql);
		}
	%>
	<table>
		<tr>
			<th>Job Id</th>
			<th>Job Title</th>
			<th></th>
			<%
	while(rs.next()){
								%>
		
		<tr>
			<td align="center">
				<%out.println(rs.getString(3));%>
			</td>
			<td align="center">
				<%out.println(rs.getString(4));%>
			</td>
			<td><a href="ViewJob.jsp?jobId=<%=rs.getString(3) %>">View job</a></td>
		</tr>
<%	}	 }

dbConnectObject.dbConnectionsClose(); %>
	
	</table>
	</div>
	<div id="footer">Copyright © UTArlington, 2012</div>
	
	</div>
	</div>
</body>
</html>
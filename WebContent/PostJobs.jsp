<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script type="text/javascript">
	function saveJob() {
		if (document.getElementById('jobid').value == "") {
			alert("Job Id cannot be empty");
		} else if (document.getElementById('title').value == "") {
			alert("Title cannot be empty");
		} else if (document.getElementById('keywords').value == "") {
			alert("Keywords cannot be empty");
		} else if (document.getElementById('abstract').value == "") {
			alert("Abstract cannot be empty");
		} else if (document.getElementById('category').value == "") {
			alert("Category cannot be empty");
		} else if (document.getElementById('description').value == "") {
			alert("Description cannot be empty");
		} else {

		}
	}
</script>

<title>Post Job</title>
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
                       Post Job

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
       <div id="content-container">
               <div id="content">
                       <h2>
                               Post a job :
                       </h2>
                       
                       <form name="" action="" method="post">
						<br>
						<br>
				
						<table border=0>
				
							<tr>
								<td width=200>Job Id:</td>
								<td><input type="text" size=35 name="jobid" id="jobid" />*</td>
							</tr>
				
							<tr>
								<td width=200>Title:</td>
								<td><input type="text" size=35 name="title" id="title" />*</td>
							</tr>
				
							<tr>
								<td width=200>Keywords:</td>
								<td><input type="text" size=35 name="keywords" id="keywords" />*</td>
							</tr>
				
							<tr>
								<td width=200>Abstract:</td>
								<td><textarea name="abstract" id="abstract" rows=5 cols=26>
						</textarea>*</td>
							</tr>
				
							<tr>
								<td width=200>Category:</td>
								<td><input type="text" size=35 name="category" id="category" />*</td>
							</tr>
				
							<tr>
								<td width=200>Salary Range:</td>
								<td><input type="text" size=35 name="salary" id="salary" /></td>
							</tr>
				
							<tr>
								<td width=200>Description:</td>
								<td><textarea name="description" id="description" rows=10
										cols=26>
						</textarea>*</td>
							</tr>
				
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
				
							<tr>
								<td>&nbsp</td>
								<td>&nbsp</td>
							</tr>
				
						</table>
				
						<table border=0>
						
						
						<tr>
						<td width = 462><div align="center">
							  <input type="submit" value="Submit Job" onclick="saveJob()">
							  </div></td>
						</tr>
						
						<tr>
							<td>*Mandatory Fields</td>
							
						</tr>
					</table>
  					</form>
					<%
						if (request.getParameter("jobid") != null) {
							java.sql.Connection con;
							java.sql.Statement s;
							java.sql.ResultSet rs;
							java.sql.PreparedStatement pst;
				
							String companyid = (String)session.getAttribute("companyId");
							String jobid = request.getParameter("jobid");
							String title = request.getParameter("title");
							String keywords = request.getParameter("keywords");
							String abstrct = request.getParameter("abstract");
							String category = request.getParameter("category");
							String salary = request.getParameter("salary");
							String description = request.getParameter("description");
							MysqlConnect dbConnectObject = new MysqlConnect();
				
							con = null;
							s = null;
							pst = null;
							rs = null;
				
							if (!jobid.isEmpty()) {
								
								con = dbConnectObject.dbConnect();
								String queryString = "INSERT INTO "
										+ "cse6324_job_posting(comp_id, job_id, title, abstract,"
										+ "category, keywords, description, salary_range, comp_name) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?)";
								PreparedStatement pstatement = null;
								pstatement = con.prepareStatement(queryString);
								pstatement.setString(1, companyid);
								pstatement.setString(2, jobid);
								pstatement.setString(3, title);
								pstatement.setString(4, abstrct);
								pstatement.setString(5, category);
								pstatement.setString(6, keywords);
								pstatement.setString(7, description);
								pstatement.setString(8, salary);
								pstatement.setString(9, (String)session.getAttribute("companyName"));
				
								int updateQuery = pstatement.executeUpdate();
				
								pstatement.close();
								dbConnectObject.dbConnectionsClose();
								if (updateQuery != 0) {
									String redirectURL = "CompanyPage.jsp?success=2";
									response.sendRedirect(redirectURL);
								}
							} else {
								String redirectURL = "CompanyPage.jsp?error=1";
								response.sendRedirect(redirectURL);
				
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
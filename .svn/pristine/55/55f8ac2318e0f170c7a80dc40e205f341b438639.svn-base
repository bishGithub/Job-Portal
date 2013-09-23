<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script type="text/javascript">
	function saveProfile() {
		if (document.getElementById('firstname').value == "") {
			alert("First Name cannot be empty");
		} else if (document.getElementById('lastname').value == "") {
			alert("Last Name cannot be empty");
		} else if (document.getElementById('email').value == "") {
			alert("Email cannot be empty");
		} else {

		}
	}
</script>





<title>Student Profile</title>
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
	<%
		/**
		  code checks to see if a session is valid. Else redirects back to login page
		 */

		/**
		   code checks to see if the request parameter contains cancel request
		 */
		if (null != request.getParameter("cancel")) {
			String cancel = (String) request.getParameter("cancel");
			if (cancel.equals("1")) {

			}
		}
	%>
	<div id="container">
		<div id="header">
			<h1>Profile</h1>
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
					String sql = "select * from cse6324_student_profile where student_id='"
							+ request.getParameter("studentId") + "'";
					s = con.createStatement();
					rs = s.executeQuery(sql);
					String jobId = request.getParameter("jobId");
					String status = request.getParameter("status");
					if (rs.next()) {
				%>
				<form name="" action="ProcessApplicant.jsp" method="post">
					<h1 align="center">Welcome Company</h1>
					<br>
					<br>
							<input type = "hidden" name = "jobId" value = "<%=jobId %>" ></input>
							<input type = "hidden" name = "studentId" value = "<%=rs.getString(2) %>" ></input>
					<table border=0>
						<tr>
							<!-- To be passed on by the previous page  -->
							<!--readonly = "readonly"-->
							<td width=200>Student Id:</td>
							<td><input type="text" size=35 name="studentid"
								id="studentid" readonly
								value=<%if(null!=rs.getString(2)){out.println(rs.getString(2));} %>></input><br /></td>
						</tr>

						<tr>
							<td width=200>First Name:</td>
							<td><input type="text" size=35 name="firstname"
								id="firstname" readonly
								value=<%if(null!=rs.getString(3)){out.println(rs.getString(3));} %>></input>*</td>
						</tr>

						<tr>
							<td width=200>Middle Name:</td>
							<td><input type="text" size=35 name="middlename"
								id="middlename" readonly
								value=<%if(null!=rs.getString(4)){out.println(rs.getString(4));} %>></input></td>
						</tr>

						<tr>
							<td width=200>Last Name:</td>
							<td><input type="text" size=35 name="lastname" id="lastname"
								readonly
								value=<%if(null!=rs.getString(5)){out.println(rs.getString(5));} %>></input>*</td>
						</tr>

						<tr>
							<td width=200>Address:</td>
							<td><input type="text" size=35 name="address" id="address"
								readonly
								value="<%if(null!=rs.getString(6)){out.println(rs.getString(6));} %>"></input></td>
						</tr>

						<tr>
							<td width=200>Sex:</td>
							<td><select name="sex" id="sex">
									<option>Select One</option>
									<option>Male</option>
									<option>Female</option>
									<option>Do not want to disclose</option>
							</select></td>
						</tr>

						<tr>
							<td width=200>Email:</td>
							<td><input type="text" size=35 name="email" id="email"
								readonly
								value="<%if(null!=rs.getString(8)){out.println(rs.getString(8));} %>"></input>*</td>
						</tr>

						<tr>
							<td width=200>Phone Number</td>
							<td><input type="text" size=35 name="phonenumber"
								id="phonenumber" readonly
								value="<%if(null!=rs.getString(9)){out.println(rs.getString(9));} %>"></input></td>
						</tr>

						<tr>
							<td width=200>Visa Status:</td>
							<td><select name="visa" id="visa">
									<option>Select One</option>
									<option>US Citizen</option>
									<option>F1</option>
									<option>J1</option>
									<option>H1B</option>
									<option>N/A</option>
							</select></td>
						</tr>

						<tr>
							<td width=200>Start Date:</td>
							<td><select name="startmonth" id="startmonth">
									<option>Select Month</option>
									<option>January</option>
									<option>February</option>
									<option>March</option>
									<option>April</option>
									<option>May</option>
									<option>June</option>
									<option>July</option>
									<option>August</option>
									<option>September</option>
									<option>October</option>
									<option>November</option>
									<option>December</option>
							</select> <select name="startyear" id="startyear">
									<option>Select Year</option>
									<option>2012</option>
									<option>2013</option>
									<option>2014</option>
							</select></td>
						</tr>

						<tr>
							<td width=200>Courses Taken:</td>
							<td><input type="text" size=35 size=35 name="coursestaken"
								id="coursestaken" readonly
								value="<%if(null!=rs.getString(14)){out.println(rs.getString(14));} %>"></input></td>
						</tr>

						<tr>
							<td width=200>Educational Qualification:</td>
							<td><input type="text" size=35 size=35
								name="educationalqualification" id="educationalqualification"
								readonly
								value="<%if(null!=rs.getString(15)){out.println(rs.getString(15));} %>"></input></td>
						</tr>

						<tr>
							<td width=200>Expected Salary:</td>
							<td><input type="text" size=35 name="expectedsalary"
								id="expectedsalary" readonly
								value="<%if(null!=rs.getString(16)){out.println(rs.getString(16));} %>"></input></td>
						</tr>

						<tr>
							<td width=200>Technical Skills:</td>
							<td><input type="text" size=35 name="technicalskills"
								id="technicalskills" readonly
								value="<%if(null!=rs.getString(17)){out.println(rs.getString(17));} %>"></input></td>
						</tr>

						<tr>
							<td width=200>Experience/Achievements:</td>
							<td><input type="text" size=35 name="expach" id="expach"
								readonly
								value="<%if(null!=rs.getString(18)){out.println(rs.getString(18));} %>"></input></td>
						</tr>

						<tr>
							<td width=200>Industry:</td>
							<td><input type="text" size=35 name="industry" id="industry"
								readonly
								value="<%if(null!=rs.getString(19)){out.println(rs.getString(19));} %>"></input></td>
						</tr>

						<tr>
							<td width=200>Location Preference:</td>
							<td><select readonly name="location" id="location">
									<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Select One")){%>selected = "selected"<%}} %>>Select One</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("No_preference")){%>selected = "selected"<%}} %>>No_preference</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Northern States")){%>selected = "selected"<%}} %>>Northern States</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Southern States")){%>selected = "selected"<%}} %>>Southern States</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Eastern States")){%>selected = "selected"<%}} %>>Eastern States</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Western States")){%>selected = "selected"<%}} %>>Western States</option>
							</select></td>
						</tr>
						<tr>
									<td>Student Resume</td>
									<td><a href = "my_resume.docx"><%if(null!=rs.getString(11)){out.println(rs.getString(11));} %></a></td>
								</tr>
						<tr>
							<td>&nbsp</td>
							<td>&nbsp</td>
						</tr>
						<tr>
							<td width=200>Status:</td>
							<%System.out.println(rs.getString(7)); %>
							<td><select name="status" id="status">
									<option <%if(null != status) { if(status.equals("Applied")){%>selected = "selected"<%}} %>>Select One</option>
									<option <%if(null != status) { if(status.equals("Processing")){%>selected = "selected"<%}} %>>Processing</option>
									<option <%if(null != status) { if(status.equals("Accepted")){%>selected = "selected"<%}} %>>Accepted</option>
									<option <%if(null != status) { if(status.equals("Declined")){%>selected = "selected"<%}} %>>Declined</option>
							</select></td>
						</tr>
					</table>
					<table border=0>
						<tr>
							<td width=550><div align="center">
									<input type="submit" value="Submit Profile" /></td>
						</tr>
					</table>
				</form>

				<%
					}
					dbConnectObject.dbConnectionsClose();
				%>
			</div>

			<div id="footer">Copyright © UTArlington, 2012</div>
		</div>
	</div>
</body>
</html>
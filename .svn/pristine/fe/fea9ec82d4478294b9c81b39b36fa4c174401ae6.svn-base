<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="util.MysqlConnect"%>
<%@ page import = "java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="ISO-8859-1"%>
	

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
							+ session.getAttribute("studentId") + "'";
					s = con.createStatement();
					rs = s.executeQuery(sql);

					if (rs.next()) {
				%>
				<form name="" action="test.jsp" method="post">
					<h1 align="center">Student Profile Page</h1>
					<br><br>

							<table border=0>
								<tr>
									<!-- To be passed on by the previous page  -->
									<!--readonly = "readonly"-->
									<td width=200>Student Id:</td>
									<td><input type="text" size=35 name="studentid"
										id="studentid" readonly value = <%if(null!=rs.getString(2)){out.println(rs.getString(2));} %>></input><br /></td>
								</tr>

								<tr>
									<td width=200>First Name:</td>
									<td><input type="text" size=35 name="firstname"
										id="firstname" readonly value = <%if(null!=rs.getString(3)){out.println(rs.getString(3));} %>></input>*</td>
								</tr>

								<tr>
									<td width=200>Middle Name:</td>
									<td><input type="text" size=35 name="middlename"
										id="middlename" value = <%if(null!=rs.getString(4)){out.println(rs.getString(4));} %>></input></td>
								</tr>

								<tr>
									<td width=200>Last Name:</td>
									<td><input type="text" size=35 name="lastname"
										id="lastname" readonly value = <%if(null!=rs.getString(5)){out.println(rs.getString(5));} %>></input>*</td>
								</tr>

								<tr>
									<td width=200>Address:</td>
									<td><input type="text" size=35 name="address" id="address" value = "<%if(null!=rs.getString(6)){out.println(rs.getString(6));} %>"></input></td>
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
									<td><input type="text" size=35 name="email" id="email" readonly value = "<%if(null!=rs.getString(8)){out.println(rs.getString(8));} %>"></input>*</td>
								</tr>

								<tr>
									<td width=200>Phone Number</td>
									<td><input type="text" size=35 name="phonenumber"
										id="phonenumber" value = "<%if(null!=rs.getString(9)){out.println(rs.getString(9));} %>"></input></td>
								</tr>

								<tr>
									<td width=200>Visa Status:</td>
									<td><select name="visa" id="visa">
											<option <%if(null!= rs.getString(12)) { if(rs.getString(12).equals("Select One")){%>selected = "selected"<%}} %>>Select One</option>
											<option <%if(null!= rs.getString(12)) {if(rs.getString(12).equals("Citizen")){%>selected = "selected"<%}} %>>US Citizen</option>
											<option <%if(null!= rs.getString(12)) {if(rs.getString(12).equals("F1")){%>selected = "selected"<%}} %>>F1</option>
											<option <%if(null!= rs.getString(12)) {if(rs.getString(12).equals("J1")){%>selected = "selected"<%}} %>>J1</option>
											<option <%if(null!= rs.getString(12)) {if(rs.getString(12).equals("H1B")){%>selected = "selected"<%}} %>>H1B</option>
											<option <%if(null!= rs.getString(12)) {if(rs.getString(12).equals("N/A")){%>selected = "selected"<%}} %> >N/A</option>
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
											<option selected = "selected">August</option>
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
										id="coursestaken" value = "<%if(null!=rs.getString(14)){out.println(rs.getString(14));} %>"></input></td>
								</tr>

								<tr>
									<td width=200>Educational Qualification:</td>
									<td><input type="text" size=35 size=35
										name="educationalqualification" id="educationalqualification" value = "<%if(null!=rs.getString(15)){out.println(rs.getString(15));} %>"></input></td>
								</tr>

								<tr>
									<td width=200>Expected Salary:</td>
									<td><input type="text" size=35 name="expectedsalary"
										id="expectedsalary" value = "<%if(null!=rs.getString(16)){out.println(rs.getString(16));} %>"></input></td>
								</tr>

								<tr>
									<td width=200>Technical Skills:</td>
									<td><input type="text" size=35 name="technicalskills"
										id="technicalskills" value = "<%if(null!=rs.getString(17)){out.println(rs.getString(17));} %>"></input></td>
								</tr>

								<tr>
									<td width=200>Experience/Achievements:</td>
									<td><input type="text" size=35 name="expach" id="expach" value = "<%if(null!=rs.getString(18)){out.println(rs.getString(18));} %>"></input></td>
								</tr>

								<tr>
									<td width=200>Industry:</td>
									<td><input type="text" size=35 name="industry"
										id="industry" value = "<%if(null!=rs.getString(19)){out.println(rs.getString(19));} %>"></input></td>
								</tr>

								<tr>
									<td width=200>Location Preference:</td>
									<td><select name="location" id="location">
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Select One")){%>selected = "selected"<%}} %>>Select One</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("No_preference")){%>selected = "selected"<%}} %>>No_preference</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Northern States")){%>selected = "selected"<%}} %>>Northern States</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Southern States")){%>selected = "selected"<%}} %>>Southern States</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Eastern States")){%>selected = "selected"<%}} %>>Eastern States</option>
											<option <%if(null!= rs.getString(20)) { if(rs.getString(20).equals("Western States")){%>selected = "selected"<%}} %>>Western States</option>
									</select></td>
								</tr>

								<tr>
									<td width=200>Upload Resume:</td>
									<td><input type="file" size=35 name="resume" id="resume"></input></td>
								</tr>

								<tr>
									<td>Current Resume Uploaded</td>
									<td><%if(null!=rs.getString(11)){out.println(rs.getString(11));} %></td>
								</tr>

							</table>

							<table border=0>
								<tr>


									<td width=550><div align="center">
											<input type="submit" value="Submit Profile"
												onclick="saveProfile()">
										</div></td>
								</tr>

								<tr>
									<td>*Mandatory Fields</td>

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
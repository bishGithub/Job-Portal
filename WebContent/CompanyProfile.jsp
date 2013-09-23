<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.*" %>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<script type="text/javascript">
	function saveProfile() {
		if (document.getElementById('companyname').value == "") {
			alert("Company Name cannot be empty");
		} else if (document.getElementById('email').value == "") {
			alert("Email cannot be empty");
		} else {

		}
	}
</script>

<title>Profile</title>
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
                               Company Profile :
                       </h2>
                       
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
		String sql = "select * from cse6324_company_profile where comp_id='"
				+ session.getAttribute("companyId") + "'";
		s = con.createStatement();
		rs = s.executeQuery(sql);
		
		if(rs.next()){
		
		
		
	%>
	<form name="form1" action="CompanyProfile.jsp" method="post">
		<br>
		<br>

		<table border=0>
			<tr>
				<!-- To be passed on by the previous page  -->
				<!--readonly = "readonly"-->
			<tr>
				<td width=200>Name:</td>
				<td><input type="text" size=35 name="companyname"
					id="companyname" value=<%=session.getAttribute("companyName")%>></input>*</td>
			</tr>

			<tr>
				<td width=200>Address:</td>
				<td><input type="text" size=35 name="address" id="address" value = <%if(null!=rs.getString(4)){out.println(rs.getString(4));} %>></input></td>
			</tr>

			<tr>
				<td width=200>Email:</td>
				<td><input type="text" size=35 name="email" id="email" value = <%if(null!=rs.getString(8)){out.println(rs.getString(8));} %>></input>*</td>
			</tr>

			<tr>
				<td width=200>Phone Number</td>
				<td><input type="text" size=35 name="phonenumber"
					id="phonenumber" value = <%if(null!=rs.getString(5)){out.println(rs.getString(5));} %>></input></td>
			</tr>

			<tr>
				<td width=200>Fax Number</td>
				<td><input type="text" size=35 name="faxnumber" id="faxnumber" value = <%if(null!=rs.getString(6)){out.println(rs.getString(6));} %>></input></td>
			</tr>

			<tr>
				<td width=200>Industry:</td>
				<td><input type="text" size=35 size=35 name="industry"
					id="industry" value = <%if(null!=rs.getString(7)){out.println(rs.getString(7));} %>></input></td>
			</tr>

			<tr>
				<td width=200>Website:</td>
				<td><input type="text" size=35 size=35 name="website"
					id="website" value = <%if(null!=rs.getString(9)){out.println(rs.getString(9));} %>></input></td>
			</tr>

		</table>

		<table border=0>
		
		<tr>
			<td width = 463><div align="center">
			  <input type="submit" value="Submit Profile" onclick = "saveProfile()" >
			  </div></td>
		</tr>
		
		<tr>
			<td>*Mandatory Fields</td>
			
		</tr>
		</table>
	</form>
	<%
	}
		if (request.getParameter("companyname") != null) {

			String cId = (String) session.getAttribute("companyId");
			String cname = request.getParameter("companyname");
			String address = request.getParameter("address");
			String email = request.getParameter("email");
			String pNumber = request.getParameter("phonenumber");
			String fNumber = request.getParameter("faxnumber");
			String industry = request.getParameter("industry");
			String website = request.getParameter("website");

			String sqlChangePassword = ("UPDATE cse6324_company_profile SET comp_address='"
					+ address
					+ "', phone_numb='"
					+ pNumber
					+ "', fax_numb ='"
					+ fNumber
					+ "', industry ='"
					+ industry
					+ "', email ='"
					+ email
					+ "', website ='"
					+ website + "' where comp_id = " + cId);
			s = con.createStatement();
			int rows = s.executeUpdate(sqlChangePassword);

			s.close();
			dbConnectObject.dbConnectionsClose();
			if (rows != 0) {
				String redirectURL = "CompanyPage.jsp?success=1";
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
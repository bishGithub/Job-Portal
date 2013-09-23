<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%@ page import="java.util.*"%>
<%@ page import="java.security.MessageDigest"%>
<%@ page import="java.security.NoSuchAlgorithmException"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Software Engineering Job Portal</title>
<link href="login.css" rel="stylesheet" type="text/css" />
<style type="text/css">
body {
	background-image: url('water.jpg');
}
</style>
</head>
<body>

	<%
		/**
			code checks to see if the request parameter contains the logout key.
			If yes, then it removes attributes from the session.
		 */
		if (null != request.getParameter("logoutID")) {
			String logoutID = request.getParameter("logoutID");
			if (logoutID.equals("1")) {
				session.removeAttribute("username");
			}
		}
	%>
	<form action="CompanyLogin.jsp" method="post">
		<div id="container">
			<div id="header">
				<h1>Company Login</h1>
				<br />
				<%
					if (null != request.getParameter("error")) {
						String errorID = request.getParameter("error");
						if (errorID.equals("1")) {
							out.println("<h3>Invalid Credentials</h3></br>");
						}

						//session.setAttribute("empty",null);
					}
				%>
				UserName: <input type="text" name="username" /> <br /> <br />
				Password: <input type="password" name="password" /> <br /> <br />
				<%
			if (null != request.getParameter("success")) {
				String logoutID = request.getParameter("success");
				if (logoutID.equals("0")) {
					//session.removeAttribute("username");
					out.println("Company Login Successfully Created");
				}
			}
		%>
			<%
			if (null != request.getParameter("error")) {
				String logoutID = request.getParameter("error");
				if (logoutID.equals("0")) {
					//session.removeAttribute("username");
					out.println("invalid username/password");
				}
			}
		%>
				<input type="submit" value="Submit"><br /> <br /> 
				<a href="CompanyNewUser.jsp">New User? Register</a> <br /> <br /> 
					<a href="home.jsp">Go Back to Home Page</a>
					<br /> <br />
					<a href="#">Forgot Password?</a>
			</div>
		</div>
	</form>
	<%
		if (request.getParameter("username") != null) {
		System.out.println("wassup!");
			java.sql.Connection con;
			java.sql.Statement s;
			java.sql.ResultSet rs;
			java.sql.PreparedStatement pst;

			con = null;
			s = null;
			pst = null;
			rs = null;
			MessageDigest mdAlgorithm;
			String md5Pwd = null;
			MysqlConnect dbConnectObject = new MysqlConnect();

			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			
			if(username.isEmpty() || (password.isEmpty())){
				response.sendRedirect("CompanyLogin.jsp?error=0");
			}
			
			
				con = dbConnectObject.dbConnect();
			String sql = "select * from cse6324_company_login where comp_id='"
					+ username + "'";
			s = con.createStatement();
			rs = s.executeQuery(sql);
			ResultSet rs2 = null;
			while (rs.next()) {
			
				if (rs.getString(3).equals(request.getParameter("password"))) {
					System.out.println("here");
					session.setAttribute("companyId",rs.getString(1));
					String sql2 = "select * from cse6324_company_profile where comp_id='"
					+ rs.getString(1) + "'";
					s = con.createStatement();
					rs2 = s.executeQuery(sql2);
					while(rs2.next()){
						session.setAttribute("companyName",rs2.getString(3));
					}
					response.sendRedirect("CompanyPage.jsp");//redirect to home page for a partiicular student
				} else {
					response.sendRedirect("CompanyLogin.jsp?error=0");
				}

			}
			dbConnectObject.dbConnectionsClose();
		}
	%>
</body>
</html>
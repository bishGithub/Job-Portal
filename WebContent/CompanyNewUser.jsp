<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
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
	<form action="CompanyNewUser.jsp" method="post">
		<div id="container">
			<div id="header">
				<h1>New Company User, Register Here!!</h1>
			</div>
			Enter a UserName: <input type="text" name="username" /> <br /> <br />
			Enter a Company Name: <input type="text" name="companyname" /> <br /> <br />
			Enter a Password: <input type="password" name="password" /> <br />
			<%
			if (null != request.getParameter("error")) {
				String logoutID = request.getParameter("error");
				if (logoutID.equals("1")) {
					//session.removeAttribute("username");
					out.println("Invalid Username/Password");
				}
			}
		%>
			<br /> <input type="submit" value="Submit"><br /> <br />
			<a href="home.jsp">Go Back to Home Page</a>
		</div>
	</form>
	<%
		if (request.getParameter("username") != null) {
			java.sql.Connection con;
			java.sql.Statement s;
			java.sql.ResultSet rs;
			java.sql.PreparedStatement pst;

			con = null;
			s = null;
			pst = null;
			rs = null;

			MysqlConnect dbConnectObject = new MysqlConnect();
			
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			String cName = request.getParameter("companyname");
			
			if(username.isEmpty() || (password.isEmpty())){
				response.sendRedirect("CompanyNewUser.jsp?error=1");
			}else{	
			
			con = dbConnectObject.dbConnect();
			String queryString = "INSERT INTO "
					+ "cse6324_company_login(comp_id, password"
					+ ") VALUES (?, ?)";
			PreparedStatement pstatement = null;
			pstatement = con.prepareStatement(queryString);
			pstatement.setString(1, username);
			pstatement.setString(2, password);

			
			int updateQuery = pstatement.executeUpdate();
			
			String sql = "select * from cse6324_company_login where comp_id='"
					+ username + "'";

			s = con.createStatement();
			rs = s.executeQuery(sql);
			String Id = null;
			while (rs.next()) {
				Id = rs.getString(1);
			}
			
			String queryString2 = "INSERT INTO "
					+ "cse6324_company_profile(comp_id, comp_name"
					+ ") VALUES (?, ?)";
			PreparedStatement pstatement2 = null;
			pstatement2 = con.prepareStatement(queryString2);
			pstatement2.setString(1, Id);
			pstatement2.setString(2, cName);

			
			int updateQuery2 = pstatement2.executeUpdate();
			
			
			pstatement.close();
			dbConnectObject.dbConnectionsClose();
			
			if(updateQuery!=0){
				response.sendRedirect("CompanyLogin.jsp?success=0");
			}
			}
		}
	%>
</body>
</html>
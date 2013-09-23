<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="util.MysqlConnect"%>
<%@ page import="java.sql.*"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Welcome</title>
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
		java.sql.Connection con;
		java.sql.Statement s;
		java.sql.ResultSet rs;
		java.sql.PreparedStatement pst;

		con = null;
		s = null;
		pst = null;
		rs = null;

		String jobId = request.getParameter("jobId");
		System.out.println("wassup!!!"+jobId);
		String studentId = request.getParameter("studentId");
		System.out.println("wassup!!!"+studentId);
		String status = request.getParameter("status");
		System.out.println("wassup!!!"+status);
		MysqlConnect dbConnectObject = new MysqlConnect();

		con = dbConnectObject.dbConnect();
		String sql = "select * from cse6324_job_posting WHERE job_id ="
				+ jobId;
		s = con.createStatement();
		rs = s.executeQuery(sql);
		System.out.println("wassup!!!");
		con = dbConnectObject.dbConnect();
		String sqlChangePassword = "UPDATE cse6324_job_application SET status='"
				+ status
				+ "' WHERE jobId = "
				+ jobId
				+ " AND studentId = "
				+ studentId;

		s = con.createStatement();
		int rows = s.executeUpdate(sqlChangePassword);

		if (rows != 0) {
			response.sendRedirect("CompanyPage.jsp?success=3");
		}

		dbConnectObject.dbConnectionsClose();
	%>

</body>
</html>
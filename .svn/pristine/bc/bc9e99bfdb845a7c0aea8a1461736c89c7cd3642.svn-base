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
		String companyId = request.getParameter("companyId");
		String companyName = request.getParameter("companyName");
		String jobTitle = request.getParameter("jobTitle");
		MysqlConnect dbConnectObject = new MysqlConnect();
		
		con = dbConnectObject.dbConnect();
		String sql = "select * from cse6324_job_posting WHERE job_id ="+jobId;
		s = con.createStatement();
		rs = s.executeQuery(sql);
		
			con = dbConnectObject.dbConnect();
			String queryString = "INSERT INTO "
					+ "cse6324_job_application(studentId, companyId, companyName, jobId, jobTitle, status"
					+ ") VALUES (?, ?, ?, ?, ?, ?)";
			PreparedStatement pstatement = null;
			pstatement = con.prepareStatement(queryString);
			pstatement.setString(1, (String)session.getAttribute("studentId"));
			pstatement.setString(2, companyId);
			pstatement.setString(3, companyName);
			pstatement.setString(4, jobId);
			pstatement.setString(5, jobTitle);
			pstatement.setString(6, "Applied");

			
			int updateQuery = pstatement.executeUpdate();
			if(updateQuery!=0){
				response.sendRedirect("WelcomeStudent.jsp?success=3");
			}
		
								
                   dbConnectObject.dbConnectionsClose();
                        %>

</body>
</html>
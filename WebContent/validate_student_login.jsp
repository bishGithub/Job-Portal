<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*"%>
<html>
<head>
<title>validate</title>
</head>
<body>
	<%@ page import="java.util.*"%>
	<%@ page import="javax.sql.*"%>
	<%@ page import="java.security.MessageDigest"%>
	<%@ page import="java.security.NoSuchAlgorithmException"%>

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
		
		String username = request.getParameter("username");
		String password = request.getParameter("password");		
		
		if (username.isEmpty() ){
			response.sendRedirect("student_login.jsp?error=0");
		}
		else
		{
		MessageDigest mdAlgorithm;
		String md5Pwd = null;

		try {
			mdAlgorithm = MessageDigest.getInstance("MD5");

			mdAlgorithm.update(password.getBytes());

			byte[] digest = mdAlgorithm.digest();
			StringBuffer hexString = new StringBuffer();

			for (int i = 0; i < digest.length; i++) {
				password = Integer.toHexString(0xFF & digest[i]);

				if (password.length() < 2) {
					password = "0" + password;
				}

				hexString.append(password);
			}

			md5Pwd = hexString.toString();			

		} catch (Exception cnfex) {
			cnfex.printStackTrace();

		}//end of catch
		con = dbConnectObject.dbConnect();
		String sql = "select * from cse6324_studentlogin where Id="
				+ Integer.parseInt(username);
		try {
			s = con.createStatement();
			rs = s.executeQuery(sql);
			java.sql.ResultSet rs2 = null;
	%>

	<%
		boolean hasRows = rs.next();
			if (rs.getString(2).equals(md5Pwd)) {
				sql = "select * from cse6324_student_profile where student_id="
				+ Integer.parseInt(username);
				s = con.createStatement();
				rs2 = s.executeQuery(sql);
				while(rs2.next()){
					session.setAttribute("studentId", rs2.getString("student_id"));
					session.setAttribute("studentFName", rs2.getString("f_name"));
					session.setAttribute("studentLName", rs2.getString("l_name"));
					session.setAttribute("studentEmail", rs2.getString("email"));
				}
				response.sendRedirect("WelcomeStudent.jsp");//redirect to home page for a partiicular student
	%>
	<%
		//send the Student registration JSP page
			}//end of if
			else
				//send a message saying invalid User
				//currently redirecting to the home page as an indication of invalid student
				response.sendRedirect("student_login.jsp?error=0");
	%>

	<%
		}//end of try
		catch (Exception e) {
			e.printStackTrace();
		}		
		finally {
			if(con != null)
			{
				dbConnectObject.dbConnectionsClose();
			}
			if (rs != null)
				rs.close();
			if (s != null)
				s.close();
			
		}
		}
	%>
</body>
</html>
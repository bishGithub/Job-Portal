<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*" %>
<%@ page import="javax.sql.*" %>
<%@ page import="java.security.MessageDigest" %>
<%@ page import="java.security.NoSuchAlgorithmException"%>
<%!
public String hashPassword(String password)throws NoSuchAlgorithmException {
		MessageDigest mdAlgorithm;
		String Md5Pwd = null;
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

		Md5Pwd = hexString.toString();
		return Md5Pwd;
	}
%>
<%
	java.sql.Connection con;
	java.sql.Statement s;
	java.sql.ResultSet rs;
	java.sql.PreparedStatement pst;

	con = null;
	s = null;
	pst = null;
	rs = null;
	
	String thousandId = request.getParameter("thousandid");
	String oldPassword = request.getParameter("oldpassword");
	String newPassword = request.getParameter("newpassword");
	MysqlConnect dbConnectObject = new MysqlConnect();

	
	String sql = "select * from cse6324_studentlogin where Id="
			+ Integer.parseInt(thousandId);
	try {
		
		con = dbConnectObject.dbConnect();
		s = con.createStatement();
		rs = s.executeQuery(sql);
%>

<%
String returnValue = hashPassword(oldPassword);
	boolean hasRows = rs.next();
		if (rs.getString(2).equals(returnValue)) {
			returnValue = hashPassword(newPassword);
			String sqlChangePassword = ("UPDATE cse6324_studentlogin SET Password='"
					+ returnValue + "' where id = '" + thousandId + "'");
			int rows = s.executeUpdate(sqlChangePassword);
			if (rows != 0) {
				response.sendRedirect("change_password.jsp?success=1");
			}
%>
<%
	}//end of if
		else
			//send a message saying invalid User
			//currently redirecting to the home page as an indication of invalid student
			response.sendRedirect("change_password.jsp?error=0");
%>
<%
	}//end of try
	catch (Exception e) {
		e.printStackTrace();
	} finally {
		dbConnectObject.dbConnectionsClose();
		if (rs != null)
			rs.close();
		if (s != null)
			s.close();
		if (con != null)
			con.close();
	}//end of catch
%>

</body>
</html>
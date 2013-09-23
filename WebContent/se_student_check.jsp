<%@page import="util.MysqlConnect"%>
<%@page import="util.PasswordGenerator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.util.*"%>
<%@ page import="javax.sql.*"%>
<%@ page import="java.security.SecureRandom"%>
<%@ page import="java.math.BigInteger"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.*"%>
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
	ResultSet resultSet = null; 
	Statement stmt = null;
	
	String thousand_id = request.getParameter("thousand_id");
	
	MysqlConnect dbConnectObject = new MysqlConnect();//get the connection to the database
	con = dbConnectObject.dbConnect();
	String sql = "select * from cse6324_sestudents where StudentId="
			+ Integer.parseInt(thousand_id);
	try {
		s = con.createStatement();
		rs = s.executeQuery(sql);
		boolean hasRows = rs.next();
		if (!hasRows) {//is registered with Dr. Kung in se student
			System.out.println("Student ID does not exist");
			response.sendRedirect("student_login.jsp?incorrect=1");
		} else if (rs.getInt(6) == 1) {//password already generated
			response.sendRedirect("student_login.jsp?exists=0");
		} else {

			/* generate random string, save random string to   */
			String userEmail = rs.getString(5);
			PasswordGenerator pwGen = new PasswordGenerator();
			String randomPassword = pwGen.nextSessionId();
			System.out.println(randomPassword);//end of if
			//PasswordGenerator object = new PasswordGenerator();
			//object.sendEmail(userEmail,randomPassword);
			System.out.println("Password sent to Default Email");
			String returnValueHashed = hashPassword(randomPassword);
			String queryString = "INSERT INTO "
					+ "cse6324_studentlogin VALUES (?, ?)";
			int resultQueryInsert = 0;
			int resultQueryUpdate = 0;
			PreparedStatement pstatement = null;
			PreparedStatement pstmt = null;
			pstatement = con.prepareStatement(queryString);
			pstatement.setString(1, thousand_id);
			pstatement.setString(2, returnValueHashed);
			resultQueryInsert = pstatement.executeUpdate();
			/* String queryString2 = "INSERT INTO "
					+ "cse6324_student_profile(student_id, f_name, l_name, email"
					+ ") VALUES (?, ?, ?, ?)";
			PreparedStatement pstatement2 = null;
			pstatement2 = con.prepareStatement(queryString2);
			pstatement2.setString(1, rs.getString(2));
			pstatement2.setString(2, rs.getString(3));
			pstatement2.setString(3, rs.getString(4));
			pstatement2.setString(4, rs.getString(5));
			int updateQuery2 = pstatement2.executeUpdate();
		
			System.out.println(rs.getString(2));
			System.out.println(rs.getString(3));
			System.out.println(rs.getString(4));
			System.out.println(rs.getString(5)); */
			
			//System.out.println("insert done in student profile table");
			pstmt = con.prepareStatement("update cse6324_sestudents set bool_id_reg = ? where StudentId = ?");
			pstmt.setBoolean(1, true);
			pstmt.setInt(2, Integer.parseInt(thousand_id));
			resultQueryUpdate = pstmt.executeUpdate();
			System.out.println("bool field updated in the se student table");
			pstatement.close();
			pstmt.close();
			
			/* String retrieveFromSeTable = "select * from cse6324_sestudents where StudentId="+Integer.parseInt(thousand_id);
			stmt = con.createStatement();
			resultSet = stmt.executeQuery(retrieveFromSeTable);
			System.out.println("Fields selected from the se table");
			int studId =  resultSet.getInt("StudentId");
			String fName = resultSet.getString("stud_fname");
			String lName = resultSet.getString("stud_lname");
			String email = resultSet.getString("stud_email");
			System.out.println(studId+"\n");
			System.out.println(fName+"\n");
			System.out.println(lName+"\n");
			System.out.println(email);
			String insertStudentProfile = "insert into cse6324_student_profile(student_id,f_name,l_name,email) values ("+studId+",'"+fName+"','"+
											lName+"','"+email+"')";
			s.executeQuery(insertStudentProfile); */
			response.sendRedirect("send_email.jsp?email="+userEmail+"&password="+randomPassword);
		}
	}//end of try
	catch (SQLException expSql) {
		expSql.printStackTrace();
	} finally {
		dbConnectObject.dbConnectionsClose();
		if (rs != null)
			rs.close();
		if(resultSet != null)
			resultSet.close();
		if (s != null)
			s.close();
		if (con != null)
			con.close();

	}//end of catch
%>
</body>
</html>
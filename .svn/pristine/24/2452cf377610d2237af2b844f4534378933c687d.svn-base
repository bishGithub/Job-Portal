<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.SQLException" %>

<%@ page import = "java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
java.sql.Connection con;
java.sql.Statement s;
java.sql.ResultSet rs;
java.sql.PreparedStatement pst;

con=null;
s=null;
pst=null;
rs=null;

MysqlConnect dbConnectObject = new MysqlConnect();


		String studentId = request.getParameter("id");
		String fName = request.getParameter("fName");
		String lName = request.getParameter("lName");
		String email = request.getParameter("email");
		String reg = "0";

		
		try{
			
			con = dbConnectObject.dbConnect();
    	String queryString = "INSERT INTO "
		+ "cse6324_sestudents(StudentId, stud_fname, Stud_lname, stud_email, bool_id_reg"
		+ ") VALUES (?, ?, ?, ?, ?)";
       int updateQuery = 0;
       PreparedStatement pstatement = null;
       pstatement = con.prepareStatement(queryString);
       pstatement.setString(1, studentId);
       pstatement.setString(2, fName);
       pstatement.setString(3, lName);
       pstatement.setString(4, email);
       pstatement.setString(5, reg);
       updateQuery = pstatement.executeUpdate();
       if(updateQuery!=0){
       queryString = "INSERT INTO "
		+ "cse6324_student_profile(student_id, f_name, l_name, email"
		+ ") VALUES (?, ?, ?, ?)";
		pstatement = con.prepareStatement(queryString);
       pstatement.setString(1, studentId);
       pstatement.setString(2, fName);
       pstatement.setString(3, lName);
       pstatement.setString(4, email);
       pstatement.executeUpdate();
       	    String redirectURL = "homeAdmin.jsp?success=1";
  			 response.sendRedirect(redirectURL);
       }

       pstatement.close();
       dbConnectObject.dbConnectionsClose();
		}
		catch(Exception e){e. printStackTrace();}

%>
</body>
</html>
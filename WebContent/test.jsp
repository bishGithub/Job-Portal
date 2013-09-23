
<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
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

		con = null;
		s = null;
		pst = null;
		rs = null;
		MysqlConnect dbConnectObject = new MysqlConnect();

		String studentId = request.getParameter("studentid");
		//System.out.println(studentId);
		String fName = request.getParameter("firstname");
		//System.out.println(fName);
		String mName = request.getParameter("middlename");
		//System.out.println(mName);
		String lName = request.getParameter("lastname");
		//System.out.println(lName);
		String address = request.getParameter("address");
		//System.out.println(address);
		String sex = request.getParameter("sex");
		//System.out.println(sex);
		String phonenumber = request.getParameter("phonenumber");
		//System.out.println(phonenumber);
		String startmonth = request.getParameter("startmonth");
		//System.out.println(startmonth);
		String startyear = request.getParameter("startyear");
		//System.out.println(startyear);
		String availDate = startmonth + "_" + startyear;
		//System.out.println(availDate);
		String coursestaken = request.getParameter("coursestaken");
		//System.out.println(coursestaken);
		String educationalqualification = request.getParameter("educationalqualification");
		//System.out.println(educationalqualification);
		String expectedsalary = request.getParameter("expectedsalary");
		//System.out.println(expectedsalary);
		String technicalskills = request.getParameter("technicalskills");
		//System.out.println(technicalskills);
		String expach = request.getParameter("expach");
		//System.out.println(expach);
		String industry = request.getParameter("industry");
		//System.out.println(industry);
		String location = request.getParameter("location");
		//System.out.println(location);
		String email = request.getParameter("email");
		//System.out.println(email);
		String resumeUploaded = null;
		//System.out.println("resumee!!");
		String visa = request.getParameter("visa");
		//System.out.println(visa);
		String resume = request.getParameter("resume");
		if (resume!=null){
			resumeUploaded = "1";
		}else{
			resumeUploaded = "0";
		}
		try {
			
			con = dbConnectObject.dbConnect();
String sqlUpdateProfile = ("UPDATE cse6324_student_profile SET m_name='"+mName+"',address='"+address+"',sex='"+sex+"',phone_no='"+phonenumber+"',resume_uploaded='"+resumeUploaded+"',visa_status='"+visa+"',"
							+"start_date='"+availDate+"',courses_taken='"+coursestaken+"',edu_qual='"+educationalqualification+"',expct_salary='"+expectedsalary+"',tech_skills='"+technicalskills+"',exp_achvm='"+expach+"',industry='"+industry+"',loca_pref='"+location+"',resume_path='"+resume+"'"
							+"WHERE student_id = "+studentId);
										
			s = con.createStatement();
			int rows = s.executeUpdate(sqlUpdateProfile);
			

			
			if (rows!= 0) {
				String redirectURL = "WelcomeStudent.jsp?success=1";
				response.sendRedirect(redirectURL);
			}

			s.close();
			dbConnectObject.dbConnectionsClose();
		} catch (Exception e) {
			e.printStackTrace();
		}
	%>
</body>
</html>

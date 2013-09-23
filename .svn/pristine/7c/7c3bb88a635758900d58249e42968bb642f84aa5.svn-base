<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import = "java.util.*" %>
<%@ page import = "util.PasswordCheck" %>
<html>
<head>
<title>validate</title>
</head>
<body>
<%
/**
	the code collects the user name and password provided in the login page.
	It then validates the see if the value passed is null or if the username 
	and password is correct by invoking the corresponding Java class
*/
String username = request.getParameter("username");
String password = request.getParameter("password");

//if ((username.isEmpty())||(password.isEmpty())) {
	//String empty = "Invalid Credentials";
	//response.sendRedirect("login.jsp?error=1");
 //	}
	String dummyString[] = null;
	MysqlConnect object = new MysqlConnect();
	//MysqlConnect.main(dummyString);
	/*refrence to the java file in the util package*/
	/// PasswordCheck pCheck = new PasswordCheck();
	///boolean exists = pCheck.checkPassword(username, password);
	///if(exists){
		///session.setAttribute( "username", username );
		///response.sendRedirect("Client.jsp");
	///}else{ %>
	<jsp:forward page = "client_login.jsp"></jsp:forward><% 
	///}

%>


</body>
</html>
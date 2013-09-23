<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.*"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>View Students</title>
<link href="design.css" rel="stylesheet" type="text/css" />
<script language="JavaScript" type="text/javascript">
</script>
<style type="text/css">
       body
       {
               background-image:url('water.jpg');

       }
</style>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<body>
<%
               /**
                 code checks to see if a session is valid. Else redirects back to login page
               */



       /**
          code checks to see if the request parameter contains cancel request
       */
       if(null!=request.getParameter("cancel")){
               String cancel = (String) request.getParameter("cancel");
               if(cancel.equals("1")){

               }
       }

%>
<div id="container">
       <div id="header">
               <h1>
                       Welcome Administrator

               </h1>
       </div>
       <div id="navigation">
               <ul>
                       <li><a href="homeAdmin.jsp">Home</a></li>
                       <li><a href="addstu.html">Add Student</a></li>
                       <li><a href="delStu.jsp">Delete Student</a></li>
                       <%
                               boolean checkUser = true;
                               if(checkUser){
                       %>
                        <li><a href="view.jsp">View All</a></li>
                       <% } %>
                       <li><a href="home.jsp?logoutID=1">Logout</a></li>
               </ul>
       </div>
       <div id="content-container">
               <div id="content">
                       <h2>
                               List of Software Engineering Students:
                       </h2>
						
						<form id="form1" name="form1" method="post" action="">
					    <p class="style1">Software Engineering Student </p>
					    <table width="651" border="1" align="center">
					      <tr>
					        <td width="142"><div align="center">UTA Id </div></td>
					        <td width="152"><div align="center">First Name </div></td>
					        <td width="174">          <p align="center">Last Name </p></td>
					        <td width="155"><div align="center">Email</div></td>
					      </tr><%
					      Connection connection = null;
							Statement statement = null;
							ResultSet rs = null;
							boolean exists = false;
							Class.forName("com.mysql.jdbc.Driver");
							connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cse6324", "root", "");
							statement = connection.createStatement();
							rs = statement.executeQuery("select* from cse6324_sestudents");
							while(rs.next()){
								%>
								<tr>
									<td align="center">
									<%
										out.println(rs.getString(2));
									 %>
									</td>
									<td align="center">
									<%
										out.println(rs.getString(3));
									 %>
									</td>
									<td align="center">
									<%
										out.println(rs.getString(4));
									 %>
									</td>
									<td align="center">
									<%
										out.println(rs.getString(5));
									 %>
									</td>
								</tr>
								<%
					
							}		 
					        statement.close();
					        connection.close();
					         %>
					    </table>
					    <p>&nbsp;</p>
					    <p>&nbsp;</p>
					  </form>
						
						
						
               </div>
               
               <div id="footer">
                       Copyright © UTArlington, 2012
               </div>
       </div>
</div>
</body>
</html>
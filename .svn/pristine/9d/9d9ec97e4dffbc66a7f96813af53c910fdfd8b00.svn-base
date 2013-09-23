<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Delete Student</title>
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
                       Delete a Student

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
                               
                       </h2>
						
						<form id="form1" name="form1" method="post" action="delStu.jsp">
						Enter 1000 ID :
						<input type="text" name="studentId" value="" />
						<input type="submit" value="Retrieve Details" />
						</form>
						<%
					String displayId = null;
					String fName = null;
					String lName = null;
					String email = null;
					java.sql.Connection con;
					java.sql.Statement s;
					java.sql.ResultSet rs;
					java.sql.PreparedStatement pst;
					
							con = null;
							s = null;
							pst = null;
							rs = null;
							MysqlConnect dbConnectObject = new MysqlConnect();
					
							if (request.getParameter("studentId")!=null) {
								String id = request.getParameter("studentId");
								
								try {
									//Class.forName("com.mysql.jdbc.Driver");
									con = dbConnectObject.dbConnect();
									String sql = "select * from cse6324_sestudents where StudentId="
											+ id;
									s = con.createStatement();
									rs = s.executeQuery(sql);
					
								} catch (Exception e) {
								}
								while(rs.next()){
								 displayId = rs.getString(2);
								 fName=rs.getString(3);
								 lName=rs.getString(4);
								 email=rs.getString(5);
							}
								dbConnectObject.dbConnectionsClose();
					
							}
						%>
						<div id="Layer1">
							<form id="form1" name="form1" method="post" action="removeStudent.jsp">
								<p align="center" class="style1">Delete Student?</p>
								<table width="309" height="150" border="1" align="center">
									<tr>
										<td width="86">UTA Id :</td>
										<td width="207"><label> <input type="text" readonly = "readonly"  name="id"  readonly value = <%if(displayId!=null){out.println(displayId);} %>  ></input>
										</label></td>
									</tr>
									<tr>
										<td>First Name :</td>
										<td><label> <input type="text" readonly = "readonly"
												name="textfield2"  readonly value = <%if(displayId!=null){out.println(fName);} %>></input>
										</label></td>
									</tr>
									<tr>
										<td>Last Name :</td>
										<td><label> <input type="text" readonly="readonly"
												name="textfield3" readonly value = <%if(displayId!=null){out.println(lName);} %>></input>
										</label></td>
									</tr>
									<tr>
										<td>E-mail :</td>
										<td><label> <input type="text" readonly = "readonly"
												name="textfield4" readonly  value = <%if(displayId!=null){out.println(email);}  %>></input>
										</label></td>
									</tr>
									<tr>
										<td colspan="2"><label>
												<div align = "center">
													<input type="submit" name="Submit" value="Delete" />
												</div>
										</label></td>
									</tr>
								</table>
							
							</form>
	
				</div>		
						
               </div>

               <div id="footer">
                       Copyright © UTArlington, 2012
               </div>
       </div>
</div>
</body>
</html>
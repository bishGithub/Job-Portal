<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ page language="java" contentType="text/html; charset=iso-8859-1"
pageEncoding="ISO-8859-1"%>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>

<title>Welcome</title>
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
                               Welcome Administrator
                       </h2>
						<div id="Layer2">
						  <div align="center">
						    <p>&nbsp;</p>
						    <p>Welcome to Admin page.</p>
						    </p>
						    
						    <p>&nbsp;</p>
						  </div>
						</div>
               </div>
               <div id="aside">
                       <h4>
                            	<%
			if (null != request.getParameter("success")) {
				String logoutID = request.getParameter("success");
				if (logoutID.equals("1")) {
					//session.removeAttribute("username");
					out.println("Student account successfully created!");
				}else if(logoutID.equals("0")){
					out.println("Student account deleted!!");	
				}
			}
		%>   
                       </h4>
                       <%
                       /**
                               code displays meeting updates in the right column of the page
                       */
                       String meeting = (String) request.getParameter( "meeting" );
                       if(meeting!=null){
                               out.println("<p>"+meeting+"</p>");
                       }else{

                       }
                       %>
               </div>
               <div id="footer">
                       Copyright © UTArlington, 2012
               </div>
       </div>
</div>
</body>
</html>
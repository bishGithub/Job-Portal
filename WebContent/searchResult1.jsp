<%@page import="util.MysqlConnect"%>
<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
.style1 {font-size: xx-large}
-->
</style>
</head>

<body>

<%
	String s1, s2, s3,jobCode,compName,jobTitle;
	int a=0;
	s1=request.getParameter("jobid");
	s2=request.getParameter("compName");
	s3=request.getParameter("jobTitle");
	
	Connection connection = null;
	Statement stmt = null;
	ResultSet rs = null;
	MysqlConnect dbConnectObject = new MysqlConnect();	
	
	connection = dbConnectObject.dbConnect();
	stmt=connection.createStatement();
	
	System.out.println("Connection Successfull");
		
	rs=stmt.executeQuery("select a.*,b.* from cse6324_job_posting as a join cse6324_company_profile as b on a.comp_id=comp_id where a.job_id=s1 or comp_id=s2 or title =s3 or (s1 is Null and s2 is Null and s3 is Null) ;");
		
	
%> 
<div align="center"><span class="style1">Search Results</span>
</div>
<form id="form1" name="form1" method="post" action="">
  <p>&nbsp;</p>
  
  <table width="823" height="75" border="1" align="center">
    <tr>
      <td width="182"><div align="center"><strong>Company Id </strong></div></td>
      <td width="178"><div align="center"><strong>Job Id </strong></div></td>
      <td width="188"><div align="center"><strong>Posting Date </strong></div></td>
      <td width="247"><div align="center"><strong>Details</strong></div></td>
    </tr>
<%  
    while (rs.next()) 
    {
%>	
    <tr>
		<td><%= rs.getString("comp_id") %></td>
		<td><%= rs.getInt("job_id") %></td>
		<td><%= rs.getInt("JobPostingDate") %></td>
		<td><div align="center"><a href="jobDetails.jsp ?id="+comp_id>View Details</a></div></td>
    </tr> 	
<%		
   	}
%>
  
  
  
  </table>
<%
	rs.close();
	stmt.close();
	dbConnectObject.dbConnectionsClose();
%>
  <p>&nbsp;</p>
</form>
</body>
</html>

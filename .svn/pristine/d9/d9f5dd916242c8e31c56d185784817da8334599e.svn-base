<%@page import="util.MysqlConnect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<%@ page import="java.sql.Connection"%>
<%@ page import="java.sql.ResultSet"%>
<%@ page import="java.sql.DriverManager"%>
<%@ page import="java.sql.SQLException"%>
<%@ page import="java.sql.Statement"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Search</title>
<style type="text/css">
<!--
.style1 {font-size: xx-large}
-->
</style>
</head>

<body>
<%
	Connection connection = null;
	Statement stmt = null;
	ResultSet rs = null, rs1 = null;
	MysqlConnect dbConnectObject = new MysqlConnect();	
	
	connection = dbConnectObject.dbConnect();
	stmt=connection.createStatement();
	
	System.out.println("Connection Success");
		
	rs=stmt.executeQuery("select comp_name from cse6324_company_profile;");
	rs1=stmt.executeQuery("select title from cse6324_job_posting;");	
%>

<div align="center"><span class="style1">Search for Jobs</span>  </div>
<form id="form1" name="form1" method="post" action="searchResult1.jsp">
  <p align="center"><label></label></p>
  <table width="329" height="216" border="0" align="center">
    <tr>
      <td>Job Code : </td>
      <td><input name="jobid" type="text" id="jobid" /></td>
    </tr>
    <tr>
      <td>Company Name : </td>
      <td><select name="compName" size="1" id="compName" >
	<%
	while(rs.next()){
	%> 
	<option><%out.println(rs.getString("comp_name")); %></option>
	<%}%>
      
      </select></td>
    </tr>
    <tr>
      <td>Job Title : </td>
      <td><select name="jobTitle" size="1" id="jobTitle">
	<%
	while(rs1.next()){
	%> 
	<option><% out.println(rs1.getString("title")); %></option>
	<%
     }
	dbConnectObject.dbConnectionsClose();
	rs.close();
	%>
      </select></td>
    </tr>
    <tr>
      <td><div align="center">
        <input type="submit" name="Submit" value="Submit" />
      </div></td>
      <td><div align="center">
        <input type="reset" name="Submit2" value="Cancel" />
      </div></td>
    </tr>
    <tr>
      <td colspan="2"><div align="center">
        <input type="submit" name="Submit3" value="Advanced Seach" />
      </div></td>
    </tr>
  </table>
  <p align="center">&nbsp;</p>
</form>
<p>&nbsp;</p>
</body>
</html>

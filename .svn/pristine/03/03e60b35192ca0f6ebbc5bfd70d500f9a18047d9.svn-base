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
	String s1, s2, s3,s4,s5,s6,s7,s8,s9,jobCode,compName,jobTitle;
	int a=0;
	s1=request.getParameter("jobTitle");
	s2=request.getParameter("NoofVacancies");
	s3=request.getParameter("jobLocations");
	s4=request.getParameter("jobCategory");
	s5=request.getParameter("Salary");
	s6=request.getParameter("Industry");
	s7=request.getParameter("technicalSkills");
	s8=request.getParameter("ExperienceRequired");
	s9=request.getParameter("jobPostingDate");
	Connection connection = null;
	
	Statement stmt = null;
	ResultSet rs = null;
	MysqlConnect dbConnectObject = new MysqlConnect();
	
	
	connection = dbConnectObject.dbConnect();
	stmt=connection.createStatement();
	
	System.out.println("Connection Successfull");
		
	rs=stmt.executeQuery("select * from cse6324_job_posting where title=s1 or NoOfVacancies=s2 or joblocations =s3 or category =s4 or salary_range =s5 or Industry =s6 or TechnicalSkills =s7 or ExperienceRequired = s8 or JobPostingDate =s9  or (s1 is Null and s2 is Null and s3 is Null and s4 is Null and s5 is Null and s6 is Null and s7 is Null and s8 is Null and s9 is Null) ;");
	dbConnectObject.dbConnectionsClose();
%>


<div align="center"><span class="style1">Advance Search</span>
</div>
<form id="form1" name="form1" method="post" action="">
  <p>&nbsp;</p>
  <table width="461" height="297" border="0" align="center">
    <tr>
      <td width="210"><div align="left">Job Title : </div></td>
      <td width="236"><label>
        <input type="text" name="textfield" />
      </label></td>
    </tr>
    <tr>
      <td><div align="left">No of Vacancies </div></td>
      <td><label>
        <input type="text" name="textfield2" />
      </label></td>
    </tr>
    <tr>
      <td><div align="left">Job Locations </div></td>
      <td><label>
        <select name="select">
        </select>
      </label></td>
    </tr>
    <tr>
      <td><div align="left">Job Category </div></td>
      <td><label>
        <input type="checkbox" name="checkbox" value="checkbox" />
      </label></td>
    </tr>
    <tr>
      <td><div align="left">Salary</div></td>
      <td><label>
        <select name="select2">
        </select>
      </label></td>
    </tr>
    <tr>
      <td><div align="left">Industry</div></td>
      <td><label>
        <select name="select3">
        </select>
      </label></td>
    </tr>
    <tr>
      <td><div align="left">Technical Skills </div></td>
      <td><label>
        <textarea name="textarea"></textarea>
      </label></td>
    </tr>
    <tr>
      <td><div align="left">Experience Required </div></td>
      <td><label>
        <input type="text" name="textfield3" />
      </label></td>
    </tr>
    <tr>
      <td height="24"><div align="left">Starting Date </div></td>
      <td><label>
        <input type="text" name="textfield4" />
      (mm-dd-yyyy)</label></td>
    </tr>
    <tr>
      <td><label>
        <div align="center">
          <br />
          <input type="submit" name="Submit" value="Submit" />
          <br />
        </div>
      </label></td>
      <td><label>
        <div align="center">
          <br />
          <input type="submit" name="Submit2" value="Cancel" />
          <br />
        </div>
      </label></td>
    </tr>
  </table>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
  <p>&nbsp;</p>
</form>
<p>&nbsp;</p>
</body>
</html>

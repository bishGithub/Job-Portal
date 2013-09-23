<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Software Engineering Job Portal</title>
<link href="login.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function goToAdmin()
{
	window.location = "admin_login.jsp";	
}
</script>
</head>
<body>
	<br/><br/><br/><br/>
	<center>	
	
	<table cellspacing="5" border="0" cellpadding="0">
		<tr valign="top" align="center">
		<td width="150">
		<form action = "student_login.jsp" method = "post">
		<input type="Submit" name="home_student" value="STUDENT" style="width:100px;height:50px"></input>
		</form>
		</td>
		<td width="1" bgcolor="#000000"><BR></td>	
		<td width="150" valign="top" align="center">
		<form action = "CompanyLogin.jsp" method = "post">
		<input type="Submit" name="home_company" value="COMPANY" style="width:100px;height:50px"></input>
		</form>
		</td>
		</tr>	
	</table>	<br/>
	
		
		<input type="Button" name="admin_login"  onclick="goToAdmin()" value="Administrator Login"/>
		
	</center>
</body>
</html>
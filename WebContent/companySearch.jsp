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
<div align="center" class="style1">Serch for Candidate</div>
<form id="form1" name="form1" method="post" action="">
  <p>&nbsp;</p>
  <table width="495" height="197" border="1" align="center">
    <tr>
      <td width="238">Industries</td>
      <td width="241"><label>
        <input type="text" name="textfield" />
      </label></td>
    </tr>
    <tr>
      <td>Qualification</td>
      <td><label>
        <select name="select">
        </select>
      </label></td>
    </tr>
    <tr>
      <td height="56">Skills</td>
      <td><label>
        <textarea name="textarea"></textarea>
      </label></td>
    </tr>
    <tr>
      <td height="47"><label>
        <div align="center">
          <input type="submit" name="Submit" value="Submit" />
        </div>
      </label></td>
      <td><label>
        <div align="center">
          <input type="submit" name="Submit2" value="Cancel" />
          </div>
      </label></td>
    </tr>
    <tr>
      <td height="28" colspan="2"><div align="center"><input type="submit" name="Submit3" value="Advance Search" />
          </div>
      </label></td>
    </tr>
  </table>
  <p>&nbsp;</p>
</form>
</body>
</html>

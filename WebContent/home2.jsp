<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<script type="text/javascipt">
	function exit()
	{
		alert("I am here");
		window.location= "home.jsp";
	}
</script>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>
<style type="text/css">
<!--
body,td,th {
	font-family: Book Antiqua;
	overflow: scroll;
}
body {
	background-image: url(photoshop_w2_2.gif);
	margin-left: 0px;
	margin-top: 0px;
	margin-right: 200px;
	margin-bottom: 648px;

}
scroller {
width: 100px;
height: 100px;
padding: 5px;
border: 1px solid blue;
overflow: no;
}
#Layer1 {
	position:absolute;
	width:190px;
	height:200px;
	z-index:1;
	left: -6px;
	top: 2px;
}
-->
</style></head>

<body>
<p>&nbsp;</p>
<p>&nbsp;</p>
<div id="Layer1">
  <div align="center">
    <p>&nbsp;</p>
    <p><a href="home1.jsp" target="mainFrame">Home</a></p>
    <p><a href="addstu.html" target="mainFrame">Add  Student </a></p>
    <p><a href="delStu.jsp" target="mainFrame">Delete Student </a></p>
    <p>
      <label></label>
    <a href="view.jsp" target="mainFrame">View Student </a></p>
    <p><input type="submit" value = "Log Out" onclick="parent.location='home.jsp'" > </input></p>
    <p>&nbsp;</p>
  </div>
</div>
<p align="center">&nbsp;</p>
</body>
</html>

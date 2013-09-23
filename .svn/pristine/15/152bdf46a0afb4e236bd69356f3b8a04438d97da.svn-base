<html>
<body>
<%@ page import="java.util.*" %>
<%@ page import="javax.mail.*" %>
<%@ page import="javax.mail.internet.*" %>

<%
	String to = request.getParameter("email");
	String password = request.getParameter("password");
	System.out.println(to);

	String smtpHost = "smtp.gmail.com";
	int smtpPort = 587;
	String from = "cse6324.spr2012";
	String urPasswd = "spring2012";
	java.util.Properties props = new java.util.Properties();
	props = System.getProperties();
	props.put("mail.smtp.host", smtpHost);
	props.put("mail.smtp.starttls.enable", "true");
	props.put("mail.smtps.auth", "true");
	Session mailSession = Session.getDefaultInstance(props, null);
	mailSession.setDebug(false);
	Message msg = new MimeMessage(mailSession);
	//String to = emi
	msg.setFrom(new InternetAddress(from));
	InternetAddress[] address = { new InternetAddress(to) };
	msg.setRecipients(Message.RecipientType.TO, address);
	String subject = "Auto Generated Password: Software Engg. Portal";
	msg.setSubject(subject);
	msg.setSentDate(new Date());
	String content = "Thank you for registering with Software Engineering Job Portal. "
			+ "\nUserName: Your 1000 ID\n" + "Password: " + password;
	msg.setText(content);
	//Send the message

	//System.out.println("Printed!");
	Transport transport = mailSession.getTransport("smtp");
	transport.connect(smtpHost, smtpPort, from, urPasswd);
	transport.sendMessage(msg, msg.getAllRecipients());
	transport.close();
	//out.println("done my man!!");
	response.sendRedirect("student_login.jsp?email="+to);
%>
</body>
</html>
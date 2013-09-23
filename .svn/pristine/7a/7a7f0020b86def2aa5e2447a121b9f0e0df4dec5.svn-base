package util;

import java.security.SecureRandom;
import java.math.BigInteger;
import  java.util.*;
import  javax.mail.*;
import  javax.mail.internet.*;

public final class PasswordGenerator
{

  private SecureRandom random = new SecureRandom();

  public String nextSessionId()
  {
    return new BigInteger(130, random).toString(32);
  }
  
  /*public void sendEmail(String emailTo, String password) throws MessagingException{
	  
	  String smtpHost="smtp.gmail.com";
		int smtpPort=587;
		String from="cse6324.spr2012";
		String urPasswd="spring2012";  
		java.util.Properties props = new java.util.Properties();
		props=System.getProperties(); 
		props.put("mail.smtp.host", smtpHost);
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtps.auth", "true");
		Session mailSession = Session.getDefaultInstance(props, null);
		mailSession.setDebug(false);
		Message msg = new MimeMessage(mailSession);
		//String to = "nikhilrao.madhav@gmail.com";
		msg.setFrom(new InternetAddress(from));
		InternetAddress[] address = {new InternetAddress(emailTo)};
		msg.setRecipients(Message.RecipientType.TO, address);
		String subject = "Auto Generated Password: Software Engg. Portal";
		msg.setSubject(subject);
		msg.setSentDate(new Date());
		String content = "Thank you for registering with Software Engineering Job Portal. " +
				"UserName: Your 1000 ID" +
				"Password:"+password;
		msg.setText(content);
		//Send the message

		//System.out.println("Printed!");
		Transport transport = mailSession.getTransport("smtp");
		transport.connect(smtpHost,smtpPort,from, urPasswd);
		transport.sendMessage(msg, msg.getAllRecipients());
		transport.close();
		System.out.println("done my man!!");

	  
  }*/

}
package util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;


public class PasswordCheck {
	
	public static boolean checkPassword(String user, String password) throws ClassNotFoundException, SQLException{
		
		Connection connection = null;
		Statement statement = null;
		ResultSet rs = null;
		String username = user;
		String pwd = password;
		boolean exists = false;
		Class.forName("com.mysql.jdbc.Driver");
		connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/cse6324", "root", "");
		statement = connection.createStatement();
		
		
		MessageDigest mdAlgorithm;
		// Session.RemoveAll ();
		try {
			mdAlgorithm = MessageDigest.getInstance("MD5");
		
			mdAlgorithm.update(pwd.getBytes());
	
			byte[] digest = mdAlgorithm.digest();
			StringBuffer hexString = new StringBuffer();
	
			for (int i = 0; i < digest.length; i++) {
			    pwd = Integer.toHexString(0xFF & digest[i]);
	
			    if (pwd.length() < 2) {
			        pwd = "0" + pwd;
			    }
	
			    hexString.append(pwd);
			}
			
			String md5Pwd = hexString.toString();
			String sql =("select * from cse6324_studentlogin where Id ="+ Integer.parseInt(username));
			System.out.println(sql);
			rs = statement.executeQuery(sql); 
			System.out.println(username);
			while(rs.next()){
				if ((username.equals(rs.getString(1)))&&(md5Pwd.equals(rs.getString(2)))) {
					System.out.println("exists should be true!");
						exists = true;
				}
			}
			
		} catch (NoSuchAlgorithmException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}		
		statement.close();
		connection.close();
		return exists;
	
	}
	public static void main(String args[])
	{
		try{
		checkPassword("1000663914", "qwerty");
		}
		catch(Exception e)
		{}
		
	}

}

package util;

import java.sql.*;

public class MysqlConnect{

	Connection conn = null;
	String url = "jdbc:mysql://localhost:3306/";
	String dbName = "cse6324";
	String driver = "com.mysql.jdbc.Driver";
	String userName = "root"; 
	String password = "";

	public Connection dbConnect() {		
		try {
			Class.forName(driver).newInstance();
			conn = DriverManager.getConnection(url+dbName,userName,password);
			
			return conn;
		} catch (Exception e) {
			e.printStackTrace();
			return conn;
		}
	}
	public void dbConnectionsClose() throws SQLException
	{
		conn.close();
	}
}


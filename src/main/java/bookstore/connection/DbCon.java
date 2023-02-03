package bookstore.connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DbCon {
	private static Connection connection=null;
	
	public static Connection getConnection() throws ClassNotFoundException, SQLException {
		if(connection==null) {
			Class.forName("com.mysql.cj.jdbc.Driver");
			System.out.print("Drivers installed");
			connection=DriverManager.getConnection("jdbc:mysql://localhost:3308/BookStore","root","root");
			System.out.print("Connection made ");
		}
		return connection;
	}
}

package utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBUtil {
	private static Connection cnn;
	private static String path="jdbc:mysql://localhost:3306/Ferritin";
	private static String user="root";
	private static String pass="1234";
	
	public static Connection connect() throws SQLException {
		cnn=DriverManager.getConnection(path, user, pass);
		return cnn;
	}
	
}

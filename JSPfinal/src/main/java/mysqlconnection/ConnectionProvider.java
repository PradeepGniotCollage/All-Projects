package mysqlconnection;

import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;

public final class ConnectionProvider {
private static final String URL = "jdbc:mysql://localhost:3306/rdbschool";
private static final String USER = "root";
private static final String PASSWORD = "9838@@";
    static Connection con=null;

public static Connection getConnection() throws SQLException{
	try {
        // Load MySQL JDBC driver
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Create a connection to the database
        con = DriverManager.getConnection(URL, USER, PASSWORD);

    }
	catch(ClassNotFoundException  e) {
		e.printStackTrace();
	}


	return con;
}

}

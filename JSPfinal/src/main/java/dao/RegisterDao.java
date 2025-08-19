package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import beans.RegisterBean;
import mysqlconnection.*;

public class RegisterDao {
	public String save(RegisterBean bean) throws SQLException {
		Connection c=null;
		try {
			c=(Connection) ConnectionProvider.getConnection();
			
			//create the Query
	        String query = "INSERT INTO student_forms(Student_name, Student_password, student_id) VALUES (?, ?, ?)";
	        PreparedStatement pstmt=c.prepareStatement(query);
	        pstmt.setString(1,bean.getName());
	        pstmt.setString(2,bean.getPassword());
	        pstmt.setString(3,bean.getSchoolId());
	        int result=pstmt.executeUpdate();
	        if(result>0) {
	        	System.out.println("---Data is inserted-----");
	        	return "---Data is inserted-----";
	        }else {
	        	System.out.println("---Data ia not inserted----");
	        	return "---Data ia not inserted----";
	        }
		}catch(Exception e) {
			e.printStackTrace();
		}
		c.close();
		return "---Data is inserted-----";
	}

}

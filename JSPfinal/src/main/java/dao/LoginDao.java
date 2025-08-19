package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import beans.LoginBean;
import mysqlconnection.ConnectionProvider;

public class LoginDao {
    public boolean save(LoginBean login) {
        boolean isValid = false;
        try {
            Connection con = ConnectionProvider.getConnection();
            String query = "SELECT * FROM student_forms WHERE student_id = ? AND student_password = ?";
            PreparedStatement pstmt = con.prepareStatement(query);
            pstmt.setString(1, login.getSchoolId());  // ✅ Correct getter
            pstmt.setString(2, login.getPassword());

            ResultSet rs = pstmt.executeQuery();
            if (rs.next()) {
                isValid = true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isValid;
    }
}

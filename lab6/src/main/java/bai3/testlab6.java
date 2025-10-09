package bai3;

import java.sql.ResultSet;
import java.sql.SQLException;

public class testlab6 {
    public static void main(String[] args) {
        try {
            // Thêm phòng ban mới
            String insertSql = "INSERT INTO Departments (ID, Name, Description) VALUES (?, ?, ?)";
            Object[] insertValues = {"KT", "Kế Toán", "Quản lý tài chính, ngân sách và báo cáo."};
            int rows = jdbc.executeUpdate(insertSql, insertValues);
            System.out.println("Đã thêm " + rows + " dòng vào Departments.");
        } catch (Exception e) {
            e.printStackTrace();
        }

        try {
            // Truy vấn tất cả phòng ban
            String selectSql = "SELECT * FROM Departments";
            ResultSet rs = jdbc.executeQuery(selectSql);
            while (rs.next()) {
                System.out.println(
                    rs.getString("ID") + " - " +
                    rs.getString("Name") + " - " +
                    rs.getString("Description")
                );
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

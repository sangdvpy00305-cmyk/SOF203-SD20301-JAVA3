package bai4;

import java.sql.ResultSet;
import java.sql.SQLException;
import bai4.jdbc;

class testlab6 {
    public static void main(String[] args) {
        // === SELECT ===
        try {
            String sql = "{CALL spSelectAll}";
            ResultSet rs = jdbc.executeQuery(sql);
            while (rs.next()) {
                System.out.println(
                        rs.getString("ID") + " - " + rs.getString("Name") + " - " + rs.getString("Description"));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }

        // === INSERT ===
        try {
            String sql = "{CALL spInsert(?, ?, ?)}";
            Object[] values = { "FN", "Tài Chính", "Quản lý tài chính và kế hoạch ngân sách" };
            int rows = jdbc.executeUpdate(sql, values);
            System.out.println("Đã thêm: " + rows + " dòng");
        } catch (Exception e) {
            e.printStackTrace();
        }

        // === UPDATE ===
        try {
            String sql = "{CALL spUpdate(?, ?, ?)}";
            Object[] values = { "FN", "Phòng Tài Chính - Cập Nhật", "Đã cập nhật mô tả mới" };
            int rows = jdbc.executeUpdate(sql, values);
            System.out.println("Đã cập nhật: " + rows + " dòng");
        } catch (Exception e) {
            e.printStackTrace();
        }

        // === DELETE ===
        try {
            String sql = "{CALL spDeleteById(?)}";
            Object[] values = { "FN" };
            int rows = jdbc.executeUpdate(sql, values);
            System.out.println("Đã xóa: " + rows + " dòng");
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}

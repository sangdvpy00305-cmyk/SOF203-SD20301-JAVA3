package bai2;

import java.sql.*;

public class Jdbc {
    // Cấu hình kết nối
    private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String URL = "jdbc:sqlserver://localhost:1433;databaseName=lab6jav3;encrypt=false;";
    private static final String USER = "sa";
    private static final String PASSWORD = "123456";

    static {
        try {
            Class.forName(DRIVER); // nạp driver
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Không tìm thấy driver JDBC SQL Server", e);
        }
    }

    /** Mở kết nối */
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    /** Thao tác dữ liệu (INSERT, UPDATE, DELETE) */
    public static int executeUpdate(String sql) throws SQLException {
        try (Connection conn = getConnection(); 
             Statement stmt = conn.createStatement()) {
            return stmt.executeUpdate(sql);
        }
    }

    /** Truy vấn dữ liệu (SELECT) */
    public static ResultSet executeQuery(String sql) throws SQLException {
        Connection conn = getConnection();
        Statement stmt = conn.createStatement(
            ResultSet.TYPE_SCROLL_INSENSITIVE, 
            ResultSet.CONCUR_READ_ONLY
        );
        return stmt.executeQuery(sql);
        // ❗ Lưu ý: nên đóng conn & stmt ở nơi sử dụng sau khi đọc xong ResultSet
    }
}

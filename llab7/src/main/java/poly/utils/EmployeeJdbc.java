package poly.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class EmployeeJdbc {
    // --- Cấu hình kết nối SQL Server ---
    private static final String DRIVER = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private static final String URL = "jdbc:sqlserver://localhost;databaseName=HRM;encrypt=false";
    private static final String USER = "sa";
    private static final String PASSWORD = "123456";

    static {
        try {
            Class.forName(DRIVER);
        } catch (ClassNotFoundException e) {
            throw new RuntimeException("Không thể nạp driver SQL Server", e);
        }
    }

    /** Mở kết nối tới database HRM */
    public static Connection getConnection() throws SQLException {
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }

    /** Thực hiện INSERT, UPDATE, DELETE (tự đóng kết nối) */
    public static int executeUpdate(String sql, Object... values) {
        try (Connection connection = getConnection();
             PreparedStatement stmt = createPreStmt(connection, sql, values)) {
            return stmt.executeUpdate();
        } catch (SQLException e) {
            throw new RuntimeException("Lỗi khi thực thi UPDATE: " + sql, e);
        }
    }

    /** Thực hiện SELECT (trả ResultSet, caller phải tự đóng sau khi dùng xong) */
    public static ResultSet executeQuery(String sql, Object... values) throws SQLException {
        Connection connection = getConnection();
        PreparedStatement stmt = createPreStmt(connection, sql, values);
        return stmt.executeQuery();
    }

    /** Tạo PreparedStatement cho SQL thường hoặc Stored Procedure */
    private static PreparedStatement createPreStmt(Connection connection, String sql, Object... values)
            throws SQLException {
        PreparedStatement stmt;
        if (sql.trim().startsWith("{")) {
            stmt = connection.prepareCall(sql);
        } else {
            stmt = connection.prepareStatement(sql);
        }
        for (int i = 0; i < values.length; i++) {
            stmt.setObject(i + 1, values[i]);
        }
        return stmt;
    }
}

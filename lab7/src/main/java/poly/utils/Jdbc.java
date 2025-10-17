package poly.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Jdbc {
	static String driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver";
	// Thêm encrypt=false tránh lỗi SSL cục bộ.
	static String dburl = "jdbc:sqlserver://localhost;databaseName=lab6jav3;encrypt=false";
	static String username = "sa";
	static String password = "123456";

	static {
		try {
			Class.forName(driver);
		} catch (ClassNotFoundException e) {
			throw new RuntimeException("Không nạp được driver SQLServer", e);
		}
	}

	/** Mở kết nối */
	public static Connection getConnection() throws SQLException {
		return DriverManager.getConnection(dburl, username, password);
	}

	/** Thao tác dữ liệu (INSERT, UPDATE, DELETE) - tự đóng connection */
	public static int executeUpdate(String sql, Object... values) {
		try (Connection connection = getConnection(); PreparedStatement stmt = createPreStmt(connection, sql, values)) {
			return stmt.executeUpdate();
		} catch (SQLException e) {
			throw new RuntimeException(e);
		}
	}

	/**
	 * Truy vấn dữ liệu (SELECT) - trả ResultSet, caller nên đóng ResultSet +
	 * Statement + Connection nếu cần
	 */
	public static ResultSet executeQuery(String sql, Object... values) throws SQLException {
		Connection connection = getConnection();
		PreparedStatement stmt = createPreStmt(connection, sql, values);
		// Important: không đóng connection/stmt ở đây vì ResultSet vẫn cần connection.
		return stmt.executeQuery();
	}

	/** Tạo PreparedStatement làm việc với SQL hoặc PROC */
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

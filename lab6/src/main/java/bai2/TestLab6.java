package bai2;

import java.sql.*;
import bai3.jdbc;
public class TestLab6 {
	public static void main(String[] args) {
		// --- SELECT ---
		try {
			String sql = "SELECT * FROM Departments";
			ResultSet rs = Jdbc.executeQuery(sql);
			System.out.println("Danh sách phòng ban:");
			while (rs.next()) {
				System.out.println(
						rs.getString("ID") + " - " + rs.getString("Name") + " - " + rs.getString("Description"));
			}
			rs.getStatement().getConnection().close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		// --- INSERT ---
		try {
			String sql = "INSERT INTO Departments (ID, Name, Description) "
					+ "VALUES ('AC', N'Kế toán phụ', N'Phòng phụ trách sổ sách')";
			int rows = Jdbc.executeUpdate(sql);
			System.out.println("Đã thêm " + rows + " dòng mới.");
		} catch (Exception e) {
			e.printStackTrace();
		}

		// --- UPDATE ---
		try {
			String sql = "UPDATE Departments SET Description = N'Phòng phụ trách sổ sách kế toán tổng hợp' "
					+ "WHERE ID = 'AC'";
			int rows = Jdbc.executeUpdate(sql);
			System.out.println("Đã cập nhật " + rows + " dòng.");
		} catch (Exception e) {
			e.printStackTrace();
		}

		// --- DELETE ---
		try {
			String sql = "DELETE FROM Departments WHERE ID = 'AC'";
			int rows = Jdbc.executeUpdate(sql);
			System.out.println("Đã xóa " + rows + " dòng.");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
}

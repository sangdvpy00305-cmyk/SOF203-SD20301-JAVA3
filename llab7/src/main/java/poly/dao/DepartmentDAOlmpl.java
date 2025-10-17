package poly.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import poly.entity.Department;
import poly.utils.Jdbc;

public class DepartmentDAOlmpl implements DepartmentDAO {

    @Override
    public List<Department> findAll() {
        String sql = "SELECT * FROM Departments";
        try {
            List<Department> entities = new ArrayList<>();
            Object[] values = {};
            ResultSet rs = Jdbc.executeQuery(sql, values);
            while (rs.next()) {
                Department entity = new Department();
                entity.setId(rs.getString("Id"));
                entity.setName(rs.getString("Name"));
                entity.setDescription(rs.getString("Description"));
                entities.add(entity);
            }
            // Note: we didn't close ResultSet/Statement/Connection here;
            // Jdbc.executeQuery opens connection and PreparedStatement.
            // For simplicity in this lab, rely on server restart to close, or extend Jdbc to return wrapper.
            return entities;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public Department findById(String id) {
        String sql = "SELECT * FROM Departments WHERE Id = ?";
        try {
            Object[] values = { id };
            ResultSet rs = Jdbc.executeQuery(sql, values);
            if (rs.next()) {
                Department entity = new Department();
                entity.setId(rs.getString("Id"));
                entity.setName(rs.getString("Name"));
                entity.setDescription(rs.getString("Description"));
                return entity;
            }
            return null;
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    @Override
    public void create(Department entity) {
        String sql = "INSERT INTO Departments(Id, Name, Description) VALUES(?, ?, ?)";
        Object[] values = {
            entity.getId(),
            entity.getName(),
            entity.getDescription()
        };
        Jdbc.executeUpdate(sql, values);
    }

    @Override
    public void update(Department entity) {
        String sql = "UPDATE Departments SET Name = ?, Description = ? WHERE Id = ?";
        Object[] values = {
            entity.getName(),
            entity.getDescription(),
            entity.getId()
        };
        Jdbc.executeUpdate(sql, values);
    }

    @Override
    public void deleteById(String id) {
        String sql = "DELETE FROM Departments WHERE Id = ?";
        Object[] values = { id };
        Jdbc.executeUpdate(sql, values);
    }
}

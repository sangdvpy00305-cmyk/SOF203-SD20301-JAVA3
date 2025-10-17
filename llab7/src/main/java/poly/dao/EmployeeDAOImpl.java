package poly.dao;

import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import poly.entity.Employee;
import poly.utils.Jdbc;

public class EmployeeDAOImpl implements EmployeeDAO {

    @Override
    public List<Employee> findAll() {
        String sql = "SELECT * FROM Employees";
        List<Employee> list = new ArrayList<>();
        try {
            ResultSet rs = Jdbc.executeQuery(sql);
            while (rs.next()) {
                Employee e = new Employee();
                e.setId(rs.getString("Id"));
                e.setPersonnel(rs.getString("Personnel"));
                e.setLastName(rs.getString("LastName"));
                e.setPhoto(rs.getString("Photo"));
                e.setGender(rs.getBoolean("Gender"));
                e.setBirthday(rs.getDate("Birthday"));
                e.setSalary(rs.getDouble("Salary"));
                e.setDepartmentId(rs.getString("DepartmentId"));
                list.add(e);
            }
            rs.getStatement().getConnection().close();
        } catch (Exception ex) {
            throw new RuntimeException("Lỗi truy vấn Employees!", ex);
        }
        return list;
    }

    @Override
    public Employee findById(String id) {
        String sql = "SELECT * FROM Employees WHERE Id = ?";
        try {
            ResultSet rs = Jdbc.executeQuery(sql, id);
            if (rs.next()) {
                Employee e = new Employee();
                e.setId(rs.getString("Id"));
                e.setPersonnel(rs.getString("Personnel"));
                e.setLastName(rs.getString("LastName"));
                e.setPhoto(rs.getString("Photo"));
                e.setGender(rs.getBoolean("Gender"));
                e.setBirthday(rs.getDate("Birthday"));
                e.setSalary(rs.getDouble("Salary"));
                e.setDepartmentId(rs.getString("DepartmentId"));
                rs.getStatement().getConnection().close();
                return e;
            }
        } catch (Exception ex) {
            throw new RuntimeException("Lỗi truy vấn theo ID!", ex);
        }
        return null;
    }

    @Override
    public void create(Employee e) {
        String sql = "INSERT INTO Employees (Id, Personnel, LastName, Photo, Gender, Birthday, Salary, DepartmentId) VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
        Jdbc.executeUpdate(sql,
                e.getId(),
                e.getPersonnel(),
                e.getLastName(),
                e.getPhoto(),
                e.isGender(),
                e.getBirthday(),
                e.getSalary(),
                e.getDepartmentId());
    }

    @Override
    public void update(Employee e) {
        String sql = "UPDATE Employees SET Personnel=?, LastName=?, Photo=?, Gender=?, Birthday=?, Salary=?, DepartmentId=? WHERE Id=?";
        Jdbc.executeUpdate(sql,
                e.getPersonnel(),
                e.getLastName(),
                e.getPhoto(),
                e.isGender(),
                e.getBirthday(),
                e.getSalary(),
                e.getDepartmentId(),
                e.getId());
    }

    @Override
    public void deleteById(String id) {
        String sql = "DELETE FROM Employees WHERE Id=?";
        Jdbc.executeUpdate(sql, id);
    }
}

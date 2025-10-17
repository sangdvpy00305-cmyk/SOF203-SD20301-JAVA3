package poly.entity;

import java.io.Serializable;
import java.util.Date;

public class Employee implements Serializable {
    private String id;
    private String personnel;
    private String lastName;
    private String photo;
    private boolean gender;
    private Date birthday;
    private double salary;
    private String departmentId;

    public Employee() {}

    public Employee(String id, String personnel, String lastName, String photo, boolean gender, Date birthday, double salary, String departmentId) {
        this.id = id;
        this.personnel = personnel;
        this.lastName = lastName;
        this.photo = photo;
        this.gender = gender;
        this.birthday = birthday;
        this.salary = salary;
        this.departmentId = departmentId;
    }

    public String getId() { return id; }
    public void setId(String id) { this.id = id; }

    public String getPersonnel() { return personnel; }
    public void setPersonnel(String personnel) { this.personnel = personnel; }

    public String getLastName() { return lastName; }
    public void setLastName(String lastName) { this.lastName = lastName; }

    public String getPhoto() { return photo; }
    public void setPhoto(String photo) { this.photo = photo; }

    public boolean isGender() { return gender; }
    public void setGender(boolean gender) { this.gender = gender; }

    public Date getBirthday() { return birthday; }
    public void setBirthday(Date birthday) { this.birthday = birthday; }

    public double getSalary() { return salary; }
    public void setSalary(double salary) { this.salary = salary; }

    public String getDepartmentId() { return departmentId; }
    public void setDepartmentId(String departmentId) { this.departmentId = departmentId; }
}

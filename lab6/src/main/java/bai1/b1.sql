CREATE DATABASE lab6jav3;
USE lab6jav3; 
GO
-- 1. Tạo bảng DEPARTMENTS
CREATE TABLE Departments (
    ID          CHAR(2)       NOT NULL,
    Name        NVARCHAR(50)  NOT NULL,
    Description NVARCHAR(255) NOT NULL,
    PRIMARY KEY (ID)
);
GO
-- 2. Tạo bảng EMPLOYEES
CREATE TABLE Employees (
    Id             VARCHAR(20)   NOT NULL,
    Personnel      NVARCHAR(50)  NOT NULL,
    LastName       NVARCHAR(50)  NOT NULL,
    Photo          VARCHAR(50)   NOT NULL,
    Gender         BIT           NOT NULL,
    Birthday       DATE          NOT NULL,
    Salary         FLOAT         NOT NULL,
    DepartmentId   CHAR(2)       NOT NULL,
    
    PRIMARY KEY (Id),
    
    FOREIGN KEY (DepartmentId) REFERENCES Departments(ID)
        ON UPDATE CASCADE 
        ON DELETE NO ACTION
);
GO
-- Dữ liệu mẫu cho DEPARTMENTS
INSERT INTO Departments (ID, Name, Description) VALUES 
('HR', N'Nhân Sự', N'Quản lý nhân lực và tuyển dụng.'),
('IT', N'Công Nghệ Thông Tin', N'Phát triển và bảo trì hệ thống.');

-- Dữ liệu mẫu cho EMPLOYEES
INSERT INTO Employees (Id, Personnel, LastName, Photo, Gender, Birthday, Salary, DepartmentId) VALUES 
('NV001', N'An', N'Nguyễn Văn', 'nguyenvanan.jpg', 1, '1990-01-15', 50000000, 'IT'),
('NV002', N'Bình', N'Trần Thị', 'tranthibinh.jpg', 0, '1995-05-20', 30000000, 'HR'),
('NV003', N'Cường', N'Lê Văn', 'levancuong.jpg', 1, '1988-11-30', 45000000, 'IT');

 --Thêm mới (Create - Insert)
 -- Thêm một phòng ban mới: Phòng Kế Toán (KT)
INSERT INTO Departments (ID, Name, Description) 
VALUES ('KT', N'Kế Toán', N'Quản lý tài chính, ngân sách và báo cáo.');

-- Thêm một phòng ban mới: Phòng Marketing (MK)
INSERT INTO Departments (ID, Name, Description) 
VALUES ('MK', N'Marketing', N'Quảng bá sản phẩm và thương hiệu.');

--Truy vấn (Read - Select)
SELECT * FROM Departments;

--Truy vấn theo khóa chính (Select by Primary Key)
SELECT * FROM Departments
WHERE ID = 'KT';

--Cập nhật theo khóa chính (Update)
-- Cập nhật Mô tả (Description) cho phòng Marketing (MK)
UPDATE Departments
SET Description = N'Nghiên cứu thị trường và quảng bá thương hiệu.'
WHERE ID = 'MK';

--Xóa theo khóa chính (Delete)
-- Ví dụ: Xóa phòng KT
DELETE FROM Departments
WHERE ID = 'KT';
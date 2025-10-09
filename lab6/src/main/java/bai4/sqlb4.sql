USE lab6jav3;
GO

-- Thêm mới
CREATE PROCEDURE spInsert
    @Id CHAR(2),
    @Name NVARCHAR(50),
    @Description NVARCHAR(255)
AS
BEGIN
    INSERT INTO Departments (Id, Name, Description)
    VALUES (@Id, @Name, @Description)
END
GO

-- Cập nhật
CREATE PROCEDURE spUpdate
    @Id CHAR(2),
    @Name NVARCHAR(50),
    @Description NVARCHAR(255)
AS
BEGIN
    UPDATE Departments
    SET Name = @Name, Description = @Description
    WHERE Id = @Id
END
GO

-- Xóa theo khóa chính
CREATE PROCEDURE spDeleteById
    @Id CHAR(2)
AS
BEGIN
    DELETE FROM Departments WHERE Id = @Id
END
GO

-- Truy vấn tất cả
CREATE PROCEDURE spSelectAll
AS
BEGIN
    SELECT * FROM Departments
END
GO

-- Truy vấn theo ID
CREATE PROCEDURE spSelectById
    @Id CHAR(2)
AS
BEGIN
    SELECT * FROM Departments WHERE Id = @Id
END
GO

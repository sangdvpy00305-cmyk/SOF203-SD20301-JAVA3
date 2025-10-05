<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Đăng ký</title>
</head>
<body>
<h2>Đăng Ký Thành Viên</h2>

<form method="post" action="dangky">
  Tên đăng nhập: <input name="username"><br>
  Mật khẩu: <input type="password" name="password"><br>

  Giới tính:
  <input type="radio" name="gender" value="Nam">Nam
  <input type="radio" name="gender" value="Nữ">Nữ<br>

  Đã có gia đình:
  <input type="checkbox" name="married" value="true"><br>

  Quốc tịch:
  <select name="country">
    <option>Vietnam</option>
    <option>United States</option>
    <option>Japan</option>
  </select><br>

  Sở thích:
  <input type="checkbox" name="hobbies" value="Đọc sách">Đọc sách
  <input type="checkbox" name="hobbies" value="Du lịch">Du lịch
  <input type="checkbox" name="hobbies" value="Âm nhạc">Âm nhạc
  <input type="checkbox" name="hobbies" value="Khác">Khác<br>

  Ghi chú: <textarea name="note"></textarea><br>

  <button type="submit">Đăng ký</button>
</form>

<p>${message}</p>
</body>
</html>

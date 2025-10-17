<%@ page pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Employee Management</title>
</head>
<body>
<c:url var="path" value="/employee" />

<h2>QUẢN LÝ NHÂN VIÊN</h2>

<!-- FORM -->
<form method="post" enctype="multipart/form-data">
    <label>Id:</label><br>
    <input name="id" value="${item.id}" required><br>

    <label>Personnel:</label><br>
    <input name="personnel" value="${item.personnel}" required><br>

    <label>Last Name:</label><br>
    <input name="lastName" value="${item.lastName}" required><br>

    <label>Photo:</label><br>
    <input type="file" name="photoFile"><br>
    <c:if test="${not empty item.photo}">
        <img src="${pageContext.request.contextPath}/uploads/${item.photo}" width="80">
    </c:if>
    <br>

    <label>Gender:</label><br>
    <input type="radio" name="gender" value="true" ${item.gender ? 'checked' : ''}> Nam
    <input type="radio" name="gender" value="false" ${!item.gender ? 'checked' : ''}> Nữ<br>

    <label>Birthday:</label><br>
    <input type="date" name="birthday" value="<fmt:formatDate value='${item.birthday}' pattern='yyyy-MM-dd'/>"><br>

    <label>Salary:</label><br>
    <input name="salary" type="number" step="0.01" value="${item.salary}" required><br>

    <label>Department:</label><br>
    <select name="departmentId" required>
        <option value="">-- Select Department --</option>
        <c:forEach var="d" items="${departments}">
            <option value="${d.id}" ${d.id == item.departmentId ? 'selected' : ''}>${d.name}</option>
        </c:forEach>
    </select>

    <hr>
    <button formaction="${path}/create">Create</button>
    <button formaction="${path}/update">Update</button>
    <button formaction="${path}/delete">Delete</button>
    <button formaction="${path}/reset">Reset</button>
</form>

<hr>

<!-- TABLE -->
<table border="1" style="width: 100%; text-align:center;">
<thead>
<tr>
    <th>No.</th>
    <th>Id</th>
    <th>Personnel</th>
    <th>Last Name</th>
    <th>Photo</th>
    <th>Gender</th>
    <th>Birthday</th>
    <th>Salary</th>
    <th>Department</th>
    <th></th>
</tr>
</thead>
<tbody>
<c:forEach var="e" items="${list}" varStatus="vs">
<tr>
    <td>${vs.count}</td>
    <td>${e.id}</td>
    <td>${e.personnel}</td>
    <td>${e.lastName}</td>
    <td><img src="${pageContext.request.contextPath}/uploads/${e.photo}" width="60"></td>
    <td><c:out value="${e.gender ? 'Nam' : 'Nữ'}"/></td>
    <td><fmt:formatDate value="${e.birthday}" pattern="dd/MM/yyyy"/></td>
    <td>${e.salary}</td>
    <td>${e.departmentId}</td>
    <td><a href="${path}/edit/${e.id}">Edit</a></td>
</tr>
</c:forEach>
</tbody>
</table>
</body>
</html>

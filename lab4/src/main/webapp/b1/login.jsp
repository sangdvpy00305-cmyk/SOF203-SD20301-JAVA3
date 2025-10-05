<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
<c:url value="/account/login" var="url"/>
<form action="${url}" method="post">
 <input name="username"><br>
 <input name="password" type="password"><br>
 <button>Login</button>
</form>
${message}
</body>
</html>
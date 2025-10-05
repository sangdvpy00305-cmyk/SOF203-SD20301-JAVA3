<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html>
<body>
   <c:url value="/calculate" var="cal"/>
   <form method="post">
     <input name="a"><br>
     <input name="b"><br>
     <button formaction="${cal}/add">+</button>
     <button formaction="${cal}/sub">-</button>
   </form>
   ${message}
</body>
</html>

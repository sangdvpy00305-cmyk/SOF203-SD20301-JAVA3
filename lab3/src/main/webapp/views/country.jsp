<%@ page pageEncoding="UTF-8"%>
<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<body>
<select name="country">
   <c:forEach var="ct" items="${countries}">
   <option value="${ct.id}">${ct.name}</option>
   </c:forEach>
</select>
</body>
</html>
<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<c:url value="/save" var="url"/>
<form action="${url}" method="post">
 <input name="fullname"> <br>
 <input name="birthday"> <br>
 <input type="radio" name="gender" value="true"> Male
 <input type="radio" name="gender" value="false"> Female <br>
 <input type="checkbox" name="hobbies" value="R"> Reading
 <input type="checkbox" name="hobbies" value="Traveling"> Traveling
 <input type="checkbox" name="hobbies" value="M"> Music <br>

 <select name="country">
 <option value="VN">Việt Nam</option>
 <option value="US" selected>United States</option>
 </select> <br>
 <input name="salary"> <br>
 <hr>
 <button>Submit</button>
</form>
</body>
</html>
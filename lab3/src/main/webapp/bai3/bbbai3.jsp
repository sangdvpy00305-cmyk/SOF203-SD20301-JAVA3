<%@ page  pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jstl/fmt_rt" prefix="fmt" %>
    
<!DOCTYPE html>
<html>
<head>
</head>
<body>
<ul>
<li>Name: ${item.name}</li>
<li>Price:
<fmt:formatNumber value="${item.price}" pattern="#,###.00"/>
</li>
<li>Date:
<fmt:formatDate value="${item.date}" pattern="MMM dd, yyyy"/>
</li>
</ul>
</body>
</html>
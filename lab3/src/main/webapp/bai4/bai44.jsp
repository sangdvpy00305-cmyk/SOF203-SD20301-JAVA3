<%@ page pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>



<!DOCTYPE html>
<html>
<head>
</head>
<body>
<ul>
<li>Title: ${fn:toUpperCase(item.title)}</li>
<li>Content:
<c:choose>
<c:when test="${fn:length(item.content) > 100}">
${fn:substring(item.content, 0, 100)}...
</c:when>
<c:otherwise>${item.content}</c:otherwise>
</c:choose>
</li>
</ul>
</body>
</html>
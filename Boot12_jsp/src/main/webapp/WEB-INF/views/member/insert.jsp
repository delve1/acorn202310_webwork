<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/views/member/insert.jsp</title>
</head>
<body>
<script>
	alert("${param.name} 님의 정보를 추가 했습니다");
	location.href="${pageContext.request.contextPath}/member/list";
</script>
</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="${root}/resources/css/member.css"/>
</head>
<body>
    <div id="login">
        <div id="log_title" style="font-size: 50px;">YMJJ</div>
        <div id="log_content">
            <label>ID</label>
            <input type="text"/>
        </div>
        <div id="log_content">
            <label>Password</label>
            <input type="password"/>
        </div>
        <div id="log_content">
            <label></label>
            <input type="button" value="Login" id="LoginBut"/>
            <input type="button" value="Join" id="JoinBut"/>
        </div>
    </div>
</body>
</html>
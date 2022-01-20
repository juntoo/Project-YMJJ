<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>menu</title>
<style>
*{
    margin: 0px auto;
    padding: 0px auto;
    box-sizing: border-box; 
}
#header{
    border: 1px black solid;
    width: 1920px;
    height: 100px;
    float: left;
}
#logo{
    border: 1px black solid;
    width: 200px;
    height: 100px;
    margin-left: 40px;
    float: left;
}
#menuBar{
    position: absolute;
    height: 100px;
    overflow: hidden;
    margin-left: 400px;
}
#menu{
    border: 1px black solid;
    height: 100px;
    width: 150px;
    float: left;
    font-size: 30px;
    line-height: 100px;
    text-align: center;
    margin-left: 50px;
}
#but{
    float: right;
    margin-top: 66px;
}
#but > input{
    font-size: 17px;
    margin-right: 40px;
}
</style>
</head>
<body>
    <div id="header">
        <div id="logo">logo</div>
        <div id="menuBar">
            <div id="menu"></div>
            <div id="menu">2</div>
            <div id="menu">3</div>
            <div id="menu">4</div>
            <div id="menu">5</div>
        </div>
        <div id="but">
            <input type="button" value="로그인"/>
            <input type="button" value="가입"/>
        </div>
    </div>
</body>
</html>
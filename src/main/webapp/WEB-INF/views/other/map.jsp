<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>map</title>
<link rel="stylesheet" href="${root}/resources/css/other/map.css"/>
</head>
<body>
    <div>
        <div id="title"><a style="font-size: 50px;">Map</a></div>
        <div id="M_menuF">
            <div id="subtitle">FOOD</div>
            <div id="M_content">
                <div id="Map">Map</div>
                <div id="check">
                    <div id="checkBox">
                        <div>
                            <input type="checkbox" value="일식"/><label>일식</label>
                            <input type="checkbox" value="일식"/><label>일식</label>
                            <input type="checkbox" value="일식"/><label>일식</label>
                        </div>
                        <div>
                            <input type="checkbox" value="일식"/><label>일식</label>
                            <input type="checkbox" value="일식"/><label>일식</label>
                            <input type="checkbox" value="일식"/><label>일식</label>
                        </div>
                    </div>
                    <div id="select">
                        <input type="text" placeholder="음식점 이름을 입력하세요"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

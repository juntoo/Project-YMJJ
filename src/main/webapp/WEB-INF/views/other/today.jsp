<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>TODAY</title>
<link rel="stylesheet" href="${root}/resources/css/other/today.css"/>
</head>
<body>
	<div id="today">
		<div id="main_title">TODAY</div>
		<div class="today_box">
		
			<div class="weather_box">
			</div> <!-- 날씨 박스 -->
			
			<div class="covid_box">
			</div> <!-- covid 박스 -->
			
			<div class="ranking_box">
			</div> <!-- 랭킹 박스 -->
			
			<div class="box_title">
				<label class="t_weather">Weather</label>
				<label class="t_covid">Covid_19</label>
				<label class="t_ranking">Ranking</label>
			</div>
		</div> <!-- 투데이 박스 -->
	</div>
</body>
</html>
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a1b3be5083c3fb842c5d0ac3934a42c3"></script>
<script type="text/javascript">
window.onload=function(){
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = { 
	    center: new kakao.maps.LatLng(33.365637, 126.526605), // 지도의 중심좌표
	    level: 9 // 지도의 확대 레벨
	};
	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	var map = new kakao.maps.Map(mapContainer, mapOption); 

}
function setDraggable(draggable) {
    // 마우스 드래그로 지도 이동 가능여부를 설정합니다
    map.setDraggable(draggable);    
}
function panTo() {
    // 이동할 위도 경도 위치를 생성합니다 
    var moveLatLon = new kakao.maps.LatLng(33.450580, 126.574942);
    
    // 지도 중심을 부드럽게 이동시킵니다
    // 만약 이동할 거리가 지도 화면보다 크면 부드러운 효과 없이 이동합니다
    map.panTo(moveLatLon);            
}
function getadd() {
	alert("하하");
	var data = ${docJson};
	alert("data : " + data);
	var x = data.documents.address.x;
	var y = data.documents.address.y;
	alert("x : " + x);
	alert("y : " + y);
}
</script>
</head>
<body>
    <div>
        <div id="title"><a style="font-size: 50px;">map</a></div>
        <div id="M_menuF">
            <div id="subtitle">FOOD</div>
            <div id="M_content">
                <div id="map"></div>
                
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
                        <input type="text" placeholder="음식점 이름을 입력하세요" value="zzz" id="yyy"/>
                        <input type="button" onclick="getadd()" value="버튼"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

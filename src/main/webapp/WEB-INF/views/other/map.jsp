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
<script type="text/javascript" src="${root}/resources/javascript/getmap.js"></script>
<script type="text/javascript" src="${root}/resources/javascript/other.js"></script>
<script src="http://code.jquery.com/jquery-latest.js"></script>
</head>
<body>
    <div>
        <div id="M_menuF">
            <div id="subtitle">FOOD</div>
            <div id="M_content">
                <div id="map"><script>openMap()</script></div>
                
                <div id="check">
                    <div id="checkBox">
                        <div>
                            <input type="checkbox" id="회집" name="category"/><label>회집</label>
                            <input type="checkbox" id="한식" name="category"/><label>한식</label>
                            <input type="checkbox" id="중국식" name="category"/><label>중국식</label>
                            <input type="checkbox" id="일식" name="category"/><label>일식</label>
                        </div>
                        <div>
                            <input type="checkbox" id="까페" name="category"/><label>까페</label>
                            <input type="checkbox" id="식육(숯불구이)" name="category"/><label>식육(숯불구이)</label>
                            <input type="checkbox" id="외국음식전문점(인도.태국등)" name="category"/><label>외국음식전문점(인도.태국등)</label>
                        </div>
                        <script type="text/javascript">
                        $('#chkMaintainAll, .chkMaintain').click(function(){ // 1번 알고리즘 실행
                            var sum = 0; // 합계 초기화 변수 -> 반복문 밖에서 선언해준다.
                            $('.chkMaintain').each(function(){ // 2번 알고리즘 실행
                                if ($(this).is(":checked") == true) 
                                {
                    			 // html 에서 선언해준 input type='hidden' 의 value값을 가져온다.
                                    var price_goods = 
                  					parseInt($(this).parents('tr').find('input[name=price_goods]').val());
                                    sum = sum + price_goods;
                                }
                            });
                            console.log(sum);
                        });
                     	</script>
                    </div>
                    <div id="select">
                        <input type="text" placeholder="음식점 이름을 입력하세요" onkeyup="if(window.event.keyCode==13){search()}" id="RName"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>

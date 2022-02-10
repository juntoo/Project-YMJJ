<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdoutJEJU</title>
<c:set var="root" value="${pageContext.request.contextPath}" />
<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>
<script type="text/javascript" src="${root}/resources/javascript/KakaoAddress.js"></script>
<script type="text/javascript" src="${root}/resources/javascript/getmap.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a1b3be5083c3fb842c5d0ac3934a42c3"></script>
<link rel="stylesheet" href="${root}/resources/css/aboutjeju/special.css">
<script type="text/javascript">
		<!-- 자바스크립트 만들기 --> 
		var one =document.getElementById('hiden1'); 	
		var two =document.getElementById('hiden2'); 	
		var ther =document.getElementById('hiden3'); 	
		var foer =document.getElementById('hiden4'); 	
		function btnClick1(){
			//alert("btnClick1");
			document.getElementById('hiden1').style.display="block";
		}
		function btnClick2(){
			//alert("btnClick2");
			document.getElementById('hiden2').style.display="block";
		}
		function btnClick3(){
			//alert("dkdk");
			document.getElementById('hiden3').style.display="block";
		}
		function btnClick4(){
			//alert("dkdk");
			document.getElementById('hiden4').style.display="block";
		}
		
		function OnClose(){
			document.getElementById('hiden1').style.display="none";
			document.getElementById('hiden2').style.display="none";
			document.getElementById('hiden3').style.display="none";
			document.getElementById('hiden4').style.display="none";
			
		}
	</script>
</head>
<body>

    <div>
        <div id="title"><a>About JEJU</a></div>
         <form class="form-style" action="" method="get" enctype="multipart/form-data">
        <div id="menuF">
            <div id="category">
                <div id="detail" style="border-left: 0px;"></div>
                <div id="detail"><a href="${root}/aboutjeju/introduction.do">Introduction</a></div>
                <div id="detail"><a href="${root}/aboutjeju/location.do">Location</a></div>
                <div id="detail" style="border-right: 0px;"><a  href="${root}/aboutjeju/speciality.do">Speciality</a></div>
                <div id="detail"><a href="${root}/aboutjeju/activities.do">Activities</a></div>
                <div id="detail" style="height: 600px; border-left: 0px; border-bottom: 0px;"></div>              
            </div>
            <div id="content">
           
                <div id="con" style="border : 2px black solid; width: 1175px; height: 640px; margin-top: 40px;margin-left: 40px;">         
                	<div id="con1">
                	
                		<!-- 왼쪽 사진 -->
                		<div style="padding-top: 50px; margin-top: 20px;">
                			<img width="150px" height="150px" src="${root}/resources/img/${Ilist[0].iname}"  onclick="btnClick1()"/>
                			<div><a>${Ilist[0].LMtitle}</a></div>
                		</div>
                		
                		<!-- 가운데 큰 사진 -->
                		<div style="border : 0px black solid; width: 651px; height: 450px; padding: 10px; margin-top: 30px;">
                			<img width="600px" height="400px" src="${root}/resources/img/${Ilist[1].iname}"  onclick="btnClick2()"/>
                			<div><a>${Ilist[1].LMtitle}</a></div>
                		</div>
                		
                		<!-- 오른쪽 사진 -->
                		<div>
                			<img width="150px" height="150px" src="${root}/resources/img/${Ilist[2].iname}"  onclick="btnClick3()"/>
                			<div><a>${Ilist[2].LMtitle}</a></div>
                		</div>
                	</div>
                	
                	<!-- 맨 아래 사진 -->
                	<div id="con2">
               			<img width="150px" height="150px" src="${root}/resources/img/${Ilist[3].iname}"  onclick="btnClick4()"/>
               			<div><a>${Ilist[3].LMtitle}</a></div>
                	</div>
                </div>
              </div>
         </div>     
      		
        <!-- hiden1 -->
        <div style="position: relative; margin-left: 650px;  ">
         <div id ="hiden1" style="display:none; background-color:white; border: 2px black solid; width: 500px; height: 560px; display:lnline-block; position:absolute;">
	   		<div id="zido1" style="width: 466px; height: 250px; border: 0px black solid; margin: 10px 10px 10px 10px;">
				<script type="text/javascript">
					var mapContainer = document.getElementById('zido1'), // 지도를 표시할 div 
	            	mapOption = { 
	            	    center: new kakao.maps.LatLng(parseFloat(${Ilist[0].LMlatitude}),  parseFloat(${Ilist[0].LMlongitude})), // 지도의 중심좌표
	            	    level: 2 // 지도의 확대 레벨
	            	};
	            	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	            	var map = new kakao.maps.Map(mapContainer, mapOption); 
	            	map.setDraggable(false);
	            	map.setZoomable(false);
	            	
	            	// 마커가 표시될 위치입니다 
	            	var markerPosition  = new kakao.maps.LatLng(parseFloat(${Ilist[0].LMlatitude}),parseFloat(${Ilist[0].LMlongitude})); 

	            	// 마커를 생성합니다
	            	var marker = new kakao.maps.Marker({
	            	    position: markerPosition
	            	});

	            	// 마커가 지도 위에 표시되도록 설정합니다
	            	marker.setMap(map);
				</script>
			</div>
	   		<div id="conttext" >
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${Ilist[0].LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${Ilist[0].LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${Ilist[0].LMcontent}</a></div>
	   		</div>
	   		 <div><button value="닫기" onclick="OnClose()">닫기</button></div>
	   	</div>
	   <!-- 2  -->
		<div id = "hiden2"style="azimuth:inherit; background-color:white; display: none; border: 2px black solid; width: 500px; height: 560px; display:lnline-block; position:absolute; " >
        <div id="zido2" style="width: 466px; height: 250px; border: 0px black solid; display:lnline-block;">
           <script type="text/javascript">
					var mapContainer = document.getElementById('zido2'), // 지도를 표시할 div 
	            	mapOption = { 
	            	    center: new kakao.maps.LatLng(parseFloat(${Ilist[1].LMlatitude}),  parseFloat(${Ilist[1].LMlongitude})), // 지도의 중심좌표
	            	    level: 2 // 지도의 확대 레벨
	            	};
	            	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	            	var map = new kakao.maps.Map(mapContainer, mapOption); 
	            	map.setDraggable(false);
	            	map.setZoomable(false);
	            	
	            	// 마커가 표시될 위치입니다 
	            	var markerPosition  = new kakao.maps.LatLng(parseFloat(${Ilist[1].LMlatitude}),parseFloat(${Ilist[1].LMlongitude})); 

	            	// 마커를 생성합니다
	            	var marker = new kakao.maps.Marker({
	            	    position: markerPosition
	            	});

	            	// 마커가 지도 위에 표시되도록 설정합니다
	            	marker.setMap(map);
				</script>
         </div>
	   		<div id="conttext" >
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${Ilist[1].LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${Ilist[1].LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${Ilist[1].LMcontent}</a></div>
	   		</div>
            <div><button value="닫기" onclick="OnClose()">닫기</button></div>
	   	</div>
	   	
	   	<div id = "hiden3"style="azimuth:inherit;background-color:white; display: none; border: 2px black solid; width: 500px; height: 560px; display:lnline-block; position:absolute;" >
            <div id="zido3" style="width: 466px; height: 250px; border: 0px black solid; display:lnline-block;">
            <script type="text/javascript">
					var mapContainer = document.getElementById('zido3'), // 지도를 표시할 div 
	            	mapOption = { 
	            	    center: new kakao.maps.LatLng(parseFloat(${Ilist[2].LMlatitude}),  parseFloat(${Ilist[2].LMlongitude})), // 지도의 중심좌표
	            	    level: 2 // 지도의 확대 레벨
	            	};
	            	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	            	var map = new kakao.maps.Map(mapContainer, mapOption); 
	            	map.setDraggable(false);
	            	map.setZoomable(false);
	            	
	            	// 마커가 표시될 위치입니다 
	            	var markerPosition  = new kakao.maps.LatLng(parseFloat(${Ilist[2].LMlatitude}),parseFloat(${Ilist[2].LMlongitude})); 

	            	// 마커를 생성합니다
	            	var marker = new kakao.maps.Marker({
	            	    position: markerPosition
	            	});

	            	// 마커가 지도 위에 표시되도록 설정합니다
	            	marker.setMap(map);
				</script>
         </div>
	   		<div id="conttext" >
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${Ilist[2].LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${Ilist[2].LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${Ilist[2].LMcontent}</a></div>
	   		</div>
            <div><button value="닫기" onclick="OnClose()">닫기</button></div>
	   	</div>
	   	
	   	<div id = "hiden4"style="azimuth:inherit;background-color:white; display: none; border: 2px black solid; width: 500px; height: 550px; display:lnline-block; position:absolute;" >
          <div id="zido4" style="width: 500px; height: 250px; border: 0px black solid; display:lnline-block;">
            <script type="text/javascript">
               var mapContainer = document.getElementById('zido4'), // 지도를 표시할 div 
	               mapOption = { 
	                   center: new kakao.maps.LatLng(${Ilist[3].LMlatitude}, ${Ilist[3].LMlongitude}), // 지도의 중심좌표
	                   level: 2 // 지도의 확대 레벨
	               };
	               //지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	               var map = new kakao.maps.Map(mapContainer, mapOption); 
	               map.setDraggable(false);
	               map.setZoomable(false);
	               
	               var lat = parseFloat(${Ilist[3].LMlatitude});
	               var lon = parseFloat( ${Ilist[3].LMlongitude});
	               //alert("위도" + lat + "경도" + lon);
	               var ${aboutDto.LMnumber} = new kakao.maps.Marker({
	                     map: map, 
	                   position: new kakao.maps.LatLng(lat, lon)
	                  });
            </script>
         </div>
	   		<div id="conttext" >
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${Ilist[3].LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${Ilist[3].LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${Ilist[3].LMcontent}</a></div>
	   		</div>
            <div><button value="닫기" onclick="OnClose()">닫기</button></div>
	   	</div>
	   	</div>
        </form>
    </div>
</body>
</html>
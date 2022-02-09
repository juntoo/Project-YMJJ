<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>AdoutJEJU</title>
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
<c:set var="root" value="${pageContext.request.contextPath}" />
<link rel="stylesheet" href="${root}/resources/css/aboutjeju/activities.css">
<script type="text/javascript" src="${root}/resources/javascript/KakaoAddress.js"></script>
<script type="text/javascript" src="${root}/resources/javascript/getmap.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a1b3be5083c3fb842c5d0ac3934a42c3"></script>
<script type="text/javascript">
		<!-- 자바스크립트 만들기 --> 
		/* var one =document.getElementById('hiden1'); 	
		var two =document.getElementById('hiden2'); 	
		var ther =document.getElementById('hiden3'); 	
		var foer =document.getElementById('hiden4'); 	
		var fix =document.getElementById('hiden5'); 	
		var six =document.getElementById('hiden6');
		var sen =document.getElementById('hiden7'); 	
		var eig =document.getElementById('hiden8'); 	 */
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
		function btnClick5(){
			//alert("dkdk");
			document.getElementById('hiden5').style.display="block";
		}
		function btnClick6(){
			//alert("dkdk");
			document.getElementById('hiden6').style.display="block";
		}
		function btnClick7(){
			//alert("dkdk");
			document.getElementById('hiden7').style.display="block";
		}
		function btnClick8() {
			//alert("eig");
			document.getElementById('hiden8').style.display="block";
		}
		
		function OnClose(){
			document.getElementById('hiden1').style.display="none";
			document.getElementById('hiden2').style.display="none";
			document.getElementById('hiden3').style.display="none";
			document.getElementById('hiden4').style.display="none";
			document.getElementById('hiden5').style.display="none";
			document.getElementById('hiden6').style.display="none";
			document.getElementById('hiden7').style.display="none";
			document.getElementById('hiden8').style.display="none";
		}
	</script>
</head>
<body>
     <div>
        <div id="title"><a>About JEJU</a></div>
        <div id="menuF">
            <div id="category">
                <div id="detail" style="border-left: 0px;"></div>
                <div id="detail"><a href="${root}/aboutjeju/introduction.do">Introduction</a></div>
                <div id="detail"><a  href="${root}/aboutjeju/location.do">Location</a></div>
                <div id="detail"><a  href="${root}/aboutjeju/speciality.do">Speciality</a></div>
                <div id="detail" style="border-right: 0px;"><a href="${root}/aboutjeju/activities.do">Activities</a></div>
                <div id="detail" style="height: 600px; border-left: 0px; border-bottom: 0px;"></div>              
            </div>
            <div id="content" >
            <form class="form-style" action="" method="get" enctype="multipart/form-data">
                <div style="border : 2px black solid; width: 1175px; height: 640px; margin-top: 40px;margin-left: 40px;  overflow: hidden;position: relative;">
	                <!-- 왼쪽 사진들 -->
					<div id="hiking">
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[0].iname}" onclick="btnClick1()"/>
							
							<div style="margin-top: 150px;"><a>${Ilist[0].LMtitle}</a></div>
						</div>
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[1].iname}" onclick="btnClick2()"/>
							
							<div style="margin-top: 150px;"><a>${Ilist[1].LMtitle}</a></div>					
						</div>
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[2].iname}" onclick="btnClick3()"/>
							
							<div style="margin-top: 150px;"><a>${Ilist[2].LMtitle}</a></div>
						</div>
					</div>
						<!-- 가운데 큰 글씨 -->
					<div id="activity">
						<div id="act1">
							<div id="color1">
								<a>${Ilist[4].LMcontent}</a>
							</div>
							<div>
								<a>${Ilist[5].LMcontent}</a>
							</div>
						</div>
						
						<div id="act2">
							<label>Activities</label>
						</div>
						
						<div id="act3">
							<div id="color2">
								<img width="200px" height="150px" alt="" src="${root}/img/${Ilist[4].iname}" onclick="btnClick5()"/>
							</div>
							<div>
								<img width="200px" height="150px" alt="" src="${root}/img/${Ilist[5].iname}" onclick="btnClick6()"/>
							</div>
						</div>
					</div>
						
					<div id="leisure">
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[6].iname}" onclick="btnClick7()"/>
							<div style="margin-top: 150px;"><a>${Ilist[6].LMtitle}</a></div>
						</div>
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[7].iname}" onclick="btnClick8()"/>
							<div style="margin-top: 150px;"><a>${Ilist[7].LMtitle}</a></div>
						</div>
						<div>
							<img width="150px" height="150px" alt="" src="${root}/img/${Ilist[3].iname}" onclick="btnClick4()"/>
							<div style="margin-top: 150px;"><a>${Ilist[3].LMtitle}</a></div>
						</div>
					</div>
	            </div>
	
	          </form>
            </div>
            <div style="position: relative; margin-left: 650px; margin-top: 10px;">		
		<div id ="hiden1"style="display:none; border: 2px black solid; width: 500px; height: 560px; position:absolute;">
	   		<div id="zido1" style="width: 466px; height: 250px; border: 0px black solid; display:lnline-block;">
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
   				<c:forEach var="aboutjejuDto" items="${Ilist}" >
	               <c:if test="${aboutjejuDto.LMtitle==Ilist[0].LMtitle}">
	               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${aboutjejuDto.LMtitle}</a></div> 
	               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${aboutjejuDto.LMpostalcode}</a></div>
	               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${aboutjejuDto.LMcontent}</a></div>
	               </c:if>
            </c:forEach>             
	   		</div>
	   		<div><button value="닫기" onclick="OnClose()">닫기</button></div>
	   		</div>
	   	<!-- 2  -->
		<div id = "hiden2"style="azimuth:inherit; display: none; border: 2px black solid; width: 500px; height: 560px; position:absolute; " >
        <div id="zido2" style="width: 466px; height: 250px; border: 0px black solid;">
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
               <c:forEach var="aboutjejuDto" items="${Ilist}" >
               <c:if test="${aboutjejuDto.LMtitle==Ilist[1].LMtitle}">
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${aboutjejuDto.LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${aboutjejuDto.LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${aboutjejuDto.LMcontent}</a></div>
               </c:if>
            </c:forEach>
            </div>
            <div><button value="닫기" onclick="OnClose()">닫기</button></div>
	   	</div>
	   	
  		<div id = "hiden3"style="azimuth:inherit; display: none; border: 2px black solid; width: 500px; height: 560px; position:absolute;" >
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
               <c:forEach var="aboutjejuDto" items="${Ilist}" >
               <c:if test="${aboutjejuDto.LMtitle==Ilist[2].LMtitle}">
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${aboutjejuDto.LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${aboutjejuDto.LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${aboutjejuDto.LMcontent}</a></div>
               </c:if>
            </c:forEach>
            </div>
            <div><button value="닫기" onclick="OnClose()">닫기</button></div>
	   	</div>
	   	
	   	<div id = "hiden4"style="azimuth:inherit; display: none; border: 2px black solid; width: 500px; height: 560px; position:absolute;" >
            <div id="zido4" style="width: 466px; height: 250px; border: 0px black solid; display:lnline-block;">
            <script type="text/javascript">
			           var mapContainer = document.getElementById('zido3'), // 지도를 표시할 div 
			       	mapOption = { 
			       	    center: new kakao.maps.LatLng(parseFloat(${Ilist[3].LMlatitude}),  parseFloat(${Ilist[3].LMlongitude})), // 지도의 중심좌표
			       	    level: 2 // 지도의 확대 레벨
			       	};
			       	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
			       	var map = new kakao.maps.Map(mapContainer, mapOption); 
			       	map.setDraggable(false);
			       	map.setZoomable(false);
			       	
			       	// 마커가 표시될 위치입니다 
			       	var markerPosition  = new kakao.maps.LatLng(parseFloat(${Ilist[3].LMlatitude}),parseFloat(${Ilist[3].LMlongitude})); 
			
			       	// 마커를 생성합니다
			       	var marker = new kakao.maps.Marker({
			       	    position: markerPosition
			       	});
			
			       	// 마커가 지도 위에 표시되도록 설정합니다
			       	marker.setMap(map);
            </script>
         </div>
            <div id="conttext" >
               <c:forEach var="aboutjejuDto" items="${Ilist}" >
               <c:if test="${aboutjejuDto.LMtitle==Ilist[3].LMtitle}">
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${aboutjejuDto.LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${aboutjejuDto.LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${aboutjejuDto.LMcontent}</a></div>
               </c:if>
            </c:forEach>
            </div>
            <div><button value="닫기" onclick="OnClose()">닫기</button></div>
	   	</div>
          	
	   	<div id = "hiden5"style="azimuth:inherit; display: none; border: 2px black solid; width: 500px; height: 560px; display:lnline-block; position:absolute;" >
            <div id="zido5" style="width: 466px; height: 250px; border: 0px black solid; display:lnline-block;">
            <script type="text/javascript">
               var mapContainer = document.getElementById('zido5'), // 지도를 표시할 div 
	              mapOption = { 
	          	    center: new kakao.maps.LatLng(parseFloat(${Ilist[4].LMlatitude}),  parseFloat(${Ilist[4].LMlongitude})), // 지도의 중심좌표
	          	    level: 2 // 지도의 확대 레벨
	          	};
	          	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	          	var map = new kakao.maps.Map(mapContainer, mapOption); 
	          	map.setDraggable(false);
	          	map.setZoomable(false);
	          	
	          	// 마커가 표시될 위치입니다 
	          	var markerPosition  = new kakao.maps.LatLng(parseFloat(${Ilist[4].LMlatitude}),parseFloat(${Ilist[4].LMlongitude})); 
	
	          	// 마커를 생성합니다
	          	var marker = new kakao.maps.Marker({
	          	    position: markerPosition
	          	});
	
	          	// 마커가 지도 위에 표시되도록 설정합니다
	          	marker.setMap(map);
            </script>
         </div>
            <div id="conttext" >
               <c:forEach var="aboutjejuDto" items="${Ilist}" >
               <c:if test="${aboutjejuDto.LMtitle==Ilist[4].LMtitle}">
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${aboutjejuDto.LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${aboutjejuDto.LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${aboutjejuDto.LMcontent}</a></div>
               </c:if>
            </c:forEach>
            </div>
            <div><button value="닫기" onclick="OnClose()">닫기</button></div>
		</div>
		
		
	   	<div id = "hiden6"style="azimuth:inherit; display: none; border: 2px black solid; width: 500px; height: 560px; display:lnline-block; position:absolute;" >
            <div id="zido6" style="width: 466px; height: 250px; border: 0px black solid; display:lnline-block;">
            <script type="text/javascript">
               var mapContainer = document.getElementById('zido6'), // 지도를 표시할 div 
	               mapOption = { 
	           	    center: new kakao.maps.LatLng(parseFloat(${Ilist[5].LMlatitude}),  parseFloat(${Ilist[5].LMlongitude})), // 지도의 중심좌표
	           	    level: 2 // 지도의 확대 레벨
	           	};
	           	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	           	var map = new kakao.maps.Map(mapContainer, mapOption); 
	           	map.setDraggable(false);
	           	map.setZoomable(false);
	           	
	           	// 마커가 표시될 위치입니다 
	           	var markerPosition  = new kakao.maps.LatLng(parseFloat(${Ilist[5].LMlatitude}),parseFloat(${Ilist[5].LMlongitude})); 
	
	           	// 마커를 생성합니다
	           	var marker = new kakao.maps.Marker({
	           	    position: markerPosition
	           	});
	
	           	// 마커가 지도 위에 표시되도록 설정합니다
	           	marker.setMap(map);
            </script>
         </div>
            <div id="conttext" >
               <c:forEach var="aboutjejuDto" items="${Ilist}" >
               <c:if test="${aboutjejuDto.LMtitle==Ilist[5].LMtitle}">
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${aboutjejuDto.LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${aboutjejuDto.LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${aboutjejuDto.LMcontent}</a></div>
               </c:if>
            </c:forEach>
            </div>
            <div><button value="닫기" onclick="OnClose()">닫기</button></div>
		</div>
		
	   	<div id = "hiden7"style="azimuth:inherit; display: none; border: 2px black solid; width: 500px; height: 560px; display:lnline-block; position:absolute;" >
            <div id="zido7" style="width: 466px; height: 250px; border: 0px black solid; display:lnline-block;">
            <script type="text/javascript">
               var mapContainer = document.getElementById('zido7'), // 지도를 표시할 div 
	               mapOption = { 
	           	    center: new kakao.maps.LatLng(parseFloat(${Ilist[6].LMlatitude}),  parseFloat(${Ilist[6].LMlongitude})), // 지도의 중심좌표
	           	    level: 2 // 지도의 확대 레벨
	           	};
	           	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	           	var map = new kakao.maps.Map(mapContainer, mapOption); 
	           	map.setDraggable(false);
	           	map.setZoomable(false);
	           	
	           	// 마커가 표시될 위치입니다 
	           	var markerPosition  = new kakao.maps.LatLng(parseFloat(${Ilist[6].LMlatitude}),parseFloat(${Ilist[6].LMlongitude})); 
	
	           	// 마커를 생성합니다
	           	var marker = new kakao.maps.Marker({
	           	    position: markerPosition
	           	});
	
	           	// 마커가 지도 위에 표시되도록 설정합니다
	           	marker.setMap(map);
            </script>
         </div>
            <div id="conttext" >
               <c:forEach var="aboutjejuDto" items="${Ilist}" >
               <c:if test="${aboutjejuDto.LMtitle==Ilist[6].LMtitle}">
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${aboutjejuDto.LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${aboutjejuDto.LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${aboutjejuDto.LMcontent}</a></div>
               </c:if>
            </c:forEach>
		   	</div>
		   	<div><button value="닫기" onclick="OnClose()">닫기</button></div>
		   	</div>
		   	
		   		<div id = "hiden8"style="azimuth:inherit; display: none; border: 2px black solid; width: 500px; height: 550px; display:lnline-block; position:absolute;" >
            <div id="zido8" style="width: 466px; height: 250px; border: 0px black solid; display:lnline-block;">
            <script type="text/javascript">
               var mapContainer = document.getElementById('zido7'), // 지도를 표시할 div 
	               mapOption = { 
	           	    center: new kakao.maps.LatLng(parseFloat(${Ilist[6].LMlatitude}),  parseFloat(${Ilist[6].LMlongitude})), // 지도의 중심좌표
	           	    level: 2 // 지도의 확대 레벨
	           	};
	           	//지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
	           	var map = new kakao.maps.Map(mapContainer, mapOption); 
	           	map.setDraggable(false);
	           	map.setZoomable(false);
	           	
	           	// 마커가 표시될 위치입니다 
	           	var markerPosition  = new kakao.maps.LatLng(parseFloat(${Ilist[6].LMlatitude}),parseFloat(${Ilist[6].LMlongitude})); 
	
	           	// 마커를 생성합니다
	           	var marker = new kakao.maps.Marker({
	           	    position: markerPosition
	           	});
	
	           	// 마커가 지도 위에 표시되도록 설정합니다
	           	marker.setMap(map);
            </script>
         </div>
            <div id="conttext" >
               <c:forEach var="aboutjejuDto" items="${Ilist}" >
               <c:if test="${aboutjejuDto.LMtitle==Ilist[6].LMtitle}">
               <div  style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>제목 : </label><a>${aboutjejuDto.LMtitle}</a></div> 
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px;"><label>주소 : </label><a>${aboutjejuDto.LMpostalcode}</a></div>
               <div style="border: 1px black solid; margin: 10px 10px 10px 10px; height: 150px;"><label>상세 정보 : </label><a>${aboutjejuDto.LMcontent}</a></div>
               </c:if>
            </c:forEach>
		   	</div>
		   	<div><button value="닫기" onclick="OnClose()">닫기</button></div>
		   	</div>
		   	
		   	</div>
        </div>
    </div>
</body>
</html>
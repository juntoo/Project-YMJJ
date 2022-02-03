<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>레스토랑</title>
<link rel="stylesheet" href="${root}/resources/css/restaurant/Restaurant_Introduction.css"/>
</head>
<body>

    <div id="title"> 
        <h4>Restaurant</h4>
    </div>

    <div id="content">

        <div id="btn_type">
            <input type="button" value="추가"/>
            <input type="button" value="수정"/>
            <input type="button" value="삭제"/>
        </div>

        <div id="subject">

            <div id="Restaurant_photo">사진</div>

            <div id="nav">

                <div id="rstitle">

                    <div id="restaurant_name">이름${restaurantDto.RTname}</div>
                    <div id="restaurant_introduction">${restaurantDto.RTintroduce}</div>

                </div>

                <div id="review">

                    <div id="review_title">Review</div>

                    <div id="teduri"></div>
                    <div id="teduri"></div>
                    <div id="teduri"></div>

                </div>

            </div>

            <div id="kakaomap">맵</div>
            
            <!--<c:if test="${restaurantDto.RTIname !=null}">
				<tr>
					<td align="center" height="30" width="200">파일명</td>
					<td colspan="3">
						<a href="${root}/fileboard/downLoad.do?boardNumber=${boardDto.boardNumber}">
							${boardDto.fileName} 
						</a>
					</td>		
				</tr>
			
			</c:if>-->



        </div>


    </div>
	
</body>
</html>
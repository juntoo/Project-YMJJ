<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Mypage-M-D</title>
<link rel="stylesheet" href="${root}/resources/css/member/member.css"/>
</head>
<body>
    <div>
        <div id="title"><a>Mypage</a></div>
        <div id="menuF">
            <div id="category">
                <div id="detail" style="border-left: 0px;"></div>
                <div id="detail" style="border-right: 0px;"><a>Account</a></div>
                <div id="detail" style="height: 690px; border-left: 0px; border-bottom: 0px;"></div>
            </div>
            
            <div id="content">
                <div style="float: left; margin-top: 60px; margin-left: 50px; font-size: 50px;">Account</div>
                <div style="border : 2px black solid; width: 900px; height: 640px; margin-top: 40px;margin-right: 110px;">
					<form name="memberForm"  id="form_style" action="#" method="post" onsubmit="return registerForm(this)">
						<div class="M_line_box">
							<div class="line">
								<label class="title">Name</label>
								<span class="content">
									<input type="text" name="name"/>
								</span>
							</div>
							
							<div class="line">
								<label class="title">R.Number</label>
								<span class="content">
									<input type="text" name="jumin1" size="11" maxlength="6" />
									- <input type="text" name="jumin2" size="12" maxlength="7" />
								</span>	
							</div>
							
							<div class="line">  
								<label class="title">ID</label>  
								
								<span class="content"> 
									<input type="text" name="id"/>
									<input type="button" value="ID Check" />
								</span>
							</div>
							
							<div class="line">
								<label class="title">Password</label>
								<span class="content">
									<input type="password" name="password" />
								</span>
							</div>
							
							<div class="line">
								<label class="title"></label>
								<span class="content">
									<input type="password" name="passwordCheck"/>
								</span>
							</div>
							
							<div class="line">
								<label class="title">Address</label>
								<span class="content">
									<input type="text" name="zipcode" />
									<input type="button" value="Search" />
								</span>
						  	</div>
							
							<div class="line">
								<label class="title"></label>
								<span class="content">
									<input type="text" name="address" size="40" />
								</span>
							</div>
							
							<div class="line">
								<label class="title">E-Mail</label>
								
								<span class="content">
									<input type="text" name="email" size="25" />
								</span>
							</div>
							
							<div class="line">
								<label class="title">Tel)</label>
								
								<span class="content">
									<input type="text" name="telnum1" size="5" maxlength="3" />
									<input type="text" name="telnum2" size="10" maxlength="4" />
									<input type="text" name="telnum3" size="10" maxlength="4" />
								</span>	
							</div>
						</div>
						<div class="line_btn">
							<input type="submit" value="Okay"/>
							<input type="reset" value="Cancle"/>
						</div>
					</form>
				</div>	
			</div>
		</div>
	</div>
</body>
</html>
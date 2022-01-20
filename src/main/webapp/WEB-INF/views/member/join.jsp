<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<c:set var="root" value="${pageContext.request.contextPath}"/>
<html>
<head>
<meta charset="UTF-8">
<title>Join</title>
<script type="text/javascript" src="${root}/resources/javascript/member.js"></script>
<link rel="stylesheet" href="${root}/resources/css/member/member.css"/>
</head>
<body>
	<div id="register">
		<div id="subject">YMJJ</div>
		<div class="register_box">
		
			 <form name="memberForm"  id="form_style"  action="${root}/member/joinOk.do"  method="post" onsubmit="return joinForm(this)"> 
				 
			 <div class="J_line_box">
				<div class="line">
					<label class="J_title">Name</label>
					<span class="content">
						<input type="text" name="name"/>
					</span>
				</div>
					
				<div class="line">
					<label class="J_title">Regi.Num</label>
					<span class="content">
						<input type="text" name="jumin1" size="11" maxlength="6" />							
						- <input type="password" name="jumin2" size="12" maxlength="7" />
					</span>	
				</div>
				
				<div class="line">  
					<label class="J_title">ID</label>  
						
					<span class="content"> 
						<input type="text" name="id"/>
						<input type="button" value="IDCheck" onclick="idCheck(memberForm, '${root}')"/>
					</span>
				</div>
					
				<div class="line">
					<label class="J_title">Password</label>
					<span class="content">
						<input type="password" name="password" />
					</span>
				</div>
					
				<div class="line">
					<label class="J_title"></label>
					<span class="content">
						<input type="password" name="passwordCheck"/>
					</span>
				</div>
					
				<div class="line">
					<label class="J_title">Address</label>
					<span class="content">
						<input type="text" name="zipcode" size="10"/>
						<input type="button" value="Search" />
					</span>
				</div>
					
				<div class="line">
					<label class="J_title"></label>
					<span class="content">
						<input type="text" name="address" size="34" />
					</span>
				</div>
					
				<div class="line">
					<label class="J_title">E-Mail</label>
					<span class="content">
						<input type="email" name="email" size="22" />
					</span>
				</div>
					
				<div class="line">
					<label class="J_title">Tel)</label>
					<span class="content">
						<input type="text" name="telnum1" size="4" maxlength="3" />
						<input type="text" name="telnum2" size="9" maxlength="4" />
						<input type="text" name="telnum3" size="9" maxlength="4" />
					</span>	
				</div>
			</div>
				<div class="J_line_btn">
					<input type="submit" value="Okay"/>
					<input type="reset" value="Cancle"/>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
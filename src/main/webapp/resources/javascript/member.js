/**
 * 
 */

//유효성 검사
function joinForm(obj){
	if(obj.password.value != obj.passwordCheck.value){
		alert("비밀번호를 확인해 주세요.")
		obj.password.focus();
		return false;
	}
}

//아이디 체크
function idCheck(memberForm, root){
	if(memberForm.id.value==""){
		alert("아이디를 반드시 입력해 주세요.")
		memberForm.id.focus();
		return;
	}
	url=root + "/member/ID_Check.do?id="+memberForm.id.value;
	
	window.open(url, "", "width=250, height=200");
}












//이름 체크
/*function nameCheck(memberForm, root){
	if(memberForm.name.value==""){
		alert("이름을 입력해 주세요.")
		memberForm.name.focus();
		return;
	}
}

//주민번호 체크
function jumin1Check(memberForm, root){
	if(memberForm.jumin1.value==""){
		alert("주민번호를 입력해 주세요.")
		memberForm.jumin1.focus();
		return;
	}
}

function jumin2Check(memberForm, root){
	if(memberForm.jumin2.value==""){
		alert("주민번호를 입력해 주세요.")
		memberForm.jumin2.focus();
		return;
	}
}

//주소 체크
function addressCheck(memberForm, root){
	if(memberForm.address.value==""){
		alert("주소를 입력해 주세요.")
		memberForm.address.focus();
		return;
	}
}

//이메일 체크
function emailCheck(memberForm, root){
	if(memberForm.email.value==""){
		alert("이메일을 입력해 주세요.")
		memberForm.email.focus();
		return;
	}
}

//전화번호 체크
function telnum1Check(memberForm, root){
	if(memberForm.telnum1.value==""){
		alert("전화번호를 입력해주세요.")
		memberForm.telnum1.focus();
		return;
	}
}

function telnum2Check(memberForm, root){
	if(memberForm.telnum2.value==""){
		alert("전화번호를 입력해주세요.")
		memberForm.telnum2.focus();
		return;
	}
}

function telnum3Check(memberForm, root){
	if(memberForm.telnum3.value==""){
		alert("전화번호를 입력해주세요.")
		memberForm.telnum3.focus();
		return;
	}
}

//비밀번호 체크
if(!document.memberForm.password.value){
	alert("password를 입력하세요");
	return false;
}*/
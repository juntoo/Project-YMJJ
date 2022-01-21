/**
 * 
 */

//유효성 검사
function joinForm(obj){
	if(obj.Mpassword.value != obj.MpasswordCheck.value){
		alert("비밀번호를 확인해 주세요.")
		obj.Mpassword.focus();
		return false;
	}
}

//아이디 체크
function idCheck(memberForm, root){
	if(memberForm.Mid.value==""){
		alert("아이디를 반드시 입력해 주세요.")
		memberForm.Mid.focus();
		return;
	}
	url=root + "/member/ID_Check.do?Mid="+memberForm.Mid.value;
	
	window.open(url, "", "width=250, height=200");
}


//이름 체크
/*function nameCheck(memberForm, root){
	if(memberForm.Mname.value==""){
		alert("이름을 입력해 주세요.")
		memberForm.Mname.focus();
		return;
	}
}

//주민번호 체크
function jumin1Check(memberForm, root){
	if(memberForm.Mresidentnumber1.value==""){
		alert("주민번호를 입력해 주세요.")
		memberForm.Mresidentnumber1.focus();
		return;
	}
}

function jumin2Check(memberForm, root){
	if(memberForm.Mresidentnumber2.value==""){
		alert("주민번호를 입력해 주세요.")
		memberForm.Mresidentnumber2.focus();
		return;
	}
}

//주소 체크
function addressCheck(memberForm, root){
	if(memberForm.Mpostalcode.value==""){
		alert("주소를 입력해 주세요.")
		memberForm.Mpostalcode.focus();
		return;
	}
}

//이메일 체크
function emailCheck(memberForm, root){
	if(memberForm.Memail.value==""){
		alert("이메일을 입력해 주세요.")
		memberForm.Memail.focus();
		return;
	}
}

//전화번호 체크
function telnum1Check(memberForm, root){
	if(memberForm.Mcallnumber1.value==""){
		alert("전화번호를 입력해주세요.")
		memberForm.Mcallnumber1.focus();
		return;
	}
}

function telnum2Check(memberForm, root){
	if(memberForm.Mcallnumber2.value==""){
		alert("전화번호를 입력해주세요.")
		memberForm.Mcallnumber2.focus();
		return;
	}
}

function telnum3Check(memberForm, root){
	if(memberForm.Mcallnumber3.value==""){
		alert("전화번호를 입력해주세요.")
		memberForm.Mcallnumber3.focus();
		return;
	}
}

//비밀번호 체크
if(!document.memberForm.Mpostalcode.value){
	alert("password를 입력하세요");
	return false;
}*/
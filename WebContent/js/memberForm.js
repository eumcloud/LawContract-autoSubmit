function chkPass(pwStr, pwOkStr){
	let pw = document.getElementById(pwStr);
	let pwOk = document.getElementById(pwOkStr);
	
	if(pw.value != pwOk.value){
		alert('패스워드 달라요');
		pw.value="";
		pwOk.value="";
		pw.focus();
		return false;
	}
	return true;
}
function sendMember(){
	let items = ['id', 'pw'];
	
	for(let item of items)
		if(IsEmpty(item)==false)
			return;
	if(chkPass('pw', 'pwOk')==false)	return;
	
	document.getElementById('frm').submit();
}
function phoneForm(url, frmId, path){
	var reg = /^[a-z][a-z0-9_-]{3,20}@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
	var email = document.getElementById("email");
	var emailOk = document.getElementById("emailOk").value
	var pw = document.getElementById("pw").value
	var pwOk = document.getElementById("pwOk").value
	let errorMsg = document.getElementById("errorMsg");
	formSubmit(frmId, path);
	if(email.value==""){
		errorMsg.innerText=('email을 입력하세요');
		return;
	}
	 if(!reg.test(email.value)){
		errorMsg.innerText=('email 형식이 잘못되었습니다.');
		return;
	}
	 if(emailOk==email.value){
		alert('중복된 이메일입니다.');
		return;
	}
	 if(pw != pwOk){
		errorMsg.innerText=('비밀번호가 다릅니다.');
		return;
	}
	else {
		openPop(url);
	}
}

function openPop(url){
	pop_auth = window.open(url, '인증 팝업', 'top=10, left=10, width=600, height=600');
	pop_auth.focus();
}


function formSubmit(frmId, path){
	let frm = document.getElementById(frmId);
	frm.action=path;
	frm.submit();	
}
function checkEmail(frmId, path){
	
	var reg = /^[a-z][a-z0-9_-]{3,20}@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
	var email = document.getElementById("email");
	var emailOk = document.getElementById("emailOk").value
	let errorMsg = document.getElementById("errorMsg");
	let frm = document.getElementById('frmId');
	formSubmit(frmId, path);
	if(email.value==""){
		errorMsg.innerText=('email을 입력하세요');
		return;
	}
	if(!reg.test(email.value)){
		errorMsg.innerText=('email 형식이 잘못되었습니다.');
		return;
	}
	if(emailOk==email.value){
		alert('중복된 이메일입니다.');
		return;
		}
	if(emailOk!=email.value) {
		alert('사용 가능한 이메일입니다.');
		return;
		}
	
	}
	
	



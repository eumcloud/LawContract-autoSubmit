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
function phoneForm(frmId, url){
	var reg = /^[a-z][a-z0-9_-]{3,20}@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
	var email = document.getElementById("email");
	let errorMsg = document.getElementById("errorMsg");
	let frm = document.getElementById('frm');
	if(email.value==""){
		errorMsg.innerText=('email을 입력하세요');
		return;
	}
	if(!reg.test(email.value)){
		errorMsg.innerText=('email 형식이 잘못되었습니다.');
		return;
	}
	else{
		  openPop(url);
	}
	
}

function openPop(url){
	pop_auth = window.open(url, '인증 팝업', 'top=10, left=10, width=500, height=600');
	pop_auth.focus();
}

function checkAuth(url, frmId) {
	var email = document.getElementById("email");
	var emailOk = document.getElementById("emailOk").value
	
	if(emailOk!=true){
		phoneForm(frmId, url)
		}
	else {
		alert('중복');
	}
		
}

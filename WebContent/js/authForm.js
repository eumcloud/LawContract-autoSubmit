function sendEmail(){
	var reg = /^[a-z][a-z0-9_-]{3,20}@([a-z\d\.-]+)\.([a-z\.]{2,6})$/;
	var email = document.getElementById("email");
	let errorMsg = document.getElementById("errorMsg");
	if(email.value==""){
		errorMsg.innerText=('email을 입력하세요');
		return;
	}
	if(!reg.test(email.value)){
		errorMsg.innerText=('email 형식이 잘못되었습니다.');
		return;
	}
	document.getElementById('frm').submit();
}
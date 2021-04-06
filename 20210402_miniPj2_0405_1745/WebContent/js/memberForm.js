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
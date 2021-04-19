function openPop(url){
	pop_auth = window.open(url, '결제 창', 'top=10, left=10, width=480, height=450');
	pop_auth.focus();
}
function formSubmit(frmId, path){
	let frm = document.getElementById(frmId);
	frm.action = path;
	frm.submit();
}
function openPath(url, path, frmId){
	formSubmit(frmId, path);
	usrId = document.getElementById("usrId").value
	if(usrId != "")
	openPop(url);
	
}

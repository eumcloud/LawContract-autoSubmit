/**
 * 내정보 비밀번호, 주소 변경하기 위해 만든 js
 */
function formSubmit(frmId, path){
	let frm = document.getElementById(frmId);
	frm.action=path;
	frm.submit();
}

function openModityForm(frmId,path){
	window.open(path, '인증 팝업', 'top=10, left=10, width=500, height=600, status=no, menubar=no, toolbar=no, resizable=no');
}
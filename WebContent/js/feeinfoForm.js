function openPop(url){
	pop_auth = window.open(url, '결제 창', 'top=10, left=10, width=500, height=10000');
	pop_auth.focus();
}
function popUpWindow(){
	var popUp = document.getElementById("popUp").value;
	
	if(popUp == "성공")
		alert('결제가 완료되었습니다.');
	if(popUp == "실패")
		alert('결제를 취소하였습니다.');
}
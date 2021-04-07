var count1 =1;
var count2 =1;
var pop_auth = null;
function add(){
   
   var list = document.querySelector("#list");
   list.innerHTML +="<tr><td>특약사항"+ count1++ +"</td><td><textarea rows='2' cols='80' name='spcContents"+ count2++ +"'></textarea></td></tr>";
}
function openPop(url){
	pop_auth = window.open(url, '인증 팝업', 'top=10, left=10, width=500, height=600');
	pop_auth.focus();
}
function openPop2(url2){
	pop_auth = window.open(url2, '인증 팝업', 'top=10, left=10, width=400, height=300');
	pop_auth.focus();
}

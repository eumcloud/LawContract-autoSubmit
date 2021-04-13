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
function inputInfo(writer, addr, date, Term, Loan, targetWriter, targetAddr, targetEmail, email, url2){
   
   let id0 = document.getElementById(writer);
   let id1 = document.getElementById(addr);
   let id2 = document.getElementById(date);
   let id3 = document.getElementById(Term);
   let id4 = document.getElementById(Loan);
   let id5 = document.getElementById(targetWriter);
   let id6 = document.getElementById(targetAddr);
   let id7 = document.getElementById(targetEmail);
   let id8 = document.getElementById(email);
   
   if(id0.value=="" || id1.value=="" || id2.value=="" || id3.value=="" || id4.value=="" || id5.value=="" || id6.value=="" || id7.value=="" || id8.value==""){
      alert("정보를 입력하세요");
      id0.focus();
      id1.focus();
      id2.focus();
      id3.focus();
      id4.focus();
      id5.focus();
      id6.focus();
      id7.focus();
      id8.focus();
      return false;
   }
   pop_auth = window.open(url2, '인증 팝업', 'top=10, left=10, width=500, height=600');
   pop_auth.focus();
}
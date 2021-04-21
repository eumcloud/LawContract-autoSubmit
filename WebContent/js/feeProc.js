function checkForm(url){
      var objWrite3 = document.getElementsByName("boardCheckbox");
      var count = 0;
     for(var i=0;i<objWrite3.length;i++){
           if(objWrite3[i].checked == true){
              count++;
         }
      }
    if(count<=0){
       alert("체크항목을 선택 해 주세요.");
       return false;
    }
    pop_auth = window.open(url, '인증 팝업', 'top=10, left=10, width=500, height=600');
	pop_auth.focus();
}
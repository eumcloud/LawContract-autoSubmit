function openPop2(boardCheckbox, path1){

    var boardCheckbox1 = document.getElementsByName(boardCheckbox);
    var chk = false;
    for(var i=0 ; i<boardCheckbox1.length ; i++){
       if(boardCheckbox1[i].checked) {
         chk = true;
          } else {
          chk = false;
           }
            
          }
          if(chk) {
            alert("체크박스를 선택해주세요.");
            return;
            
          } else {
             window.opener.queryselector(path1);
	         window.close;
             }
	         
             
          }
             
            
      
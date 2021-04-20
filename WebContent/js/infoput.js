function openPop2(boardCheckbox, path){

    var boardCheckbox1 = document.getElementsByName(boardCheckbox);
    boardCheckbox1 = false;
    for(var i=0; i<boardCheckbox1.length; i++){
       if(boardCheckbox1[i].checked) {
         boardCheckbox1 = true;
          } else {
          boardCheckbox1 = false;
           }
            
          }
          if(boardCheckbox1) {
            alert("체크박스를 선택해주세요.");
            return;
            
          } else {
             alert("절차를 진행합니다.");
             }
	         
             
          }
             
            
      
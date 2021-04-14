function PopupNextPage(name, num, phone, inputauth, sessionauth, path2){
   
   let name1 = document.getElementById(name);
   let num1 = document.getElementById(num);
    let phone1 = document.getElementById(phone);
    let inputauth1 = document.getElementById(inputauth);
    let sessionauth1 = document.getElementById(sessionauth);
    
   if(name1.value==""){
      alert("이름을 입력하세요.");
      name1.focus();
      return false;
   }
   if(num1.value==""){
      alert("주민번호를 입력하세요.");
      num1.focus();
      return false;
      
   }
   if(phone1.value==""){
      alert("핸드폰번호를 입력하세요.");
      phone1.focus();
      return false;
      
   }
   if(inputauth1.value==""){
      alert("인증번호를 입력하세요.");
      inputauth1.focus();
      return false;
      
   }
   
   if(inputauth1.value != sessionauth1.value){
      alert("인증실패.");
      inputauth1.focus();
      return false;
      
   }
   window.opener.location.href=path2;
    self.close();
}
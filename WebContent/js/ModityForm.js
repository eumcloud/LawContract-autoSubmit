/**
 * 내정보 비밀번호, 주소 변경하기 위해 만든 js
 **/

function formSubmit(frmId, path){
   let frm = document.getElementById(frmId);
   frm.action=path;
   frm.submit();
}

function openModityForm(frmId,path){
   window.open(path, 'modity', 'top=10, left=10, width=480, height=520, status=no, menubar=no, toolbar=no, resizable=no');
}

function formclose(){

   window.close();
}

function Addrproc(frmId,path){
   var addr = document.getElementById("addr").value;
   var newaddr = document.getElementById("newaddr").value;
   var Addrpath = path + "?newaddr="+ newaddr +"&addr="+ addr;
   
     window.opener.location.href=Addrpath;
     alert("수정 되었습니다.");
     self.close();
}

function Pwrproc(frmId,path){
   var currentpw = document.getElementById("currentpw").value;
   var userpw = document.getElementById("userpw").value;
   
   var newpw = document.getElementById("newpw").value;
   var newpwok = document.getElementById("newpwok").value;
   
   var Pwpath = path + "?currentpw=" + currentpw +"&newpw=" + newpw + "&newpwok=" + newpwok;

     window.opener.location.href=Pwpath;
     if(newpw == newpwok && currentpw == userpw){
        alert("수정 되었습니다.");
     }
     else{
        alert("수정에 실패하셨습니다.");
     }
     self.close();
}
 

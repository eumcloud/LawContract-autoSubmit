function IsEmpty(id){
	let inputTag = document.getElementById(id);
	if(inputTag.value==""){
		alert("데이터가 비어 있습니다.");
		inputTag.focus();
		return false;
	}
	return true;
}

function formSubmit(frmId, path){
	let frm = document.getElementById(frmId);
	frm.action = path;
	frm.submit();
}
function toDataURL(){
	  var signPad = document.getElementById('signPad');
	  signPad.src = canvas.toDataURL();
	  var signHere = document.querySelector("#signHere");
	  window.opener.signHere.innerHTML +="<Img id='signImg' src='"+signPad.src+"'/>";
	  self.close();
	}
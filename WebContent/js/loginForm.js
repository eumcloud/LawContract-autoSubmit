function checkEmpty(){
	let items = ['id', 'pw'];
	
	for(let item of items)
		if(IsEmpty(item)==false)
			return;
	
	document.getElementById('frm').submit();
}
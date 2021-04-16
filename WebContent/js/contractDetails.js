/**
 * 작성자 : 송증빈
 *
 */
 
 /**	체크박스 전체 선택		**/
function checkAll(checkboxAllName, checkboxName){
	let checkAllName = document.getElementsByName(checkboxAllName);
	let boardCheckbox = document.getElementsByName(checkboxName);
	
	for(let chkbox of boardCheckbox)
		chkbox.checked=checkAllName[0].checked;
}












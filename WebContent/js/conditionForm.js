var count1 =1;
var count2 =1;
function add(){
   
   var list = document.querySelector("#list");
   list.innerHTML +="<tr><td>특약사항"+ count1++ +"</td><td><textarea rows='2' cols='50' name='spcContents"+ count2++ +"'></textarea></td></tr>";
}
/**
 * 
 */

function chCol(){
	var rObj =  document.querySelector('#rDiv');
	var redObj = document.querySelector('#rColor');
	var greenObj = document.querySelector('#gColor');
	var blueObj = document.querySelector('#bColor');
	rObj.innerHTML = 'red : ' + redObj.value;
	rObj.innerHTML += ',green : ' + greenObj.value;
	rObj.innerHTML += ',blue : ' + blueObj.value;
	var colorStr = 'rgb(' + redObj.value;
	colorStr += ',' + greenObj.value;
	colorStr += ',' + blueObj.value + ')';
	rObj.style.border = '1px solid ' + colorStr;
	rObj.style.borderRadius = '20px';
	
}
function chColor(obj){
	var rObj = document.querySelector('#rDiv');
	rObj.innerHTML = obj.value;
	rObj.style.color = obj.value;
	rObj.style.border = '1px solid ' + obj.value;
}
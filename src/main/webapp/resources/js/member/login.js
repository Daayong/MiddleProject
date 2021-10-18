/**
 * 
 */
 
const logM=document.getElementById('logMember');
const nlogM=document.getElementById('nonlogMember');

const lcM=document.getElementById('log_mem');
const lcnM=document.getElementById('log_non_mem');	

const d=document.getElementById('dd');	
const nd=document.getElementById('ndd');

const lm=document.getElementById('logMember');
const nlm=document.getElementById('nonlogMember');
	
				
logM.addEventListener('click',function(){
	
	lcnM.setAttribute('style','display:none');
	lcM.setAttribute('style','display:block');	
	d.setAttribute('style','display:block');
	nd.setAttribute('style','display:none');
	lm.setAttribute('style','color:#101010; font-weight:bolder;');
	nlm.setAttribute('style','color:#606060');
});


nlogM.addEventListener('click',function(){

	lcM.setAttribute('style','display:none');
	lcnM.setAttribute('style','display:block');
	d.setAttribute('style','display:none');
	nd.setAttribute('style','display:block');
	nlm.setAttribute('style','color:#101010; font-weight:bolder;');
	lm.setAttribute('style','color:#606060');
});


		
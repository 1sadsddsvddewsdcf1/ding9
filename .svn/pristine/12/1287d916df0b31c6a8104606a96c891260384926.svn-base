//切换



function  tesecBoard1(n)
{
for(i=0;i<tesecTable1.cells.length;i++)
tesecTable1.cells[i].className="tesel04";
tesecTable1.cells[n].className="tesel03";
for(i=0;i<temainTable1.tBodies.length;i++)
temainTable1.tBodies[i].style.display="none";
temainTable1.tBodies[n].style.display="block";
}
function chgrelType(val){
 if(val==0){
  document.all.pro.style.display="";
  document.all.pro2.style.display="none";
  document.all.pro3.style.display="none";
  document.all.pro4.style.display="none";
  document.all.pro5.style.display="none";
  document.all.reltype.style.display="none";
  document.all.searchtype.value="pro";
  }else if(val==1){
  document.all.pro.style.display="none";
  document.all.pro2.style.display="none";
  document.all.pro3.style.display="none";
  document.all.pro4.style.display="none";
  document.all.pro5.style.display="none";
  document.all.reltype.style.display="";
  document.all.searchtype.value="merchant";
  }else if(val==2){
  document.all.pro.style.display="none";
  document.all.pro2.style.display="";
  document.all.pro3.style.display="none";
  document.all.pro4.style.display="none";
  document.all.pro5.style.display="none";
  document.all.reltype.style.display="none";
  document.all.searchtype.value="cheapcard";
  
  }else if(val==3){
  document.all.pro.style.display="none";
  document.all.pro2.style.display="none";
  document.all.pro3.style.display="";
  document.all.pro4.style.display="none";
  document.all.pro5.style.display="none";
  document.all.reltype.style.display="none";
  document.all.searchtype.value="promotion";
  
  }else if(val==4){
  document.all.pro.style.display="none";
  document.all.pro2.style.display="none";
  document.all.pro3.style.display="none";
  document.all.pro4.style.display="";
  document.all.pro5.style.display="none";
  document.all.reltype.style.display="none";
  document.all.searchtype.value="article";
  }else if(val==5){
  document.all.pro.style.display="none";
  document.all.pro2.style.display="none";
  document.all.pro3.style.display="none";
  document.all.pro4.style.display="none";
  document.all.pro5.style.display="";
  document.all.reltype.style.display="none";
  document.all.searchtype.value="comment";
}
  
}

function BTM_FUN_PROVINCE_CITY(PROVINCE){
	document.all.btmselectp.value="";
	for (var i=document.all.btmselectc.options.length-1;i>-1;i--){
		document.all.btmselectc.options[i]=null;
	}
	document.all.btmselectc.options[document.all.btmselectc.options.length]=new Option("所在城市",0);
	if (PROVINCE!=""){
		if (PROVINCE.indexOf("|")>=0){
			var TEMP=PROVINCE.split("|");
			document.all.btmselectp.value=TEMP[0];
			TEMP=TEMP[1];
			if (TEMP!=""){
				TEMP=TEMP.split(",");
				for (var i=0;i<TEMP.length-1;i++){
					var TMP=TEMP[i];
					TMP=TMP.split("-");
					document.all.btmselectc.options[document.all.btmselectc.options.length]=new Option(TMP[1],TMP[0]);
				}
			}
		}
	}
}


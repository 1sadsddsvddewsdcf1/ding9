function FUN_PROVINCE_CITY(PROVINCE){
	document.all.selectp.value="";
	for (var i=document.all.selectc.options.length-1;i>-1;i--){
		document.all.selectc.options[i]=null;
	}
document.all.selectc.options[document.all.selectc.options.length]=new Option("所在城市",0);
	if (PROVINCE!=""){
		if (PROVINCE.indexOf("|")>=0){
			var TEMP=PROVINCE.split("|");
			document.all.selectp.value=TEMP[0];
			TEMP=TEMP[1];
			if (TEMP!=""){
				TEMP=TEMP.split(",");
				
				for (var i=0;i<TEMP.length-1;i++){
					var TMP=TEMP[i];
					TMP=TMP.split("-");
					document.all.selectc.options[document.all.selectc.options.length]=new Option(TMP[1],TMP[0]);
				}
			}
		}
	}
}
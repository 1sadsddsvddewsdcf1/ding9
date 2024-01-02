//============横向溢出滚动=================================
var interMove;

function SearchEvent(){
    func = SearchEvent.caller;
    while(func != null) {
        var arg0 = func.arguments[0];
        if(arg0) {
            if(arg0.constructor == Event) // 如果就是event 对象
                return arg0;
        }
        func = func.caller;
    }
    return null;
}
function doMove(){
    if(window.event){
		var divMove = event.srcElement.parentNode;
		var aWidth = divMove.clientWidth;	//层内容的页面显示宽度
		var bWidth = divMove.scrollWidth;	//层内容的真实宽度
		if(aWidth < bWidth){
			interMove = setInterval(function(){ divMove.scrollLeft += 10; }, 200);
		}
	}
	else{
		var evt = SearchEvent();
		var divMove = evt.target;
		var aWidth = divMove.clientWidth;	//层内容的页面显示宽度
		var bWidth = divMove.scrollWidth;	//层内容的真实宽度
		if(aWidth < bWidth){
			interMove = setInterval(function(){ divMove.scrollLeft += 10; }, 200);
		}
	}
	if(document.all){
		divMove.attachEvent ('onmouseout', doReset);
	}
	else{
		divMove.addEventListener('mouseout', doReset, false);
	}
}
function doReset(){
    if(window.event){
		var divMove = event.srcElement;
		if(divMove.clientWidth < divMove.scrollWidth){
			clearInterval(interMove)
			divMove.scrollLeft = 0;
		}
	}
	else{
		var evt = SearchEvent();
		var divMove = evt.target;
		if(divMove.clientWidth < divMove.scrollWidth){
			clearInterval(interMove)
			divMove.scrollLeft = 0;
		}
    }
}





//============切换=================================
function selectCard(n)
{
	for(i=1;i<3;i++){
		eval("document.getElementById('cl0"+i+"').className='layout-new-right-select'");
	}
	eval("document.getElementById('cl0"+n+"').className='layout-new-right-selected'");
	//显示
	for(i=1;i<3;i++){
		eval("ele_hide = document.getElementById('tb_x0"+i+"')");
		ele_hide.style.display = "none";
		//eval("ele_hide = document.getElementById('d0"+i+"')");
		//ele_hide.style.display = "none";
	}
	eval("ele_play = document.getElementById('tb_x0"+n+"')");
	ele_play.style.display = "block";
	//eval("ele_play = document.getElementById('d0"+n+"')");
	//ele_play.style.display = "block";
}


//============切换=================================
var tID=0;   
function ShowTabs(ID){   
     if(ID!=tID){   
         eval("document.getElementById('TabTitle"+[tID]+"').className='menu_title1';");   
         eval("document.getElementById('TabTitle"+[ID]+"').className='menu_title2';");   
         eval("document.getElementById('Tabs"+[tID]+"').style.display='none';");   
         eval("document.getElementById('Tabs"+[ID]+"').style.display='';");   
         tID=ID;   
     }   
}   
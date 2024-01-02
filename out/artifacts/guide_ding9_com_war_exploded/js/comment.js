//切换

function  secBoard(n)
{
for(i=0;i<secTable.cells.length;i++)
secTable.cells[i].className="sel02";
secTable.cells[n].className="sel01";
for(i=0;i<mainTable.tBodies.length;i++)
mainTable.tBodies[i].style.display="none";
mainTable.tBodies[n].style.display="block";
}

function  secBoard1(n)
{
for(i=0;i<secTable1.cells.length;i++)
secTable1.cells[i].className="sel04";
secTable1.cells[n].className="sel03";
for(i=0;i<mainTable1.tBodies.length;i++)
mainTable1.tBodies[i].style.display="none";
mainTable1.tBodies[n].style.display="block";
}




//首页

var moz = (typeof document.implementation != 'undefined') && (typeof document.implementation.createDocument != 'undefined');
var ie = (typeof window.ActiveXObject != 'undefined');



var g_speed = 50; //渐变的频率
var g_step = 10; //渐变的步长

var g_selectedCategory; //选中的产品类别
var g_selectedCategoryIndex; //选中的产品类别的索引
var g_selectedProduct;  //选中的产品
var g_selectedProductIndex;  //选中的产品的索引

function CategoryOver(_evt, _num)
{
	getObj("adTd").style.display = "none";
	getObj("CategoryTd").style.display = "";

	var m_Td = _evt.parentNode;
	
	if (m_Td != g_selectedCategory)
	{
		if (typeof(g_selectedCategory) != "undefined")
		{
			g_selectedCategory.className = "CategoryOut";
		}
		m_Td.className =  _num > 3 ? "CategoryOverRight" : "CategoryOverLeft";
		g_selectedCategory = m_Td;
		g_selectedCategoryIndex = _num;
		
		//初始化第一个产品选中
		initCategory(g_selectedCategoryIndex);
		initProduct(g_selectedCategoryIndex, 0)
		ProductOver(getObj('pic0'), 0);
		
		//类别渐变程序
		g_categoryOpacity = 0;
		g_categoryMozpacity = 0.0;
		CategoryAction();
	}
}

function CategoryOut(_evt, _num)
{

}

function ProductOver(_evt, _num)
{
	var m_Td = _evt.parentNode;
	
	if (m_Td != g_selectedProduct)
	{
		if (typeof(g_selectedProduct) != "undefined")
		{
			g_selectedProduct.className = "ProductOut";
		}
		m_Td.className =  "ProductOver"
		g_selectedProduct = m_Td;
		g_selectedProductIndex = _num;
		
		//初始化产品信息
		initProduct(g_selectedCategoryIndex, _num);
		
		//产品渐变程序
		g_productPacity = 0;
		g_productMozpacity = 0.0;
		productAction();
	}
}
function ProductOut(_evt, _num)
{

}


//类别渐变
var g_categoryOpacity = 0;
var g_categoryMozpacity = 0.0;
function CategoryAction()
{
	g_categoryOpacity += g_step;
	g_categoryMozpacity += g_step/100;
	var m_Td = getObj("CategoryTd");
	if (ie)
	{
		m_Td.filters.alpha.opacity=g_categoryOpacity;
	}
	if (moz)
	{
		m_Td.style.MozOpacity=g_categoryMozpacity;
	}	

	if (g_categoryOpacity > 90)
	{
		return;
	}
	else
	{
		setTimeout("CategoryAction()", g_speed);
	}
}

//产品渐变
var g_productPacity = 0;
var g_productMozpacity = 0.0;
function productAction()
{
	g_productPacity += g_step;
	g_productMozpacity += g_step/100;
	var m_Td = getObj("productTd");
	if (ie)
	{
		m_Td.filters.alpha.opacity=g_productPacity;
	}
	if (moz)
	{
		m_Td.style.MozOpacity=g_productMozpacity;
	}	

	if (g_productPacity > 90)
	{
		return;
	}
	else
	{
		setTimeout("productAction()", g_speed);
	}
}


function initCategory(_num)
{
	try
	{
		var m_DB = getObj('categoryDB');
		if (m_DB)
		{
			getObj('lblClassName').innerHTML = m_DB.getElementsByTagName('TR')[_num].getElementsByTagName('TD')[0].innerHTML;
			getObj('ancMore').href = 'hot.php?rety_id=' + m_DB.getElementsByTagName('TR')[_num].getElementsByTagName('TD')[1].innerHTML;
		}
		
		m_DB = getObj('categoryDB' + _num);
		if(m_DB)
		{
			getObj('pic0').src = m_DB.getElementsByTagName('TR')[0].getElementsByTagName('TD')[1].innerHTML;
			getObj('pic1').src = m_DB.getElementsByTagName('TR')[1].getElementsByTagName('TD')[1].innerHTML;
			getObj('pic2').src = m_DB.getElementsByTagName('TR')[2].getElementsByTagName('TD')[1].innerHTML;
			getObj('pic3').src = m_DB.getElementsByTagName('TR')[3].getElementsByTagName('TD')[1].innerHTML;
			getObj('pic4').src = m_DB.getElementsByTagName('TR')[4].getElementsByTagName('TD')[1].innerHTML;
		}
		

	}
	catch(e){}
}

function initProduct(_categorynum, _productnum)
{
	try
	{
		var m_DB = getObj('categoryDB' + _categorynum).getElementsByTagName('TR')[_productnum];
		
		getObj("lblName").innerHTML = m_DB.getElementsByTagName('TD')[0].innerHTML;
		getObj("imgPic").src = '';
		getObj("imgPic").src = m_DB.getElementsByTagName('TD')[1].innerHTML;
		getObj("lblPrice").innerHTML = m_DB.getElementsByTagName('TD')[2].innerHTML;
		getObj("lblCount").innerHTML = m_DB.getElementsByTagName('TD')[3].innerHTML;
		getObj("lblCount2").innerHTML = m_DB.getElementsByTagName('TD')[4].innerHTML;
		getObj("lblDescript").innerHTML = m_DB.getElementsByTagName('TD')[5].innerHTML;
		getObj("ancProductName").href = m_DB.getElementsByTagName('TD')[6].innerHTML;
		getObj("ancProductPic").href = m_DB.getElementsByTagName('TD')[6].innerHTML;
		getObj("lblGO").innerHTML = m_DB.getElementsByTagName('TD')[7].innerHTML;
	}
	catch(e){}
}

function getObj(theId) 
{
    if (document.getElementById) 
	{
        theObj = document.getElementById(theId);
    } 
	else if (document.all) 
	{
        theObj = document.all[theId];
    }
    return theObj;
}



<!--
var loopTimer = null;
var girdWidth = 570;//单元格宽度
var mainWidth = 1140;//总宽度
var mainStep = 0;//主间隔
var timerStep = 1;//循环间隔
var scrollSpeed = 4;//滚动速度
var showWidth = 570;//显示宽度

//修正值
girdWidth = girdWidth / scrollSpeed;

function doMar(dir) {

	if(dir == "left"){
		mainStep = mainStep + 1;
		if (mainStep < ((mainWidth - showWidth) / scrollSpeed)) {
			if ((mainStep % girdWidth) == 0) {
				document.all("scrollDiv").style.pixelLeft -= scrollSpeed;
				clearInterval(loopTimer);
			}else{
				document.all("scrollDiv").style.pixelLeft -= scrollSpeed;
			}
			if (btnRight.disabled) btnRight.disabled = false;
		}else{
			clearInterval(loopTimer);
			btnLeft.disabled = true;
			document.all("scrollDiv").style.pixelLeft = 0 - (mainStep * scrollSpeed);
		}
	}
	if(dir=="right"){
		mainStep = mainStep - 1;
		if(mainStep > 0){
			if ((mainStep % girdWidth) == 0) {
				document.all("scrollDiv").style.pixelLeft += scrollSpeed;
				clearInterval(loopTimer);
			}else{
				document.all("scrollDiv").style.pixelLeft += scrollSpeed;
			}
			if (btnLeft.disabled) btnLeft.disabled = false;
		}else{
			clearInterval(loopTimer);
			btnRight.disabled = true;
			document.all("scrollDiv").style.pixelLeft = 0;
		}
	}
}

function RunMar(sDir) {
	clearInterval(loopTimer);
	loopTimer = setInterval("doMar('"+sDir+"')", timerStep);
}

// -->


<%@ page contentType="text/html;charset=utf-8"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%@ page import="com.ding9.util.UrlRewriteManager"%>
<%@ page import="com.ding9.util.ProjectEnvironment"%>
<%@ page import="com.ding9.util.Environment"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><logic:present name="Page_Title"><bean:write name="Page_Title" filter="false" /></logic:present></title>

<meta name="description" content=<logic:present name="Page_Desc">"<bean:write name="Page_Desc" filter="false"/>"</logic:present>/>
<meta name="keywords" content=<logic:present name="Page_Keywords">"<bean:write name="Page_Keywords" filter="false"/>"</logic:present>/>
<meta name='Author' content='guide.ding9.com'/>
<meta name='Copyright' content='guide.ding9.com,ding9.com'/>

<link href="cssindex/gy.css" rel="stylesheet" type="text/css" />
<link href="cssindex/indexfont.css" rel="stylesheet" type="text/css" />
<link href="cssindex/indexstyle.css" rel="stylesheet" type="text/css" />
<link href="cssindex/css.css" rel="stylesheet" type="text/css" />

<script language="javascript" src="jsindex/lanrentuku_com.js"
	type="text/javascript"></script>
<script language="javascript" src="jsindex/tabs2.js"
	type="text/javascript"></script>

</head>
<script language="javascript" for="document" event="onkeydown">
   if (event.keyCode == 13)
    {
	   searchSubmit('product');	
    }
</script>

<script>
var moz = (typeof document.implementation != 'undefined') 
&& (typeof document.implementation.createDocument != 'undefined');
var ie = (typeof window.ActiveXObject != 'undefined');

var g_speed = 50; // 渐变的频率
var g_step = 10; // 渐变的步长

var g_selectedCategory; // 选中的产品类别
var g_selectedCategoryIndex; // 选中的产品类别的索引
var g_selectedProduct;  // 选中的产品
var g_selectedProductIndex;  // 选中的产品的索引

function trim(str){
	return str.replace(/(^\s*)|(\s*$)/g, "");
}

function searchform_onsubmit(searchType){
	var search_domain="http://search.ding9.com";
	var searchkey = document.searchform.queryText.value;
	if(trim(searchkey)=='' || searchkey=='输入关键字进行搜索'){
		alert('请输入查询关键字');
		return false;
	}
	if(searchType=="product"){
		document.searchform.action=search_domain+"/dofindNew.jsp?";
	}else if (searchType=="merchant"){
		document.searchform.action=search_domain+"/dofindNew.jsp?type=merchant";
	}
	return true;
}
 
function searchSubmit(searchType){
	if (searchform_onsubmit(searchType)==true){
		document.searchform.submit();
	} else {
		return false;
	}	
}
</script>
<body>
<center><!--头部开始-->
<div id="top">您好,欢迎来顶九！&nbsp;&nbsp;[<a
	href="http://user.ding9.com" class="co333">请登录</a> ]&nbsp;[<a
	href="http://user.ding9.com/register/register.html" class="co333">用户注册</a>
]&nbsp;&nbsp; <a href="http://merchant.ding9.com/login.html"
	class=" co333">商家登录</a> &nbsp;/&nbsp;<a
	href="http://merchant.ding9.com/register.html" class="co333">注册</a>
&nbsp;&nbsp;<a href="http://guide.ding9.com/help.htm" class="co333">帮助</a></div>

<div id="topsearch">
<div id="topsearch_1"><a href="http://guide.ding9.com/"><img
	src="images/logo_160x64.gif" width="160" height="70" border="0" /></a> <br />
比较购物从顶九搜索开始</div>

<!--topsearch_1-->
<div id="topsearch_2">

<div id="search">
<form name="searchform" action="http://search.ding9.com/search.do"
 method="post" target="_blank" onsubmit="searchform_onsubmit('product')">
<div id="search_1">
<input name="queryText" type="text"	class="searchclass" size="36" />
</div>
</form>
<div id="search_2"><a href="#" onclick="searchSubmit('product');" class="cofff bold si14">顶九搜索</a></div>
</div>
<!--search-->
<span class="bold">热门搜索:</span> 
<a target='_blank' class='H1' href='http://search.ding9.com/mikbmnja-se/'><span class='H1'>手机</span></a> 
<a target='_blank' class='H1' href='http://search.ding9.com/nbhhohjo-se/'><span class='H1'>笑脸</span></a> 
<a target='_blank' class='H1' href='http://search.ding9.com/mgclkfaj-se/'><span class='H1'>情侣</span></a> 
<a target='_blank' class='H1' href='http://search.ding9.com/lkchnikcpnob-se/'><span class='H1'>品牌鞋</span></a> 
<a target='_blank' class='H1' href='http://search.ding9.com/MP3-se/'><span class='H1'>MP3</span></a> 
<a target='_blank' class='H1' href='http://search.ding9.com/lpiapmjjogfdngedmcjklmmo-se/'><span class='H1'>太阳能热水器</span></a> 
<a target='_blank' class='H1' href='http://search.ding9.com/pnepnikoljgl-se/'><span class='H1'>韩版包</span></a> 
<a target='_blank' class='H1' href='http://search.ding9.com/mlngnoghnmfomnja-se/'><span class='H1'>数码相机</span></a> 
<a target='_blank' class='H1' href='http://search.ding9.com/N91-se/'><span class='H1'>N91</span></a> 
&nbsp;&nbsp;
<a target='_blank' class='H1' href='http://guide.ding9.com/leibie.htm'>更多...</a> 
</div>

<!--topsearch_2-->
<div id="topsearch_3">
<a href="#" onclick="searchSubmit('merchant');" class="co333">商家搜索</a> 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="http://guide.ding9.com/help.htm" class="co333">搜索帮助</a></div>
<!--topsearch_3--></div>
<!--topsearch-->

<div id="topmenu">
<div id="topmenu_1"></div>
<div id="topmenu_2">
<div class="menu">
<ul>
	<li class="usebtn">首页</li>
	<li><a href="http://mobile.ding9.com" class="cofff">手机通信</a></li>
	<li><a href="http://digital.ding9.com" class="cofff">数码电子</a></li>
	<li><a href="http://computer.ding9.com" class="cofff">电脑网络</a></li>
	<li><a href="http://office.ding9.com" class="cofff">办公用品</a></li>
	<li><a href="http://hea.ding9.com" class="cofff">家用电器</a></li>
	<li><a href="http://beauty.ding9.com" class="cofff">美容美体</a></li>
	<li><a href="http://promotion.ding9.com/" class="cofff">促销折扣</a></li>
	<li><a href="http://clothing.ding9.com" class="cofff">服装服饰 </a></li>
	<li><a href="http://jingpin.ding9.com" class="cofff">精品饰品</a></li>

</ul>
</div>
<!--menu--></div>
<!--topmenu_2--></div>
<!--topmenu--> <!--头部结束--> <!--正文开始-->
<div id="ad">

<c:url value="${fn:replace(adv_66_603,'http://guide.ding9.com/click/adv-click.do?adad_id=747&adv_url=','')}"/>
 <!--<a href="#"><img src="imgindex/ad/001.jpg" border="0" /></a>--></div>
<div id="main1">
<div id="main1_1">
<div id="newpro">
<div class="title bold">新品速递</div>
<logic:present name="scroll0">
<c:url value="${fn:replace(fn:replace(scroll0,'/null-0/prod-3844693.htm','http://new.buy007.com/Lists/0910/Nanxie.html?PTAG=ADBD091108'),'/null-0/prod-3877933.htm','http://www.cosme-de.com/gb/product/product_page.html?pdid=1513')}"/>
<!--<bean:write name="scroll0" filter="false" />-->
</logic:present></div>
<!--newpro-->

<div id="info">
<div class="title bold">最新情报</div>
<ul>
	<c:choose>
		<c:when test="${!empty listShopping}">
			<c:forEach items="${listShopping}" var="shopping">
				<li><a id="nowrap" target="_blank"
					href="<%=Environment.getChannelPromotion()
								+ "/promotion-0/news/info-"%>
<c:out value="${shopping.info_id}/"/>"
					class="H1"><ding9:substr title="${shopping.title}" len="24" /></a>
				</li>
			</c:forEach>
		</c:when>
		<c:otherwise>暂无信息!</c:otherwise>
	</c:choose>
</ul>
</div>
</div>
<!--main1_1-->
<div id="main1_2">
<div class="rxtit si14 bold">热销排行</div>

<!--首页特效开始-->
<div id="c0201_l">
<script type="text/javascript"
	language="javascript">
function isIE(){ //ie?
	if (window.navigator.userAgent.toLowerCase().indexOf("msie")>=1)
	    return true;
	else
	    return false;
} 

var Category="";

function MoveOut(outObj){
	var m_Td = outObj.parentNode.parentNode;
	m_Td.className =  "CategoryOut";
}

function Fun_Movement(SEQ,overObj){
	if (!isIE()){
		Fun_MovementFireFox(SEQ,overObj);
		return;
	}
	
	Category = SEQ;
	var m_Td = overObj.parentNode.parentNode;
	if (m_Td != g_selectedCategory)	{
		if (typeof(g_selectedCategory) != "undefined"){
			g_selectedCategory.className = "CategoryOut";
		}
	}

	m_Td.className =  "CategoryOver";
	
	if (document.all.AdsTitle.style.display==""){
		document.all.AdsTitle.style.display="none";
		document.all.CategoryTitle.style.display="";
	}
	var RECOMMEND_PRODUCT_DIV="RECOMMEND_PRODUCT_"+SEQ;
	
	var RECOMMEND_PRODUCT = null;
	if(isIE())
		 RECOMMEND_PRODUCT = document.all(RECOMMEND_PRODUCT_DIV).innerText;
	else
		RECOMMEND_PRODUCT = document.all(RECOMMEND_PRODUCT_DIV).textContent;
	
	if (RECOMMEND_PRODUCT!=""){
		var RECOMMEND_PRODUCT_ARRAY=RECOMMEND_PRODUCT.split("[]");
		var IMG0=RECOMMEND_PRODUCT_ARRAY[0];
		if (IMG0!=""){
			var ARR0=IMG0.split("{}");
			document.all.pic0.src="<c:out value="${imageHost}"/>"+ARR0[7];
		}
		var IMG1=RECOMMEND_PRODUCT_ARRAY[1];
		if (IMG1!=""){
			var ARR1=IMG1.split("{}");
			document.all.pic1.src="<c:out value="${imageHost}"/>"+ARR1[7];
		}
		var IMG2=RECOMMEND_PRODUCT_ARRAY[2];
		if (IMG2!=""){
			var ARR2=IMG2.split("{}");
			document.all.pic2.src="<c:out value="${imageHost}"/>"+ARR2[7];
		}
		var IMG3=RECOMMEND_PRODUCT_ARRAY[3];
		if (IMG3!=""){
			var ARR3=IMG3.split("{}");
			document.all.pic3.src="<c:out value="${imageHost}"/>"+ARR3[7];
		}
		var IMG4=RECOMMEND_PRODUCT_ARRAY[4];
		if (IMG4!=""){
			var ARR4=IMG4.split("{}");
			document.all.pic4.src="<c:out value="${imageHost}"/>"+ARR4[7];
		}
	}
	document.all.CategoryName.innerHTML = document.all("SortNameDiv"+SEQ).innerHTML;
}

function Fun_MovementFireFox(SEQ,overObj){
	Category = SEQ;
	var m_Td = overObj.parentNode.parentNode;
	if (m_Td != g_selectedCategory)	{
		if (typeof(g_selectedCategory) != "undefined"){
			g_selectedCategory.className = "CategoryOut";
		}
	}
 
	m_Td.className =  "CategoryOver";
	if (document.getElementById("AdsTitle").style.display==""){
		document.getElementById("AdsTitle").style.display="none";
		document.getElementById("CategoryTitle").style.display="";
	}
	var RECOMMEND_PRODUCT_DIV="RECOMMEND_PRODUCT_"+SEQ;
	
	var RECOMMEND_PRODUCT = null;
	RECOMMEND_PRODUCT = document.getElementById(RECOMMEND_PRODUCT_DIV).textContent;
	
	if (RECOMMEND_PRODUCT!=""){
		var RECOMMEND_PRODUCT_ARRAY=RECOMMEND_PRODUCT.split("[]");
		var IMG0=RECOMMEND_PRODUCT_ARRAY[0];
		if (IMG0!=""){
			var ARR0=IMG0.split("{}");
			document.getElementById("pic0").src="http://img.ding9.com/"+ARR0[7];
		}
		var IMG1=RECOMMEND_PRODUCT_ARRAY[1];
		if (IMG1!=""){
			var ARR1=IMG1.split("{}");
			document.getElementById("pic1").src="http://img.ding9.com/"+ARR1[7];
		}
		var IMG2=RECOMMEND_PRODUCT_ARRAY[2];
		if (IMG2!=""){
			var ARR2=IMG2.split("{}");
			document.getElementById("pic2").src="http://img.ding9.com/"+ARR2[7];
		}
		var IMG3=RECOMMEND_PRODUCT_ARRAY[3];
		if (IMG3!=""){
			var ARR3=IMG3.split("{}");
			document.getElementById("pic3").src="http://img.ding9.com/"+ARR3[7];
		}
		var IMG4=RECOMMEND_PRODUCT_ARRAY[4];
		if (IMG4!=""){
			var ARR4=IMG4.split("{}");
			document.getElementById("pic4").src="http://img.ding9.com/"+ARR4[7];
		}
	}
	document.getElementById('CategoryName').innerHTML = document.getElementById("SortNameDiv"+SEQ).innerHTML;
}


function SmallProduct(SEQ){
	if (!isIE()){
		SmallProductFireFox(SEQ);
		return;
	}
	
	var RECOMMEND_PRODUCT_DIV="RECOMMEND_PRODUCT_"+Category;
	var RECOMMEND_PRODUCT = null;
	if(isIE())
		 RECOMMEND_PRODUCT = document.all(RECOMMEND_PRODUCT_DIV).innerText;
	else
		RECOMMEND_PRODUCT = document.all(RECOMMEND_PRODUCT_DIV).textContent;
		
	var comment=document.all(RECOMMEND_PRODUCT_DIV).innerHTML;
	if (RECOMMEND_PRODUCT!=""){
		var RECOMMEND_PRODUCT_ARRAY=RECOMMEND_PRODUCT.split("[]");
		var comment_arr=comment.split("[]");
		var IMG=RECOMMEND_PRODUCT_ARRAY[SEQ-1];
		var img2=comment_arr[SEQ-1];
		if (IMG!=""){
			var ARR=IMG.split("{}");
			var prso_id_one=ARR[4];
			var prma_name='<a target="_blank" class="STYLE12" href="'+ARR[11]+'">'+ARR[8]+'</a>';
			document.all.PrmaName.innerHTML=prma_name;
			document.all.ImgPic.innerHTML='<a target="_blank" href="'+ARR[11]+'"><IMG height=140 width=140 border=0 src="'+'<%=Environment.getImageDing9()%>'+ARR[7]+'"></a>';
			document.all.MerchantCount.innerHTML='<a target="_blank" class=H2 href="'+ARR[12]+'#remark">'+ARR[1]+'';
			document.all.MinPrice.innerHTML="￥"+ARR[6]+"起";
			document.all.PrmaRemark.innerHTML=ARR[9];
			var arr2=img2.split("{}");
			document.all.CommentOnProductCount.innerHTML=arr2[3];
			var temp = ARR[11];
			temp = temp.replace("-comment","");
			if (parseInt(ARR[1])>1){
				document.all.LblGo.innerHTML='<a target="_blank" class="rx003" href="'+temp+'"><img src="/images/ckxq.gif" border="0"/></a>';
			}else{
				document.all.LblGo.innerHTML='<a target="_blank" class="rx003" href="'+temp+'"><img src="/images/ckxq.gif" border="0"/></a>';
			}
		}
	}
	var picIndex = 'pic'+ (SEQ -1);
	var picTd = document.getElementById(picIndex).parentNode;
	picTd.className = "ProductOver";
	if (SEQ !=1){
		var picTd = document.getElementById('pic0').parentNode;
		picTd.className = "ProductOut";		
	}
}

function SmallProductFireFox(SEQ){
	var RECOMMEND_PRODUCT_DIV="RECOMMEND_PRODUCT_" + Category;
	var RECOMMEND_PRODUCT = null;
	RECOMMEND_PRODUCT = document.getElementById(RECOMMEND_PRODUCT_DIV).textContent;		
	var comment = document.getElementById(RECOMMEND_PRODUCT_DIV).textContent;
	
	if (RECOMMEND_PRODUCT!=""){
		var RECOMMEND_PRODUCT_ARRAY=RECOMMEND_PRODUCT.split("[]");
		var comment_arr=comment.split("[]");
		var IMG=RECOMMEND_PRODUCT_ARRAY[SEQ-1];
		var img2=comment_arr[SEQ-1];
		if (IMG!=""){
			var ARR=IMG.split("{}");
			var prso_id_one=ARR[4];
			var prma_name='<a target="_blank" class="STYLE12" href="'+ARR[11]+'">'+ARR[8]+'</a>';
			document.getElementById("PrmaName").innerHTML = prma_name;
			document.getElementById("ImgPic").innerHTML='<a target="_blank" href="'+ARR[11]+'"><IMG height=140 width=140 border=0 src="'+'http://img.ding9.com/'+ARR[7]+'"></a>';
			document.getElementById("MerchantCount").innerHTML='<a target="_blank" class=H2 href="'+ARR[12]+'#remark">'+ARR[1]+'';
			document.getElementById("MinPrice").innerHTML="￥"+ARR[6]+"起";
			document.getElementById("PrmaRemark").innerHTML=ARR[9];
			var arr2=img2.split("{}");
			document.getElementById("CommentOnProductCount").innerHTML = arr2[3];
			var temp = ARR[11];
			temp = temp.replace("-comment","");
			if (parseInt(ARR[1])>1){
				document.getElementById("LblGo").innerHTML='<a target="_blank" class="rx003" href="'+temp+'"><img src="/images/ckxq.gif" border="0"/></a>';
			}else{
				document.getElementById("LblGo").innerHTML='<a target="_blank" class="rx003" href="'+temp+'"><img src="/images/ckxq.gif" border="0"/></a>';
			}
		}
	}
	var picIndex = 'pic'+ (SEQ -1);
	var picTd = document.getElementById(picIndex).parentNode;
	picTd.className = "ProductOver";
	if (SEQ !=1){
		var picTd = document.getElementById('pic0').parentNode;
		picTd.className = "ProductOut";		
	}
}

function SmallProductOut(SEQ){
	var picIndex = 'pic'+ (SEQ -1);
	var picTd = document.getElementById(picIndex).parentNode;
	picTd.className = "ProductOut";
}
</script>
<TABLE cellSpacing="0" cellPadding="0" width="100%">
	<TBODY>
		<TR>
			<TD class="CategoryOut" vAlign="middle" align="center"><a
				target="_blank" href="<c:out value="${sortvo1.sort_url}"/>"> <img
				height="80" width="80" class="imgclass"
				ONMOUSEOVER="Fun_Movement('ONE',this);SmallProduct(1);"
				onMouseOut="MoveOut(this);" border="0"
				src="<c:out value="${imageHost}"/><c:out value="${sortvo1.sort_pic}"/>" /></a>
				<br/>
				<span class="rx003"><c:out value="${sortvo1.sort_name}" /></span>
			<div id="SortNameDivONE" style="display: none"><a
				target="_blank" class="H1cl"
				href="<c:out value="${sortvo1.sort_url}"/>"><c:out
				value="${sortvo1.sort_name}" /></a></div>
			</TD>
			<TD width="2" bgColor="#cccccc" rowSpan="7"></TD>
			<TD id="AdsTitle" align="middle" width="300" height="350" rowSpan="7"><logic:present
				name="adv_66_389">
				<bean:write name="adv_66_389" filter="false" />
			</logic:present></TD>
			<TD id="CategoryTitle"
				style="DISPLAY: none; FILTER: alpha(opacity =   100); moz-opacity: 1"
				vAlign="top" align="middle" width="300" rowSpan="7">
			<TABLE cellSpacing="0" cellPadding="0" width="100%" border="0">
				<TBODY>
					<TR>
						<TD width="300" height="350" valign="top" id="productTd"
							style="FILTER: alpha(opacity =   100); moz-opacity: 1">
						<TABLE cellSpacing="0" cellPadding="0" width="100%">
							<TBODY>
								<TR>
									<TD align="center" background="/images/center_bg003.gif"
										height="37"><SPAN class="rx001" id="CategoryName"></SPAN></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE cellSpacing="0" cellPadding="0" width="100%">
							<TBODY>
								<TR>
									<TD align="middle">
									<TABLE cellSpacing="0" cellPadding="0" width="60%">
										<TBODY>
											<TR>
												<TD bgColor="#cccccc" height="1"></TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
								</TR>
								<TR>
									<TD align="center" height="28"><SPAN class="rx002"
										id="PrmaName"></SPAN></TD>
								</TR>
							</TBODY>
						</TABLE>
						<TABLE cellSpacing="0" cellPadding="0" width="100%">
							<TBODY>
								<TR>
									<TD width="186" height="150" rowSpan="5" align="middle"
										valign="top"><SPAN id="ImgPic"></SPAN></TD>
									<TD width="148">&nbsp;</TD>
								</TR>
								<TR>
									<TD class="H1" align="left" height="22"><SPAN class="H2"
										id="MinPrice"></SPAN></TD>
								</TR>
								<TR>
									<TD class="rx003" align="left" height="22">来自<SPAN class="rx004"
										id="MerchantCount"></SPAN>个商家</TD>
								</TR>
								<TR>
									<TD class="rx003" align="left" height="22">商品评论（<SPAN
										class="H2" id="CommentOnProductCount"></SPAN>）</TD>
								</TR>
								<TR>
									<TD height="70" align="left"><SPAN id="LblGo"></SPAN>
									<br/></TD>
								</TR>
								<tr><td height="25">&nbsp;</td> </tr>
							</TBODY>
						</TABLE>
						<TABLE cellSpacing="0" cellPadding="0" width="100%">
							<TBODY>
								<TR>
									<TD class="H1" vAlign="top" align="right" width="23%"
										height="35">商品描述：</TD>
									<TD vAlign="top" align="left" width="77%"><SPAN class="H1"
										id="PrmaRemark"></SPAN>
										<br/>
										</TD>
								</TR>
								 <tr><td height="35">&nbsp;</td> </tr>
								
							</TBODY>
						</TABLE>
						<TABLE cellSpacing="0" cellPadding="0" width="100%">
							<TBODY>
								<TR>
									<TD height="99">
									<TABLE height="86" cellSpacing="0" cellPadding="0" width="100%">
										<TBODY>
											<TR>
												<TD background="/images/center009.jpg" height="80">
												<TABLE width="300" height="85" cellSpacing="0" cellPadding='0'>
													<TBODY>
														<TR>
															<TD height="71">&nbsp;</TD>
															<TD class="ProductOut" width="56" align="center" valign="middle"><IMG
																id="pic0" onMouseOver="SmallProduct(1)" onMouseOut="SmallProductOut(1)" height="50"
																width="50" border="0" /><BR />
															<SPAN class="H1c">No.1</SPAN></TD>
															<TD class="ProductOut" width="56" align="center" valign="middle"><IMG
																id="pic1" onMouseOver="SmallProduct(2)" onMouseOut="SmallProductOut(2)" height="50"
																width="50" border="0" /><BR />
															<SPAN class="H1c">No.2</SPAN></TD>
															<TD class="ProductOut" width="56" align="center" valign="middle"><IMG
																id="pic2" onMouseOver="SmallProduct(3)" onMouseOut="SmallProductOut(3)" height="50"
																width="50" border="0" /><BR />
															<SPAN class="H1c">No.3</SPAN></TD>
															<TD class="ProductOut" width="56" align="center" valign="middle"><IMG
																id="pic3" onMouseOver="SmallProduct(4)"  onMouseOut="SmallProductOut(4)" height="50"
																width="50" border="0" /><BR />
															<SPAN class="H1c">No.4</SPAN></TD>
															<TD class="ProductOut" width="56" align="center" valign="middle"><IMG
																id="pic4" onMouseOver="SmallProduct(5)" onMouseOut="SmallProductOut(5)" height="50"
																width="50" border="0" /><BR />
															<SPAN class="H1c">No.5</SPAN></TD>
															<TD>&nbsp;</TD>
														</TR>
													</TBODY>
												</TABLE>
												</TD>
											</TR>
										</TBODY>
									</TABLE>
									</TD>
								</TR>
							</TBODY>
						</TABLE>
						</TD>
					</TR>
				</TBODY>
			</TABLE>
			</TD>
			<TD width="2" bgColor="#cccccc" rowSpan="7"></TD>
			<TD class="CategoryOut" vAlign="middle" align="center"><a
				target="_blank" href="<c:out value="${sortvo2.sort_url}"/>"> <img
				height="80" width="80" class="imgclass"
				ONMOUSEOVER="Fun_Movement('TWO',this);SmallProduct(1);" onMouseOut="MoveOut(this);" border="0"
				src="<c:out value="${imageHost}"/><c:out value="${sortvo2.sort_pic}"/>" /></a>
				<br/><span class="rx003" ><c:out value="${sortvo2.sort_name}" /></span>
			<div id="SortNameDivTWO" style="display: none"><a
				target="_blank" class="H1cl"
				href="<c:out value="${sortvo2.sort_url}"/>"><c:out
				value="${sortvo2.sort_name}" /></a></div>
			</TD>
			<TD width="8" background="/images/center005.gif" rowSpan="7"></TD>
		</TR>
		<TR>
			<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
			<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
		</TR>
		<TR>
			<TD class="CategoryOut" vAlign="middle" align="center"><a
				target="_blank" href="<c:out value="${sortvo3.sort_url}"/>"> <img
				height="80" width="80" class="imgclass"
				ONMOUSEOVER="Fun_Movement('THREE',this);SmallProduct(1);" onMouseOut="MoveOut(this);" border="0"
				src="<c:out value="${imageHost}"/><c:out value="${sortvo3.sort_pic}"/>" /></a>
				<br/><span class="rx003"><c:out value="${sortvo3.sort_name}" /></span>
			<div id="SortNameDivTHREE" style="display: none"><a
				target="_blank" class="H1cl"
				href="<c:out value="${sortvo3.sort_url}"/>"><c:out
				value="${sortvo3.sort_name}" /></a></div>
			</TD>
			<TD class="CategoryOut" vAlign="middle" align="center"><logic:present
				name="sortvo4">
				<bean:define id="sort_url" name="sortvo4" property="sort_url"
					type="java.lang.String" />
				<bean:define id="sort_pic" name="sortvo4" property="sort_pic"
					type="java.lang.String" />
				<bean:define id="sort_name" name="sortvo4" property="sort_name"
					type="java.lang.String" />
			</logic:present> <a target="_blank" href="<c:out value="${sortvo4.sort_url}"/>">
			<img height="80" width="80"  class="imgclass"
				ONMOUSEOVER="Fun_Movement('FOUR',this);SmallProduct(1);" onMouseOut="MoveOut(this);" border="0"
				src="<c:out value="${imageHost}"/><c:out value="${sortvo4.sort_pic}"/>" /></a>
				<br/><span class="rx003"><c:out value="${sortvo4.sort_name}" /></span>
			<div id="SortNameDivFOUR" style="display: none"><a
				target="_blank" class="H1cl"
				href="<c:out value="${sortvo4.sort_url}"/>"><c:out
				value="${sortvo4.sort_name}" /></a></div>
			</TD>
		</TR>
		<TR>
			<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
			<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
		</TR>
		<TR>
			<TD class="CategoryOut" vAlign="middle" align="center"><a
				target="_blank" href="<c:out value="${sortvo5.sort_url}"/>"> <img
				height="80" width="80" class="imgclass"
				ONMOUSEOVER="Fun_Movement('FIVE',this);SmallProduct(1);"  onMouseOut="MoveOut(this);" border="0"
				src="<c:out value="${imageHost}"/><c:out value="${sortvo5.sort_pic}"/>" /></a>
				<br/><span class="rx003"><c:out value="${sortvo5.sort_name}" /></span>
			<div id="SortNameDivFIVE" style="display: none"><a
				target="_blank" class="H1cl"
				href="<c:out value="${sortvo5.sort_url}"/>"><c:out
				value="${sortvo5.sort_name}" /></a></div>
			</TD>
			<TD class="CategoryOut" vAlign="middle" align="center"><a
				target="_blank" href="<c:out value="${sortvo6.sort_url}"/>"> <img
				height="80" width="80" class="imgclass"
				ONMOUSEOVER="Fun_Movement('SIX',this);SmallProduct(1);"  onMouseOut="MoveOut(this);" border="0"
				src="<c:out value="${imageHost}"/><c:out value="${sortvo6.sort_pic}"/>" /></a>
				<br/><span class="rx003"><c:out value="${sortvo6.sort_name}" /></span>
			<div id="SortNameDivSIX" style="display: none"><a
				target="_blank" class="H1cl"
				href="<c:out value="${sortvo6.sort_url}"/>"><c:out
				value="${sortvo6.sort_name}" /></a></div>
			</TD>
		</TR>
		<TR>
			<TD valign="center" align="middle" bgColor="#cccccc"></TD>
			<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
		</TR>
		<TR>
			<TD class="CategoryOut" vAlign="middle" align="center"><a
				target="_blank" href="<c:out value="${sortvo7.sort_url}"/>"> <img
				height="80" width="80" class="imgclass"
				ONMOUSEOVER="Fun_Movement('SERVEN',this);SmallProduct(1);"
				border="0" onMouseOut="MoveOut(this);"
				src="<c:out value="${imageHost}"/><c:out value="${sortvo7.sort_pic}"/>" /></a>
				<br/><span class="rx003"><c:out value="${sortvo7.sort_name}" /></span>
			<div id="SortNameDivSERVEN" style="display: none"><a
				target="_blank" class="H1cl"
				href="<c:out value="${sortvo7.sort_url}"/>"><c:out
				value="${sortvo7.sort_name}" /></a></div>
			</TD>
			<TD class="CategoryOut" vAlign="middle" align="center"><a
				target="_blank" href="<c:out value="${sortvo8.sort_url}"/>"> <img
				height="80" width="80" class="imgclass"
				ONMOUSEOVER="Fun_Movement('EIGHT',this);SmallProduct(1);" onMouseOut="MoveOut(this);" border="0"
				src="<c:out value="${imageHost}"/><c:out value="${sortvo8.sort_pic}"/>" /></a>
				<br/><span class="rx003"><c:out value="${sortvo8.sort_name}" /></span>
			<div id="SortNameDivEIGHT" style="display: none"><a
				target="_blank" class="H1cl"
				href="<c:out value="${sortvo8.sort_url}"/>"><c:out
				value="${sortvo8.sort_name}" /></a></div>
			</TD>
		</TR>
	</TBODY>
</TABLE>
<logic:present name="str0">
	<bean:write name="str0" filter="false" />
</logic:present> <logic:present name="str1">
	<bean:write name="str1" filter="false" />
</logic:present> <logic:present name="str2">
	<bean:write name="str2" filter="false" />
</logic:present> <logic:present name="str3">
	<bean:write name="str3" filter="false" />
</logic:present> <logic:present name="str4">
	<bean:write name="str4" filter="false" />
</logic:present> <logic:present name="str5">
	<bean:write name="str5" filter="false" />
</logic:present> <logic:present name="str6">
	<bean:write name="str6" filter="false" />
</logic:present> <logic:present name="str7">
	<bean:write name="str7" filter="false" />
</logic:present></div>
<!--首页特效结束--></div>

<!--main1_2-->
<div id="main1_3">
<div id="enro">
<div id="enro_1"><a href="http://user.ding9.com/"
	class="cogreen si14 bold">用户登录</a></div>
<div id="enro_2"><a href="http://merchant.ding9.com/login.html"
	class="cogreen si14 bold">商家登录</a></div>
<div id="enro_3">共收集商家<br />
 	<logic:present name="merchantNum"><bean:write name="merchantNum" filter="false" /></logic:present>家</div>
<div id="enro_4">共收集商品<br />
	<logic:present name="productMasterNum"><bean:write name="productMasterNum" filter="false" /></logic:present>个</div>
</div>
<!--enro-->

<div id="news">
<div class="title bold">商讯速递</div>
<ul>
	<logic:present name="direList">
		<logic:iterate name="direList" id="vo" offset="0" indexId="seq">
			<li class="co333">[<bean:write name="vo" property="prsoName"
				filter="false" />] <bean:define id="article_id" name="vo"
				property="article_id" type="java.lang.Integer" /> <bean:define
				id="prsoId" name="vo" property="prsoId" type="java.lang.Integer" />
			<bean:define id="title" name="vo" property="title"
				type="java.lang.String" /> <bean:define id="prsoNameOneEn"
				name="vo" property="prsoNameOneEn" type="java.lang.String" /> <a
				target="_blank"
				href="<%=ProjectEnvironment.getChannelDomainName(String
									.valueOf(prsoId))
							+ response
									.encodeURL("/news/news-info.do?article_id="
											+ article_id + "&prso_id_one="
											+ prsoId + "&prso_name_one_en="
											+ prsoNameOneEn)%>"
				class="H1"> <ding9:substr title="<%=title%>" len="18" /></a></li>
		</logic:iterate>
	</logic:present>
</ul>
</div>
<div><logic:present name="adv_66_390">
<c:url value="${fn:replace(adv_66_390,'href','name=d91 id=d91 href')}"/>	
</logic:present></div>
</div>
<!--main1_3--></div>
<!--main1 第一行div结束-->

<div id="main2">
<div id="main2_1"><!--小九九导购开始--> <!--Start of the Tabmenu 2 -->
<div class="menu2">
<ul>
	<li><a href="#" onMouseOver="easytabs('2', '1');"
		onfocus="easytabs('2', '1');" onClick="return false;" title=""
		id="anotherlink1"><c:out value="${productGuide1.sort_name}" /></a></li>
	<li><a href="#" onMouseOver="easytabs('2', '2');"
		onfocus="easytabs('2', '2');" onClick="return false;" title=""
		id="anotherlink2"><c:out value="${productGuide2.sort_name}" /></a></li>
	<li><a href="#" onMouseOver="easytabs('2', '3');"
		onfocus="easytabs('2', '3');" onClick="return false;" title=""
		id="anotherlink3"><c:out value="${productGuide3.sort_name}" /></a></li>
	<li><a href="#" onMouseOver="easytabs('2', '4');"
		onfocus="easytabs('2', '4');" onClick="return false;" title=""
		id="anotherlink4"><c:out value="${productGuide4.sort_name}" /></a></li>
	<li><a href="#" onMouseOver="easytabs('2', '5');"
		onfocus="easytabs('2', '5');" onClick="return false;" title=""
		id="anotherlink5"><c:out value="${productGuide5.sort_name}" /></a></li>
</ul>
</div>
<!--End of the Tabmenu 2 --> <!--Start Tabcontent 1 -->
<div id="anothercontent1">
<div class="indexpro"><logic:present name="guideDiv1001">
	<bean:write name="guideDiv1001" filter="false" />
</logic:present>
<div class="protext"><a href="http://guide.ding9.com/holiday/ganenjie/ganenjie.jsp" 
		class="co333">感恩节——表达你最温馨的感恩</a></div>
</div>
<!--indexpro--></div>
<!--End Tabcontent 1--> <!--Start Tabcontent 2-->
<div id="anothercontent2">
<div class="indexpro"><logic:present name="guideDiv1002">
	<bean:write name="guideDiv1002" filter="false" />
</logic:present>
<div class="protext"><a href="http://guide.ding9.com/null-0/prod-2206956.htm" 
	class="co333">手织妩媚蜘蛛衫——打造秋季的甜美 </a></div>
</div>
<!--indexpro--></div>
<!--End Tabcontent 2 --> <!--Start Tabcontent 3-->
<div id="anothercontent3">
<div class="indexpro"><logic:present name="guideDiv1003">
	<bean:write name="guideDiv1003" filter="false" />
</logic:present>
<div class="protext"><a href="http://guide.ding9.com/null-0/prod-2260050.htm" class="co333">
		打造真正的异域风情——西西里魅惑限量彩妆</a></div>
</div>
<!--indexpro--></div>
<!--End Tabcontent 3--> <!--Start Tabcontent 4-->
<div id="anothercontent4">
<div class="indexpro"><logic:present name="guideDiv1004">
	<bean:write name="guideDiv1004" filter="false" />
</logic:present>
<div class="protext"><a href="http://guide.ding9.com/null-0/prod-3820462.htm" 
	class="co333">瘦身任我行——神奇26天就变瘦 </a></div>
</div>
<!--indexpro--></div>
<!--End Tabcontent 4--> <!--Start Tabcontent 5-->
<div id="anothercontent5">
<div class="indexpro"><logic:present name="guideDiv1005">
	<bean:write name="guideDiv1005" filter="false" />
</logic:present>
<div class="protext"><a href="http://guide.ding9.com/null-13/prod-3710553- ppara.htm#remark" 
	class="co333">轻盈舒适——超级耐磨防水运动凉鞋</a></div>
</div>
<!--indexopro--></div>
<!--End Tabcontent 5--> <!--小九九导购结束--> <!--商家导航开始-->
<a name="d9" id="d9"></a>
<div id="merc">
<div id="merc_1"><a href="#" class="cofff bold"> <br />
商<br />
家<br />
导<br />
航</a></div>
<div id="merc_2"><!--Start of the Tabmenu3 -->
<div class="menu3">
<ul>
	<li><a href="#" onMouseOver="easytabs('1', '1');"
		onfocus="easytabs('1', '1');" onClick="return false;" title=""
		id="linkthree1">精品饰品</a></li>
	<li><a href="#" onMouseOver="easytabs('1', '2');"
		onfocus="easytabs('1', '2');" onClick="return false;" title=""
		id="linkthree2">家用电器</a></li>
	<li><a href="#" onMouseOver="easytabs('1', '3');"
		onfocus="easytabs('1', '3');" onClick="return false;" title=""
		id="linkthree3">手机通讯</a></li>
	<li><a href="#" onMouseOver="easytabs('1', '4');"
		onfocus="easytabs('1', '4');" onClick="return false;" title=""
		id="linkthree4">数码电子</a></li>
	<li><a href="#" onMouseOver="easytabs('1', '5');"
		onfocus="easytabs('1', '5');" onClick="return false;" title=""
		id="linkthree5">美容美体</a></li>
</ul>
</div>
<!--End of the Tabmenu3 --> <!--Start Tabcontent 1 -->
<div id="contentthree1">
<div class="merctext">
<ul>
	<bean:write name="loveVO" property="content" filter="false" />
</ul>
</div>

</div>
<!--End Tabcontent 1--> <!--Start Tabcontent 2-->
<div id="contentthree2">
<div class="merctext">
<ul>
	<bean:write name="heaVO" property="content" filter="false" />
</ul>
</div>

</div>
<!--End Tabcontent 2 --> <!--Start Tabcontent 3-->
<div id="contentthree3">
<div class="merctext">
<ul>
	<bean:write name="mobileVO" property="content" filter="false" />
</ul>
</div>

</div>
<!--End Tabcontent 3--> <!--Start Tabcontent 4-->
<div id="contentthree4">
<div class="merctext">
<ul>
	<bean:write name="digitalVO" property="content" filter="false" />
</ul>
</div>

</div>
<!--End Tabcontent 4 --> <!--Start Tabcontent 5-->
<div id="contentthree5">
<div class="merctext">
<ul>
	<bean:write name="beautiVO" property="content" filter="false" />
</ul>
</div>

</div>
<!--End Tabcontent 5--></div>
</div>
<!--商家导航结束-->

<div id="main3">
<div id="main3_1">
<div class="title3 bold si14 coblue">本周最惠商品推荐 <img
	src="images/hui.jpg" width="17" height="20" /></div>
<!-- 第一个商品 -->
<div id="sapro_1">
<c:url value="${fn:replace(minPriceProduct0,'/null-0/prod-2067764.htm','http://new.buy007.com/Lists/0910/Nanxie.html?PTAG=ADBD091108')}"/>
<!--<bean:write name="minPriceProduct0"	filter="false" />-->

</div>

<!-- 2-4产品 -->
<div id="sapro_2">
<div class="huipro">
<ul>
	<li><bean:write name="minPriceProduct1" filter="false" /></li>
	<li><bean:write name="minPriceProduct2" filter="false" /></li>
	<li><bean:write name="minPriceProduct3" filter="false" /></li>
	<li><bean:write name="minPriceProduct4" filter="false" /></li>
</ul>
</div>
</div>
<!--sapro_2--></div>

<!--main3_1-->
<div id="main3_2">
<div class="title4 bold si14 cored">本周最HOT商家</div>
<div id="hotme_1"><logic:present name="adv_66_599">
	<bean:write name="adv_66_599" filter="false" />
</logic:present></div>
<div id="hotme_2"><logic:present name="adv_66_600">
	<bean:write name="adv_66_600" filter="false" />
</logic:present> 

<div class="huipro">
<ul>
	<li><br/><logic:present name="adv_66_601">
		<bean:write name="adv_66_601" filter="false" />
	</logic:present></li>
	<li><br/><logic:present name="adv_66_602">
		<bean:write name="adv_66_602" filter="false" />
	</logic:present></li>
</ul>
</div>
</div>
</div>
<!--main3_1--></div>
<!--main3--> <logic:present name="adv_66_604">
<bean:write name="adv_66_604" filter="false" />
</logic:present>
<div class="navK">
<div class="nav_out" onMouseOver="this.className='nav_over'"
	onmouseout="this.className='nav_out'">
 
<div id="nav1">
<div id="nav1_1">精 英 数 码</div>
<div id="nav_2">
<span class="bold si14">
<a href="http://mobile.ding9.com"	class="coblue">手机通讯</a>   
</span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/MobilePhone-31/>
	<font color="#ff0000">手机</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/Battery-45/>手机电池</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/CordedPhones-63/>普通电话</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/CordlessPhones-64/>子母电话</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/WalkieTalkie-75/>对讲机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/PhoneHeadsets-2144/>手机耳机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/Phoneauxiliary-2157/>手机附件</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/PhoneAccessories-2180/>手机配件</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/PDAPhones-2206/>PDA手机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Mobile-6/category/grouptelephone-2245/>集团电话</a>
</div>
 
<div id="nav_2">
<span class="bold si14">
<a href="http://digital.ding9.com/"	class="coblue">数码电子 </a></span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Digital-1/category/MonitoringSystem-2200/>监控系统</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Digital-1/category/DigitalCameras-122/>数码相机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Digital-1/category/Camcorders-128/>数码摄像机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Digital-1/category/CameraLens-133/>数码摄像头</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Digital-1/category/MP3Players-154/>MP3随身听</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Digital-1/category/MP4Players-157/>MP4随身听</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Digital-1/category/Headphones-169/>耳机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Digital-1/category/VoiceRecorders-172/>数码录音笔</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Digital-1/category/PocketPC-239/>
	<font color="#ff0000">掌上电脑</font></a>
</div>
 
<div id="nav_2">
<span class="bold si14">
<a href="http://computer.ding9.com/"	class="coblue">电脑网络</a></span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/Notebook-423/>笔记本电脑</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/NotebookAccessories-426/>笔记本配件</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/Notebookperipheral-429/>笔记本周边</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/CPU-436/>CPU</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/Motherboard-443/>
	<font color="#ff0000">主板</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/GraphicsCards-445/>显卡</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/CDandDVDDrive-454/>CD/DVD光驱</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/HardDisk-458/>硬盘</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/Memory-462/>内存</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Computer-7/category/CRTMonitors-466/>CRT显示器</a>
</div>
 
<div id="nav_2">
<span class="bold si14">
<a href="http://office.ding9.com/"	class="coblue">办公用品</a>
</span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Office-15/category/FaxMachines-600/>传真机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Office-15/category/InkjetPrinters-563/>喷墨打印机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Office-15/category/LaserPrinters-567/>
	<font color="#ff0000">激光打印机</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Office-15/category/InkjetSupplies-588/>喷墨耗材</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Office-15/category/LaserSupplies-592/>激打耗材</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Office-15/category/MatrixSupplies-594/>针打耗材</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Office-15/category/OtherSupplies-597/>其他耗材</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Office-15/category/Scanner-603/>扫描仪</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Office-15/category/Copier-604/>复印机</a>
			
</div>
 
<div id="nav_2"><span class="bold si14">
<a href="http://hea.ding9.com/" class="coblue">家用电器</a></span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Hea-12/category/Television-740/>
	<font color="#ff0000">电视机</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Hea-12/category/washingmachine-744/>洗衣机/干衣机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Hea-12/category/Refrigerator-747/>冰箱/冷柜</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Hea-12/category/AirConditioning-750/>空调</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Hea-12/category/VacuumCleaners-753/>吸尘器/扫地机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Hea-12/category/AirPurifiers-755/>空气净化/氧吧</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Hea-12/category/Irons-757/>熨斗/蒸汽刷</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Hea-12/category/fanner-758/>电风扇</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Hea-12/category/HomeTheaterSystems-766/>家庭影院</a>
</div>
 
<div id="nav_2"><span class="bold si14">
<a href="http://search.ding9.com/mcndofmm-se/" class="coblue">汽车</a></span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Car-2/category/Car-1659/>
	<font color="#ff0000">轿车类</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Car-2/category/CarKeyRing-1679/>钥匙扣</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Car-2/category/SeatCushions-1714/>坐垫/凉垫</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Car-2/category/CarInteriorDecoration-1726/>车内装饰</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Car-2/category/Carouteriordecoration-1727/>车外装饰</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Car-2/category/CarPerfume-1729/>车用香水</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Car-2/category/CarDetailingSupplies-1732/>汽车清洁护理用品</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Car-2/category/paintingpen-1736/>补漆笔</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Car-2/category/VehicleModel-1770/>汽车模型</a>
 </div>
 
</div>
</div>
 
<div class="nav_out" onMouseOver="this.className='nav_over'"
	onmouseout="this.className='nav_out'">
<div id="nav2">
<div id="nav2_1">白 领 时 尚</div>
<div id="nav_3">
  <p><span class="bold si14"><a href="http://beauty.ding9.com/" class="coblue">美容美体</a></span>
      <br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/RemoveMakeup-25/>卸妆</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/FaceCleaningProducts-26/>洁面</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/MakeupWater-27/>化妆水</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/Spray-30/>喷雾</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/distillate-33/>精华</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/Emulsion-35/>乳液/面霜</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/Exfoliation-36/>磨砂/去角质</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/Mask-38/>
	<font color="#ff0000">面膜</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/Sunscreen-39/>防晒霜</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/IsolationCream-42/>隔离霜</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/AcneTreatment-44/>粉刺/抗痘</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/GiftBoxes-50/>礼盒套件</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/Others-60/>其它面部护理产品</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/EyeCream-69/>眼霜</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Beauty-8/category/EyeMasks-76/>眼膜</a>

</div>
 
<div id="nav_3">
  <p><span class="bold si14"><a href="http://jingpin.ding9.com/index.htm"
	class="coblue">精品饰品</a></span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/Pearl-794/>珍珠</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/Kufaglass-861/>古法琉璃</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/KoreanStyle-874/>韩风</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/Others-876/>其它风格/品牌饰品</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/FashionEarrings-886/>时尚耳环</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/Packing-907/>包装</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/Casio-921/>Casio/卡西欧</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/Citizen-922/>Citizen/西铁城</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/Longines-924/>Longines/浪琴</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/Omega-927/>
	<font color="#ff0000">Omega/欧米茄</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Jewelry-9/category/Seiko-938/>Seiko/精工</a>

</div>
 
<div id="nav_3"><span class="bold si14">
<a href="http://clothing.ding9.com/index.htm" class="coblue">服装服饰</a></span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/LongSleevedSweater-827/>女长袖毛衣</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/ShortSleevedSweaters-845/>女短袖针织衫</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/OtherSweaters-851/>女其它针织衫</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/FemaleJeans-888/>女牛仔裤</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/Bra-931/>文胸</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/WrapChest-937/>裹胸/抹胸</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/bellyband-939/>女士肚兜</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/Underwear-940/>内裤</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/underskirt-942/>内衣套装</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/BodyShaperUnderwear-944/>塑身内衣</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/ThermalUnderwear-946/>保暖内衣</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/PajamasandBathrobe-948/>睡衣/浴衣</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/FunUnderwear-950/>情趣内衣</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/HomeClothing-952/>家居服</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/Stockings-954/>丝袜</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/Vest-974/>
	<font color="#ff0000">马甲</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Clothing-5/category/SmallSuit-985/>小西装</a>
 
 </div>
 
 <div id="nav_3">
   <p><span class="bold si14">
     <a href="http://search.ding9.com/kfljogbinliolkch-se/" class="coblue">体育用品</a></span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/CampaignTrousers-1536/>运动长裤</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/LongSleevedT-Shirt-1538/>长袖上衣</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/SportT-shirt-1539/>运动T恤</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/OutdoorClothing-1540/>户外服装</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/YogaClothing-1542/>瑜伽服</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/FootballShoes-1544/>
	<font color="#ff0000">足球鞋</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/BasketballShoes-1545/>篮球鞋</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/BasketballShoes-1546/>网球鞋</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/SportSandals-1548/>运动凉鞋</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/JoggingShoes-1549/>休闲慢跑鞋</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/Climbingshoes-1550/>登山鞋</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/TableTennis-1552/>乒乓球</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/Badminton-1553/>羽毛球</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/Tennis-1554/>网球</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/Basketball-1558/>篮球</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/Treadmills-1564/>跑步机</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/FitnessCar-1565/>健身车</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/Yoga-1568/>瑜伽</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Sports-13/category/LeisureSportsBag-1595/>休闲运动包</a>
 </div>

<div id="nav_3"><span class="bold si14">
<a href="http://search.ding9.com/okillhnbkfddlgml-se/" class="coblue">营养保健</a></span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/GrapeSeed-1017/>葡萄籽/银杏精</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/VitaminE-1033/>
<font color="#ff0000">维生素E</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/SheepPlacenta-1035/>羊胎素</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/RaiseImmunity-1046/>提高免疫力</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/BrainHealth-1052/>补脑健忆类</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/CardiovascularHealth-1060/>心血管保健</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/EyeCare-1064/>护眼明目类</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/LiverHealth-1072/>养肝护肝类</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/ProtectSkin-1123/>养颜滋补类</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/BodyCare-1125/>美体瘦身</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/FemaleSexualHeal-1134/>女性性保健</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/AminoAcidNutrition-1153/>营养氨基酸</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/Minerals-1160/>各类矿物质</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/Vitamin-1162/>各类维他命</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Health-17/category/CaSeries-1166/>补钙系列</a>

</div>

<div id="nav_3"><span class="bold si14">
<a href="http://search.ding9.com/kemm-se/" class="coblue">书</a></span><br />
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Military-301006/>军事</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Biography-302003/>传记</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Animation-302005/>
	<font color="#ff0000">动漫</font></a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Literature-302009/>文学</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Art-302010/>艺术</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Location-302011/>摄影</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Family-303005/>家庭</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Health-303006/>健康</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Health-303009/>保健</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Philosophy-304001/>哲学</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/SocialScience-304004/>社科</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Political-304005/>政治</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Legal-304007/>法律</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/SocialScience-304009/>社会科学</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Success-305005/>成功</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/FairyTale-306004/>童话</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Englishreading-307021/>英语阅读</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Otherlanguages-307035/>其他语种</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Generalindustrial-308015/>一般工业技术</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/TV-313020/>电视</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/GeneralScience-314001/>自然科学总论</a>
<a class='navlink' target='_blank' href=http://guide.ding9.com/Books-3/category/Mechanics-314010/>力学</a>

</div>

</div>
</div>
 
</div>
<!--navK--></div>

<!--main2_1-->
<div id="main2_2"><!-- 商品排行榜 开始-->
<div class="hotShop sort1 block yspace" id="DivShopPaiHang_Food">
<div class="title2 bold">本周热门搜索商品</div>
<div class="txt" id="DivShopPaiHang_Flag1_Content" style="DISPLAY: none"></div>
<div class="txt" id="DivShopPaiHang_Flag2_Content" style="DISPLAY: none"></div>
<div class="txt" id="DivShopPaiHang_Flag3_Content" style="DISPLAY: none"></div>
<div class="txt" id="DivShopPaiHang_ShowPanel" style="HEIGHT: 280px">

<div class="txt11">
<ul>
	<bean:write name="evaStr" filter="false" />
</ul>
</div>
</div>
</div>


<SCRIPT type="text/javascript">
	if(9>=1){
	SwapPaiHangShopDiv('DivShopPaiHangFlag1','1');
}
 </SCRIPT> <!--  商品排行榜 结束 --> <!-- 广告 --> <logic:present name="adv_66_392">
	<bean:write name="adv_66_392" filter="false" />
</logic:present>

<div class="commK">
<div class="title2 bold">用户评论</div>
<logic:present name="CommentsOnProductByHomePage">
	<logic:iterate name="CommentsOnProductByHomePage"
		id="IdCommentsOnProductByHomePage" offset="0" indexId="seq">
		<div id="commC"><bean:define id="prso_id"
			name="IdCommentsOnProductByHomePage" property="prso_id"
			type="java.lang.Integer" /> <bean:define id="prma_id"
			name="IdCommentsOnProductByHomePage" property="prma_id"
			type="java.lang.Integer" /> <logic:present
			name="CommentsOnProductByHomePage" property="prso_name_one_en">
			<bean:define id="prso_name_one_en"
				name="IdCommentsOnProductByHomePage" property="prso_name_one_en"
				type="String" />
		</logic:present> <logic:notPresent name="CommentsOnProductByHomePage"
			property="prso_name_one_en">
			<bean:define id="prso_name_one_en" value="default" type="String" />
		</logic:notPresent>
		<div id="commC_1"><a target="_blank"
			href="<c:url value="/product/product-info.do?prma_id=${IdCommentsOnProductByHomePage.prma_id}&prso_id_one=${IdCommentsOnProductByHomePage.prso_id_one}&prso_name_one_en=${prso_name_one_en}&type=comment"/>#viewc"><logic:empty
			name="IdCommentsOnProductByHomePage" property="picture">
			<img src="<%=Environment.getTempProductPicture()%>"
				alt="<bean:write name='IdCommentsOnProductByHomePage' property='prma_name' filter='false'/>"
				width="50" height="50" border="0" />
		</logic:empty><logic:notEmpty name="IdCommentsOnProductByHomePage"
			property="picture">
			<img
				src="<c:out value="${imageHost}"/><bean:write name="IdCommentsOnProductByHomePage" property="picture" filter="false"/>"
				alt="<bean:write name='IdCommentsOnProductByHomePage' property='prma_name' filter='false'/>"
				width="50" height="50" border="0" />
		</logic:notEmpty></a></div>
		<div id="commC_2"><a target="_blank" class="H1c"
			href="<c:url value="/product/product-info.do?prma_id=${IdCommentsOnProductByHomePage.prma_id}&prso_id_one=${IdCommentsOnProductByHomePage.prso_id_one}&prso_name_one_en=${prso_name_one_en}&type=comment"/>#viewc"
			title="${IdCommentsOnProductByHomePage.prma_name}"><ding9:substr
			title="${IdCommentsOnProductByHomePage.prma_name}" len="15" /></a><br />
		<a target="_blank"
			href="<c:url value="/product/product-info.do?prma_id=${IdCommentsOnProductByHomePage.prma_id}&prso_id_one=${IdCommentsOnProductByHomePage.prso_id_one}&prso_name_one_en=${prso_name_one_en}&type=comment"/>#viewc"
			class="H1"> <bean:write name="IdCommentsOnProductByHomePage"
			property="brief" filter="true" /></a></div>
		</div>
	</logic:iterate>
</logic:present> <!--commC--></div>
<!--commK-->

<div id="d9news">
<div class="title bold">聚焦顶九</div>
<ul>
	<c:forEach items="${SYSNEWS}" var="IDSYSNEWS" varStatus="status">
		<li><a target="_blank"
			href="<c:url value="/comment.do?syne_id=${IDSYSNEWS.syne_id}"/>"
			class="H1"> <ding9:substr title="${IDSYSNEWS.syne_title}"
			len="24" /></a></li>
	</c:forEach>
</ul>

</div>


</div>
<!--main2_2--></div>
<!--main2-->

<div id="coll">
<div id="coll_1">友情链接 --</div>
<div id="coll_2">
	<a href="http://www.avonshop.cn/" target='_blank' class="navlink">雅芳</a>
	<a href="http://www.buy007.com/" target='_blank' class="navlink">正品</a>
	<a href="http://www.ccnf.com/" target='_blank' class="navlink">中国展览交易网</a> <a
	href="http://www.128uu.com/" target='_blank' class="navlink">酒店预订</a> <a
	href="http://www.zglysp.com/" target='_blank'  class="navlink">网上购物</a> <a
	href="http://www.tlx.com.cn/" target='_blank' class="navlink">天路行购物吧</a> 
	 <a	href="http://hotel.mapbar.com/" target='_blank' class="navlink">mapbar酒店地图</a> <a
	href="http://www.onlylove.hk/"  target='_blank' class="navlink">惟有爱情感礼品</a> <a
	href="http://www.epclean.com/" target='_blank' class="navlink">环保清洗网</a> <br />
	<a href="http://www.1m1m.com/" target='_blank' class="navlink">1m1m健康网 </a> 
	<a href="http://www.yide.com/" target='_blank' class="navlink">亦得代购 </a>  
	<a href="http://www.92dp.com/ " target='_blank' class="navlink">就爱点评网 </a>  
	<a href="http://www.suobao8.com/ " target='_blank' class="navlink">玩具商城 </a>  
	<a href="http://www.59165.com/ " target='_blank' class="navlink">发表论文 </a>  
</div>
</div>

<!--正文结束--> <!--底部开始-->
<div class="bold" id="bottom1"><a
	href="http://guide.ding9.com/aboutus.htm" target='_blank' class="co333">关于我们</a> | <a
	href="http://guide.ding9.com/help.htm" target='_blank' class="co333">使用帮助</a> | <a
	href="http://guide.ding9.com/service.htm" target='_blank' class="co333">服务条款</a> | <a
	href="http://guide.ding9.com/technique.htm" target='_blank' class="co333">招贤纳士</a> | <a
	href="http://guide.ding9.com/contact.htm" target='_blank' class="co333">联系我们</a> | <a
	href="http://guide.ding9.com/merchant.htm" target='_blank' class="co333">商家加盟</a> | <a
	href="http://guide.ding9.com/comethod.htm" target='_blank' class="co333">网站合作</a> | <a
	href="http://guide.ding9.com/search.htm" target='_blank' class="co333">搜索竞价</a> |
<a href="http://eshop.ding9.com" target="_blank" class="co333">顶九商城</a> | 
	<a href="http://guide.ding9.com/sitemap.htm" target="_blank" class="co333">网站地图</a> </div>

<div id="bottom2">
<div id="bottom2_1"></div>
<div id="bottom2_2">顶九网是购物搜索引擎，从互联网搜索商家、商品、资讯、促销等信息，为用户提供全方位导购服务，所有信息以来源网站为准。<BR/>
Copyright &copy; 2005-2010 版权所有 <a href="http://guide.ding9.com/"
	class="coblue">Ding9.com</a> <a href="http://www.miibeian.gov.cn/"
	target="_blank" class="co333">粤ICP备06067490号</a></div>

<div id="bottom2_3"><a
	href="http://www.gzjd.gov.cn/newgzjd/baojing/110.jsp?catid=318"
	target="_blank"><img src="images/jing.gif" width="40" height="53"
	border="0"/></a></div>
</div>


<!--底部结束--></center>
</body>
</html>
<script language="javascript" src="http://count47.51yes.com/click.aspx?id=476604651&logo=1"></script>
<script language='javascript' src="http://cn.tag.btnibbler.com/btnibbler_tagcn.js"></script>

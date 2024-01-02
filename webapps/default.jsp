<%@ page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<%--@ taglib uri="http://java.sun.com/jstl/core" prefix="c" --%>
<%@ page import="com.ding9.util.UrlRewriteManager"%>
<%@ page import="com.ding9.util.ProjectEnvironment"%>
<%@ page import="com.ding9.util.Environment"%>
<%--@ page import="java.util.Random"--%>
<%--@ page import="java.util.Vector"--%>
<%@ include file="/include/topIndex.jsp"%>
<link href="/css/font.css" rel="stylesheet" type="text/css"/>
<link href="/css/css.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/js/comment.js"></script>
<script type="text/javascript" src="/js/domove.js"></script>

<%-- 2014-08-29 取消
<!-- 2014-08-27 增加 -->
<script language="javascript" src="jsindex/lanrentuku_com.js"
	type="text/javascript"></script>
<script language="javascript" src="jsindex/tabs2.js"
	type="text/javascript"></script>
<link href="cssindex/indexstyle.css" rel="stylesheet" type="text/css" />
--%>

<style type="text/css">
html{ filter:progid:DXImageTransform.Microsoft.BasicImage(grayscale=1); }

a{TEXT-DECORATION:none;}
.menu {
display:block;
position:absolute;
left: 870px;
}
.menu a.outer, .menu a.outer:visited {
color:#666666;
width:68px;
height:22px;
display:block;
margin-right:1px;
text-align:center;
float:right;
text-decoration:none;
font-size:12px;
overflow:hidden;
}
.menu a.outer:hover {
overflow:visible;
}
.menu a.outer:hover table.first {
display:block;
border-collapse:collapse;
background-color: #F9F9F9;
}
.menu a.inner, .menu a.inner:visited {
display:block;
width:80px;
height:22px;
text-decoration:none;
color:#666666;
font-size:12px;
text-align:left;
border-bottom-width: 1px;
border-bottom-style: dashed;
border-bottom-color: #999999;
padding-top: 6px;
padding-left: 8px;
}
.menu a.inner:hover {
background-color: #E7F4FA;
}
.STYLE12 {color: #336600;
font-weight: bold;
font-size: 12px;
}
.menu a.outer table.first a.second {
height:22px;
line-height:18px;
overflow:hidden;
font-weight:bold;
}
.menu a.outer table.first a.second:hover {
position:relative;
overflow:visible;
}
/*width:725px; 2014-08-29 取消
#anothercontent1,#anothercontent2, #anothercontent3, #anothercontent4,#anothercontent5{
	width:725px;
	text-align:center;
	font-size:12px;
	margin-bottom:0px;
	height: 280px;
	padding-top: 0px;
	padding-right: 0px;
	padding-bottom: 6px;
	padding-left: 0px;
}*/
/*2014-08-28 * /
.indexpro{
	float:left;
	width:100%;
	height:270px;
	padding-left: 3px;
	margin: 0px;
	border: 2px solid #ACCB7F;
}
.indexpro ul{
	margin:0px;
	padding:0px;
	height: 242px;
}
.indexpro li{
	list-style-type:none;
	padding:0px;
	float:left;
	width:131px;
	margin-top: 5px;
	margin-right: 5px;
	margin-bottom: 5px;
	margin-left: 5px;
	text-align: center;
	height: 85px;
}*/
</style>
<script type="text/javascript">
var glbRowNo = 1;
function callServer(action){
var rowNo = 1;
if (action == "pre") {
rowNo = glbRowNo - 1;
if(rowNo < 1) {
rowNo = 6;
}
}
if (action == "next") {
rowNo = glbRowNo + 1;
if(rowNo > 6) {
rowNo = 1;
}
}
document.getElementById("block"+ glbRowNo).style.display = "none";
document.getElementById("block"+rowNo).style.display = "";
glbRowNo = rowNo;
}
</script>
<center>
<%--
<body>
Integer[] sort = { new Integer(55), new Integer(56), new Integer(57), new Integer(58), new Integer(59), new Integer(60), new Integer(61), new Integer(62) };
Integer[] sortScroll = { new Integer(63), new Integer(64), new Integer(65), new Integer(66), new Integer(67), new Integer(68) };
request.setAttribute("sortScroll", sortScroll);
request.setAttribute("sort", sort);
--%>
<%--
<div>
<p style="width:890px;"><font color="red" size="3">本网站现正受到恶意攻击，运维人员正在紧急修复，造成您访问不便，请见谅。计划今晚10点（2007-12-4）关闭服务器，下线时间在15分钟左右。</font></p>
</div>
 --%>
 <%--  
<logic:present name="adv_66_388">
<bean:write name="adv_66_388" filter="false"/>
</logic:present>--%>
<c:url value="${fn:replace(adv_66_388,'http\:\/\/guide.ding9.com\/click\/adv-click.do\?adad_id\=738&adv_url\=','')}"/>
<!-- <a href='http://www.mercedes-benz.com.cn' TARGET='_blank'><img src="http://www.ding9.com/Updata/Shoppic/20140107174837_2.jpg" border="1" width=900px  height=125px/></a> -->

<Br>
<table cellspacing="0" cellpadding="0">
<tr><td>
<!-- </td></tr><tr><td> -->
<div id="c02">
<div id="c02_l">
<div class="menu001">
<img src="/images/mpfl_menu.gif" width="105" height="33" border="0"/>&nbsp;&nbsp;&nbsp;&nbsp;
<%--<a target="_blank" class="H2_1" href="<%=UrlRewriteManager.dynamic2static("/switch.do?msg=leibie")%>"><img src="/images/more.gif" width="38" height="13" border="0"/></a> --%>
<a target="_blank" class="H2_1" href="<c:url value="/switch.do?msg=leibie"/>"><img src="/images/more.gif" width="38" height="13" border="0"/></a>
</div>
<bean:write name="sortVO" property="content" filter="false"/>
</div>
<div id="c02_r">
<div id="c0201">
<div id="c0201_l">
<div class="menu001"><img src="/images/rxph.gif" width="115" height="33" border="0"/></div>
<script type="text/javascript" language="javascript">
var Category="";
function Fun_Movement(SEQ){
Category=SEQ;
if (document.all.AdsTitle.style.display==""){
	document.all.AdsTitle.style.display="none";
	document.all.CategoryTitle.style.display="";
}
var RECOMMEND_PRODUCT_DIV="RECOMMEND_PRODUCT_"+SEQ;
var RECOMMEND_PRODUCT=document.all(RECOMMEND_PRODUCT_DIV).innerText;
if (RECOMMEND_PRODUCT!=""){
	var RECOMMEND_PRODUCT_ARRAY=RECOMMEND_PRODUCT.split("[]");
	var IMG0=RECOMMEND_PRODUCT_ARRAY[0];
	if (IMG0!=""){
		var ARR0=IMG0.split("{}");
		//document.all.pic0.src="<%=Environment.getImageDing9()%>"+ARR0[7];
		document.all.pic0.src="<c:out value="${imageHost}"/>"+ARR0[7];
	}
	var IMG1=RECOMMEND_PRODUCT_ARRAY[1];
	if (IMG1!=""){
		var ARR1=IMG1.split("{}");
		//document.all.pic1.src="<%=Environment.getImageDing9()%>"+ARR1[7];
		document.all.pic1.src="<c:out value="${imageHost}"/>"+ARR1[7];
	}
	var IMG2=RECOMMEND_PRODUCT_ARRAY[2];
	if (IMG2!=""){
		var ARR2=IMG2.split("{}");
		//document.all.pic2.src="<%=Environment.getImageDing9()%>"+ARR2[7];
		document.all.pic2.src="<c:out value="${imageHost}"/>"+ARR2[7];
	}
	var IMG3=RECOMMEND_PRODUCT_ARRAY[3];
	if (IMG3!=""){
		var ARR3=IMG3.split("{}");
		//document.all.pic3.src="<%=Environment.getImageDing9()%>"+ARR3[7];
		document.all.pic3.src="<c:out value="${imageHost}"/>"+ARR3[7];
	}
	var IMG4=RECOMMEND_PRODUCT_ARRAY[4];
	if (IMG4!=""){
		var ARR4=IMG4.split("{}");
		//document.all.pic4.src="<%=Environment.getImageDing9()%>"+ARR4[7];
		document.all.pic4.src="<c:out value="${imageHost}"/>"+ARR4[7];
	}
	}
	document.all.CategoryName.innerHTML=document.all("SortNameDiv"+SEQ).innerHTML;
}

function SmallProduct(SEQ){
	var RECOMMEND_PRODUCT_DIV="RECOMMEND_PRODUCT_"+Category;
	var RECOMMEND_PRODUCT=document.all(RECOMMEND_PRODUCT_DIV).innerText;
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
			/**
			if (ARR[10]=="0"){
			document.all.CommentOnProductCount.innerHTML=ARR[3];
			//document.all.CommentOnProductCount.innerHTML='<a target="_blank" class="H1" href="'+ARR[3]+'#AddContent"><font color=\"#0066cc\">发表评论</font></a>';
			}else{
			document.all.CommentOnProductCount.innerHTML='<a target="_blank" class="H1" href="'+ARR[3]+'#viewc">'+"<font color=\"#0066cc\">"+ARR[10]+'</font></a>';
			}
			*/
			document.all.CommentOnProductCount.innerHTML=arr2[3];
			var temp = ARR[11];
			temp = temp.replace("-comment","");
			if (parseInt(ARR[1])>1){
				document.all.LblGo.innerHTML='<a target="_blank" class="H1" href="'+temp+'"><img src="/images/ckxq.gif" border="0"/></a>';
			}else{
				document.all.LblGo.innerHTML='<a target="_blank" class="H1" href="'+temp+'"><img src="/images/ckxq.gif" border="0"/></a>';
			}
		}
	}
}
</script>
<TABLE cellSpacing="0" cellPadding="0" width="100%">
<TBODY>
<TR>
<TD class="CategoryOut" vAlign="center" align="middle">
<%--
<logic:present name="sortvo1"><bean:define id="sort_url" name="sortvo1" property="sort_url" type="java.lang.String"/><bean:define id="sort_pic" name="sortvo1" property="sort_pic" type="java.lang.String"/><bean:define id="sort_name" name="sortvo1" property="sort_name" type="java.lang.String"/></logic:present>
<a target="_blank" href="<%=sort_url%>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('ONE');SmallProduct(1);" border="0" src="<%=Environment.getImageDing9()%><%=sort_pic%>"/></a>
<div id="SortNameDivONE" style="display:none"><a target="_blank" class="H1cl" href="<%=sort_url%>"><%=sort_name%></a></div>
--%>
<a target="_blank" href="<c:out value="${sortvo1.sort_url}"/>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('ONE');SmallProduct(1);" border="0" src="<c:out value="${imageHost}"/><c:out value="${sortvo1.sort_pic}"/>"/></a>
<div id="SortNameDivONE" style="display:none"><a target="_blank" class="H1cl" href="<c:out value="${sortvo1.sort_url}"/>"><c:out value="${sortvo1.sort_name}"/></a></div>
</TD>
<TD width="1" bgColor="#cccccc" rowSpan="7"></TD>
<TD id="AdsTitle" align="middle" width="300" height="350" rowSpan="7"><logic:present name="adv_66_389"><bean:write name="adv_66_389" filter="false"/></logic:present></TD>
<TD id="CategoryTitle" style="DISPLAY:none;FILTER:alpha(opacity=100);moz-opacity:1" vAlign="top" align="middle" width="300" rowSpan="7">
<TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
<TBODY>
<TR>
<TD width="300" height="350" valign="top" id="productTd" style="FILTER:alpha(opacity=100);moz-opacity:1">
<TABLE cellSpacing="0" cellPadding="0" width="100%">
<TBODY>
<TR><TD align="middle" background="/images/center_bg003.gif" height="37"><SPAN class="STYLE9" id="CategoryName"></SPAN></TD></TR>
</TBODY>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="100%">
<TBODY>
<TR>
<TD align="middle">
<TABLE cellSpacing="0" cellPadding="0" width="60%">
<TBODY>
<TR><TD bgColor="#cccccc" height="1"></TD></TR>
</TBODY>
</TABLE>
</TD>
</TR>
<TR><TD align="middle" height="28"><SPAN class="H1c" id="PrmaName"></SPAN></TD></TR>
</TBODY>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="100%">
<TBODY>
<TR>
<TD width="186" height="150" rowSpan="5" align="middle" valign="top"><SPAN id="ImgPic"></SPAN></TD>
<TD width="148">&nbsp;</TD>
</TR>
<TR><TD class="H1" align="left" height="22"><SPAN class="H2" id="MinPrice"></SPAN></TD></TR>
<TR><TD class="H1" align="left" height="22">来自<SPAN class="H2" id="MerchantCount"></SPAN>个商家</TD></TR>
<TR><TD class="H1" align="left" height="22">商品评论（<SPAN class="H2" id="CommentOnProductCount"></SPAN>）</TD></TR>
<TR><TD height="70" align="left"><SPAN id="LblGo"></SPAN></TD></TR>
</TBODY>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="100%">
<TBODY>
<TR>
<TD class="H1" vAlign="top" align="right" width="23%" height="35">商品描述：</TD>
<TD vAlign="top" align="left" width="77%"><SPAN class="H1" id="PrmaRemark"></SPAN></TD>
</TR>
</TBODY>
</TABLE>
<TABLE cellSpacing="0" cellPadding="0" width="100%">
<TBODY>
<TR>
<TD height="99">
<TABLE height="70" cellSpacing="0" cellPadding="0" width="100%">
<TBODY>
<TR>
<TD background="/images/center009.jpg" height="80">
<TABLE height="71" cellSpacing=0 cellPadding='0' width="100%">
<TBODY>
<TR>
<TD height="71">&nbsp;</TD>
<TD class="ProductOut" vAlign="center" align="middle"><IMG id="pic0" onMouseOver="SmallProduct(1)" height="50" width="50" border="0"/><BR/><SPAN class="H1c">No.1</SPAN></TD>
<TD class="ProductOut" vAlign="center" align="middle"><IMG id="pic1" onMouseOver="SmallProduct(2)" height="50" width="50" border="0"/><BR/><SPAN class="H1c">No.2</SPAN></TD>
<TD class="ProductOut" vAlign="center" align="middle"><IMG id="pic2" onMouseOver="SmallProduct(3)" height="50" width="50" border="0"/><BR/><SPAN class="H1c">No.3</SPAN></TD>
<TD class="ProductOut" vAlign="center" align="middle"><IMG id="pic3" onMouseOver="SmallProduct(4)" height="50" width="50" border="0"/><BR/><SPAN class="H1c">No.4</SPAN></TD>
<TD class="ProductOut" vAlign="center" align="middle"><IMG id="pic4" onMouseOver="SmallProduct(5)" height="50" width="50" border="0"/><BR/><SPAN class="H1c">No.5</SPAN></TD>
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
<TD width="1" bgColor="#cccccc" rowSpan="7"></TD>
<TD class="CategoryOut" vAlign="center" align="middle">
<%--
<logic:present name="sortvo2"><bean:define id="sort_url" name="sortvo2" property="sort_url" type="java.lang.String"/><bean:define id="sort_pic" name="sortvo2" property="sort_pic" type="java.lang.String"/><bean:define id="sort_name" name="sortvo2" property="sort_name" type="java.lang.String"/></logic:present>
<a target="_blank" href="<%=sort_url%>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('TWO');SmallProduct(1);" border="0" src="<%=Environment.getImageDing9()%><%=sort_pic%>"/></a>
<div id="SortNameDivTWO" style="display:none"><a target="_blank" class="H1cl" href="<%=sort_url%>"><%=sort_name%></a></div>
--%>
<a target="_blank" href="<c:out value="${sortvo2.sort_url}"/>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('TWO');SmallProduct(1);" border="0" src="<c:out value="${imageHost}"/><c:out value="${sortvo2.sort_pic}"/>"/></a>
<div id="SortNameDivTWO" style="display:none"><a target="_blank" class="H1cl" href="<c:out value="${sortvo2.sort_url}"/>"><c:out value="${sortvo2.sort_name}"/></a></div>
</TD>
<TD width="8" background="/images/center005.gif" rowSpan="7"></TD>
</TR>
<TR>
<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
</TR>
<TR>
<TD class="CategoryOut" vAlign="center" align="middle">
<%--
<logic:present name="sortvo3"><bean:define id="sort_url" name="sortvo3" property="sort_url" type="java.lang.String"/><bean:define id="sort_pic" name="sortvo3" property="sort_pic" type="java.lang.String"/><bean:define id="sort_name" name="sortvo3" property="sort_name" type="java.lang.String"/></logic:present>
<a target="_blank" href="<%=sort_url%>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('THREE');SmallProduct(1);" border="0" src="<%=Environment.getImageDing9()%><%=sort_pic%>"/></a>
<div id="SortNameDivTHREE" style="display:none"><a target="_blank" class="H1cl" href="<%=sort_url%>"><%=sort_name%></a></div>
--%>
<a target="_blank" href="<c:out value="${sortvo3.sort_url}"/>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('THREE');SmallProduct(1);" border="0" src="<c:out value="${imageHost}"/><c:out value="${sortvo3.sort_pic}"/>"/></a>
<div id="SortNameDivTHREE" style="display:none"><a target="_blank" class="H1cl" href="<c:out value="${sortvo3.sort_url}"/>"><c:out value="${sortvo3.sort_name}"/></a></div>
</TD>
<TD class="CategoryOut" vAlign="center" align="middle">
<%--
<logic:present name="sortvo4"><bean:define id="sort_url" name="sortvo4" property="sort_url" type="java.lang.String"/><bean:define id="sort_pic" name="sortvo4" property="sort_pic" type="java.lang.String"/><bean:define id="sort_name" name="sortvo4" property="sort_name" type="java.lang.String"/></logic:present>
<a target="_blank" href="<%=sort_url%>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('FOUR');SmallProduct(1);" border="0" src="<%=Environment.getImageDing9()%><%=sort_pic%>"/></a>
<div id="SortNameDivFOUR" style="display:none"><a target="_blank" class="H1cl" href="<%=sort_url%>"><%=sort_name%></a></div>
--%>
<logic:present name="sortvo4"><bean:define id="sort_url" name="sortvo4" property="sort_url" type="java.lang.String"/><bean:define id="sort_pic" name="sortvo4" property="sort_pic" type="java.lang.String"/><bean:define id="sort_name" name="sortvo4" property="sort_name" type="java.lang.String"/></logic:present>
<a target="_blank" href="<c:out value="${sortvo4.sort_url}"/>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('FOUR');SmallProduct(1);" border="0" src="<c:out value="${imageHost}"/><c:out value="${sortvo4.sort_pic}"/>"/></a>
<div id="SortNameDivFOUR" style="display:none"><a target="_blank" class="H1cl" href="<c:out value="${sortvo4.sort_url}"/>"><c:out value="${sortvo4.sort_name}"/></a></div>
</TD>
</TR>
<TR>
<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
</TR>
<TR>
<TD class="CategoryOut" vAlign="center" align="middle">
<%--
<logic:present name="sortvo5"><bean:define id="sort_url" name="sortvo5" property="sort_url" type="java.lang.String"/><bean:define id="sort_pic" name="sortvo5" property="sort_pic" type="java.lang.String"/><bean:define id="sort_name" name="sortvo5" property="sort_name" type="java.lang.String"/></logic:present>
<a target="_blank" href="<%=sort_url%>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('FIVE');SmallProduct(1);" border="0" src="<%=Environment.getImageDing9()%><%=sort_pic%>"/></a>
<div id="SortNameDivFIVE" style="display:none"><a target="_blank" class=H1cl href="<%=sort_url%>"><%=sort_name%></a></div>
--%>
<a target="_blank" href="<c:out value="${sortvo5.sort_url}"/>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('FIVE');SmallProduct(1);" border="0" src="<c:out value="${imageHost}"/><c:out value="${sortvo5.sort_pic}"/>"/></a>
<div id="SortNameDivFIVE" style="display:none"><a target="_blank" class="H1cl" href="<c:out value="${sortvo5.sort_url}"/>"><c:out value="${sortvo5.sort_name}"/></a></div>
</TD>
<TD class="CategoryOut" vAlign="center" align="middle">
<%--
<logic:present name="sortvo6"><bean:define id="sort_url" name="sortvo6" property="sort_url" type="java.lang.String"/><bean:define id="sort_pic" name="sortvo6" property="sort_pic" type="java.lang.String"/><bean:define id="sort_name" name="sortvo6" property="sort_name" type="java.lang.String"/></logic:present>
<a target="_blank" href="<%=sort_url%>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('SIX');SmallProduct(1);" border="0" src="<%=Environment.getImageDing9()%><%=sort_pic%>"/></a>
<div id="SortNameDivSIX" style="display:none"><a target="_blank" class="H1cl" href="<%=sort_url%>"><%=sort_name%></a></div>
--%>
<a target="_blank" href="<c:out value="${sortvo6.sort_url}"/>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('SIX');SmallProduct(1);" border="0" src="<c:out value="${imageHost}"/><c:out value="${sortvo6.sort_pic}"/>"/></a>
<div id="SortNameDivSIX" style="display:none"><a target="_blank" class="H1cl" href="<c:out value="${sortvo6.sort_url}"/>"><c:out value="${sortvo6.sort_name}"/></a></div>
</TD>
</TR>
<TR>
<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
<TD vAlign="center" align="middle" bgColor="#cccccc"></TD>
</TR>
<TR>
<TD class="CategoryOut" vAlign="center" align="middle">
<%--
<logic:present name="sortvo7"><bean:define id="sort_url" name="sortvo7" property="sort_url" type="java.lang.String"/><bean:define id="sort_pic" name="sortvo7" property="sort_pic" type="java.lang.String"/><bean:define id="sort_name" name="sortvo7" property="sort_name" type="java.lang.String"/></logic:present>
<a target="_blank" href="<%=sort_url%>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('SERVEN');SmallProduct(1);" border="0" src="<%=Environment.getImageDing9()%><%=sort_pic%>"/></a>
<div id="SortNameDivSERVEN" style="display:none"><a target="_blank" class="H1cl" href="<%=sort_url%>"><%=sort_name%></a></div>
--%>
<a target="_blank" href="<c:out value="${sortvo7.sort_url}"/>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('SERVEN');SmallProduct(1);" border="0" src="<c:out value="${imageHost}"/><c:out value="${sortvo7.sort_pic}"/>"/></a>
<div id="SortNameDivSERVEN" style="display:none"><a target="_blank" class="H1cl" href="<c:out value="${sortvo7.sort_url}"/>"><c:out value="${sortvo7.sort_name}"/></a></div>
</TD>
<TD class="CategoryOut" vAlign="center" align="middle">
<%--
<logic:present name="sortvo8"><bean:define id="sort_url" name="sortvo8" property="sort_url" type="java.lang.String"/><bean:define id="sort_pic" name="sortvo8" property="sort_pic" type="java.lang.String"/><bean:define id="sort_name" name="sortvo8" property="sort_name" type="java.lang.String"/></logic:present>
<a target="_blank" href="<%=sort_url%>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('EIGHT');SmallProduct(1);" border="0" src="<%=Environment.getImageDing9()%><%=sort_pic%>"/></a>
<div id="SortNameDivEIGHT" style="display:none"><a target="_blank" class=H1cl href="<%=sort_url%>"><%=sort_name%></a></div>
--%>
<a target="_blank" href="<c:out value="${sortvo8.sort_url}"/>"><img height="80" width="80" ONMOUSEOVER="Fun_Movement('EIGHT');SmallProduct(1);" border="0" src="<c:out value="${imageHost}"/><c:out value="${sortvo8.sort_pic}"/>"/></a>
<div id="SortNameDivEIGHT" style="display:none"><a target="_blank" class="H1cl" href="<c:out value="${sortvo8.sort_url}"/>"><c:out value="${sortvo8.sort_name}"/></a></div>
</TD>
</TR>
</TBODY>
</TABLE>
<logic:present name="str0"><bean:write name="str0" filter="false"/></logic:present>
<logic:present name="str1"><bean:write name="str1" filter="false"/></logic:present>
<logic:present name="str2"><bean:write name="str2" filter="false"/></logic:present>
<logic:present name="str3"><bean:write name="str3" filter="false"/></logic:present>
<logic:present name="str4"><bean:write name="str4" filter="false"/></logic:present>
<logic:present name="str5"><bean:write name="str5" filter="false"/></logic:present>
<logic:present name="str6"><bean:write name="str6" filter="false"/></logic:present>
<logic:present name="str7"><bean:write name="str7" filter="false"/></logic:present>
</div>

<div id="c0201_r">

<%-- 	2014-07-31 取消逛街,暂改静态资讯速递
 <div class="menu001"><img src="/images/wagj.gif" width="115" height="33" border="0"/>&nbsp;&nbsp;<a target="_blank" class="H2_1" href="<%=Environment.getChannelShop()%>"><img src="/images/more.gif" width="38" height="13" border="0"/></a></div>
<logic:present name="adv_66_390"><bean:write name="adv_66_390" filter="false"/></logic:present>
<div id="c002"><bean:write name="shopVO" property="content" filter="false"/></div>
<div class="k001"><bean:write name="shop2VO" property="content" filter="false"/></div>
<div class="div1">
<ul>
<c:choose><c:when test="${!empty listShopping}">
<c:forEach items="${listShopping}" var="shopping">
<li><a id="nowrap" target="_blank" href="<%=Environment.getChannelPromotion()+"/promotion-0/news/info-"%>
<c:out value="${shopping.info_id}/"/>" class="H1"><ding9:substr title="${shopping.title}" len="24"/></a>
</li>
</c:forEach>
</c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div> --%>

<%-- <div id="main1_3">
<div id="enro1">
<div id="enro_3">共收集商家<br />
 	<logic:present name="merchantNum"><bean:write name="merchantNum" filter="false" /></logic:present>家</div>
<div id="enro_4">共收集商品<br />
	<logic:present name="productMasterNum"><bean:write name="productMasterNum" filter="false" /></logic:present>件</div>
<!--enro--></div>
<div class="title bold">商讯速递 </div>
<div id="news" class="div1" style="height:200px">
<!-- <ul> --> --%>
<%--	2014-08-27 改为动态,取自 index22.jsp
			<li class="co333">[手机/通讯]<a target="_blank"	href="http://mobile.ding9.com/Mobile-6/news/article-9284/"	class="H1"> 低价高质 千元内超</a></li>
			<li class="co333">[数码/电子]<a	target="_blank"	href="http://digital.ding9.com/Digital-1/news/article-9285/" class="H1"> 上市前抢先看 即将</a></li>
			<li class="co333">[办公用品] <a	target="_blank"	href="http://office.ding9.com/Office-15/news/article-9287/" class="H1"> 创业不用愁不足千元</a></li>
			<li class="co333">[电脑/网络]<a	target="_blank"	href="http://computer.ding9.com/Computer-7/news/article-9286/" class="H1"> 有钱人的玩具SSD硬</a></li>
			<li class="co333">[数码/电子]<a	target="_blank"	href="http://digital.ding9.com/Digital-1/news/article-9289/"	class="H1"> 拒绝耍酷 六款实用</a></li>
			<li class="co333">[家用电器]<a	target="_blank"	href="http://hea.ding9.com/Hea-12/news/article-9290/"	class="H1"> 尽显价格优势超值42</a></li>
			<li class="co333">[美容美体]<a	target="_blank"	href="http://beauty.ding9.com/Beauty-8/news/article-9282/"	class="H1"> 强力推荐熬夜女保持</a></li>
			<li class="co333">[手机/通讯]<a	target="_blank"	href="http://mobile.ding9.com/Mobile-6/news/article-8937/"	class="H1"> 个性好选择 近期上</a></li>
			<li class="co333">[数码/电子]<a	target="_blank"	href="http://digital.ding9.com/Digital-1/news/article-8938/" class="H1"> 看长江七号拍电影 </a></li>
			<li class="co333">[办公用品]<a	target="_blank"	href="http://office.ding9.com/Office-15/news/article-8940/"	class="H1"> 新年热销 A3+幅商用</a></li>
--%>
<%--
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
			
</ul> --%>
<%--
<!-- <div>
<a name=d91 id=d91 href='http://guide.ding9.com/click/adv-click.do?adad_id=711&adv_url=http://eshop.ding9.com/?product-98.html' TARGET='_blank'>	
	<IMG SRC='http://img.ding9.com/Updata/Advertisement/20100112131053.gif' border='0' height="70" width="210" /></A>	
</div> -->
<!--End of the Tabmenu 2 --> <!--Start Tabcontent 1 -->
<marquee onMouseOver="this.stop()" onMouseOut="this.start()" truespeed="trueSpeed" scrollamount="1" scrolldelay="60" direction="left" width="100%" height="280px" border="0">
<div id="anothercontent1">
<div class="indexpro"><logic:present name="guideDiv1001">
	<bean:write name="guideDiv1001" filter="false" />
</logic:present>
</div>
<!--indexpro--></div>
<!--End Tabcontent 1--> <!--Start Tabcontent 2-->
<div id="anothercontent2">
<div class="indexpro"><logic:present name="guideDiv1002">
	<bean:write name="guideDiv1002" filter="false" />
</logic:present>
</div>
<!--indexpro--></div>
<!--End Tabcontent 2 --> <!--Start Tabcontent 3-->
<div id="anothercontent3">
<div class="indexpro"><logic:present name="guideDiv1003">
	<bean:write name="guideDiv1003" filter="false" />
</logic:present>
</div>
<!--indexpro--></div>
<!--End Tabcontent 3--> <!--Start Tabcontent 4-->
<div id="anothercontent4">
<div class="indexpro"><logic:present name="guideDiv1004">
	<bean:write name="guideDiv1004" filter="false" />
</logic:present>
</div>
<!--indexpro--></div>
<!--End Tabcontent 4--> <!--Start Tabcontent 5-->
<div id="anothercontent5">
<div class="indexpro"><logic:present name="guideDiv1005">
	<bean:write name="guideDiv1005" filter="false" />
</logic:present>
</div>
<!--indexopro--></div></marquee>
<script>easytabs('2', '1');</script>
--%>
<%-- 2014-09-13 改为资讯速递
<div id="main1_3">
<div id="enro1">
<div id="enro_3">共收集商家<br />
 	<logic:present name="merchantNum"><bean:write name="merchantNum" filter="false" /></logic:present>家</div>
<div id="enro_4">共收集商品<br />
	<logic:present name="productMasterNum"><bean:write name="productMasterNum" filter="false" /></logic:present>件</div>
<!--enro--></div>

<div class="title bold">商讯速递 </div>
<logic:present name="adv_66_390">
<c:url value="${fn:replace(adv_66_390,'href','name=d91 id=d91 href')}"/>	
</logic:present>
<div id="news" style="height:200px">
<logic:present name="guideDiv0"><bean:write name="guideDiv0" filter="false"/></logic:present>
</div>
--%>
<div id="main1_3">
<%-- 2014-09-15
 <div class="title bold">资讯速递 </div> -->
<logic:present name="adv_66_390">
<c:url value="${fn:replace(adv_66_390,'href','name=d91 id=d91 href')}"/>	
</logic:present> 
--%>
<div class="menu001"><img src="/images/zxsd.gif" width="115" height="33" border="0"/></div>
<div id="news" style="height:210px">

<ul><logic:present name="guideDiv0"><logic:iterate name="guideDiv0" id="vo" offset="0" indexId="seq">
<li>
<%-- <span class="H3">[<bean:write name="vo" property="prsoName" filter="false" />]</span> --%><bean:define id="article_id" name="vo" property="article_id" type="java.lang.Integer"/><bean:define id="prsoId" name="vo" property="prsoId" type="java.lang.Integer"/><bean:define id="title" name="vo" property="title" type="java.lang.String"/>
<bean:define id="prsoNameOneEn" name="vo" property="prsoNameOneEn" type="java.lang.String"/>
<a target="_blank" href="<%=ProjectEnvironment.getChannelDomainName(String.valueOf(prsoId))+response.encodeURL("/news/news-info.do?article_id="+article_id+"&prso_id_one="+prsoId+"&prso_name_one_en="+prsoNameOneEn)%>" class="H3"><ding9:substr title="<%=title%>" len="28"/></a>
</li></logic:iterate></logic:present>
</ul>
</div>
<logic:present name="adv_66_390">
<c:url value="${fn:replace(adv_66_390,'href','name=d91 id=d91 href')}"/>	
</logic:present> 

<!--main1_3--></div>

</div>
</div>
<table width="100%" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<td bgcolor="#FFFFFF">
<table width="100%" border="0" cellspacing="0" cellpadding="0" id="secTable">
<tr>
<td width="79" height="21" class="sel01" onClick="secBoard(0)">商家导航</td>
<td width="79" class="sel02" onClick="secBoard(1)">手机通讯</td>
<td width="79" class="sel02" onClick="secBoard(2)">数码电子</td>
<td width="79" class="sel02" onClick="secBoard(3)">电脑网络</td>
<td width="79" class="sel02" onClick="secBoard(4)">办公用品</td>
<td width="79" class="sel02" onClick="secBoard(5)">家用电器</td>
<td width="79" class="sel02" onClick="secBoard(6)">美容美体</td>
<td width="79" class="sel02" onClick="secBoard(7)">精品饰品</td>
<td align="center" background="/images/bg03.gif"><a href="http://merchant.ding9.com" target="_blank" class="H2">更多</a></td>
</tr>
</table>
<table width="100%" cellspacing="0" cellpadding="0" id="mainTable">
<tbody style="display:block;">
<tr><td><div class="div2"><bean:write name="merchantVO" property="content" filter="false"/></div></td></tr>
</tbody>
<tbody style="display:none;">
<tr><td><div class="div2"><bean:write name="mobileVO" property="content" filter="false"/></div></td></tr>
</tbody>
<tbody style="display:none;">
<tr><td><div class="div2"><bean:write name="digitalVO" property="content" filter="false"/></div></td></tr>
</tbody>
<tbody style="display:none;">
<tr><td><div class="div2"><bean:write name="pcVO" property="content" filter="false"/></div></td></tr>
</tbody>
<tbody style="display:none;">
<tr><td><div class="div2"><bean:write name="officeVO" property="content" filter="false"/></div></td></tr>
</tbody>
<tbody style="display:none;">
<tr><td><div class="div2"><bean:write name="heaVO" property="content" filter="false"/></div></td></tr>
</tbody>
<tbody style="display:none;">
<tr><td><div class="div2"><bean:write name="beautiVO" property="content" filter="false"/></div></td></tr>
</tbody>
<tbody style="display:none;">
<tr><td><div class="div2"><bean:write name="loveVO" property="content" filter="false"/></div></td></tr>
</tbody>
</table>
</td>
</tr>
</table>
<a name="d9"></a>
<div id="c0202">
<div id="c0202_l"><logic:present name="adv_66_391"><bean:write name="adv_66_391" filter="false"/></logic:present></div>
<div id="c0202_r"><logic:present name="adv_66_392"><bean:write name="adv_66_392" filter="false"/></logic:present></div>
</div>
</div>
</div>
</td></tr><tr><td>
<div id="c03">
<div id="c03_l">
<div class="div3">
<div class="menu001">
<img src="/images/yhpl.gif" width="105" height="33" border="0"/>&nbsp;&nbsp;&nbsp;&nbsp;
<%--<a href="<%=UrlRewriteManager.dynamic2static("/pinglun.do")%>" target="_blank" class="H2_1"><img src="/images/more.gif" width="38" height="13" border="0"/></a>--%>
<a href="<c:url value="/pinglun.do"/>" target="_blank" class="H2_1"><img src="/images/more.gif" width="38" height="13" border="0"/></a>
</div>
<%-- 2014年4月10日 <ul>
<li>
<span class="tu">
<a target="_blank" href="/default-1/prod-61195-comment.htm#viewc"><img src="http://img.ding9.com/picdata/common/recommend/1170.jpg" alt="索尼 SR100E" width="50" height="50" border="0"/></a>
</span>
<span class="text">
<a target="_blank" class="H1c" href="/default-1/prod-61195-comment.htm#viewc" title="索尼 SR100E">索尼 SR100E
</a><br/>
<a target="_blank" href="/default-1/prod-61195-comment.htm#viewc" class="H1">
很好的，耐用，我买了3个星期的时间，从恒丰数码网上买的 ww
</a>
</span>
</li>
<li>
<span class="tu">
<a target="_blank" href="/default-8/prod-182996-comment.htm#viewc"><img src="http://img.ding9.com/picdata/common/recommend/1168.jpg" alt="安娜苏纤长卷翘睫毛膏 8.4g" width="50" height="50" border="0"/></a>
</span>
<span class="text">
<a target="_blank" class="H1c" href="/default-8/prod-182996-comment.htm#viewc" title="安娜苏纤长卷翘睫毛膏 8.4g">安娜苏纤长卷翘
</a><br/>
<a target="_blank" href="/default-8/prod-182996-comment.htm#viewc" class="H1">
我个人是十分喜欢这只睫毛膏的。 我是通过一个朋友从她的网
</a>
</span>
</li>
<li>
<span class="tu">
<a target="_blank" href="/default-0/prod-2092045-comment.htm#viewc"><img src="http://img.ding9.com/picdata/common/recommend/1153.jpg" alt="摩托罗拉 A1200E(明)" width="50" height="50" border="0"/></a>
</span>
<span class="text">
<a target="_blank" class="H1c" href="/default-0/prod-2092045-comment.htm#viewc" title="摩托罗拉 A1200E(明)">摩托罗拉 A1200E
</a><br/>
<a target="_blank" href="/default-0/prod-2092045-comment.htm#viewc" class="H1">
第一步建立短信文件夹。点击顶上左起第3个按纽“短信中心”/
</a>
</span>
</li>
<li>
<span class="tu">
<a target="_blank" href="/default-7/prod-55887-comment.htm#viewc"><img src="http://img.ding9.com/picdata/common/recommend/1152.jpg" alt="索尼 VGN-TX36C/T笔记本" width="50" height="50" border="0"/></a>
</span>
<span class="text">
<a target="_blank" class="H1c" href="/default-7/prod-55887-comment.htm#viewc" title="索尼 VGN-TX36C/T笔记本">索尼 VGN-TX36C/...
</a><br/>
<a target="_blank" href="/default-7/prod-55887-comment.htm#viewc" class="H1">
比较方便,试试看
</a>
</span>
</li>
<li>
<span class="tu">
<a target="_blank" href="/default-1/prod-68914-comment.htm#viewc"><img src="http://img.ding9.com/picdata/common/recommend/1151.jpg" alt="纽曼 精音王N05 1G" width="50" height="50" border="0"/></a>
</span>
<span class="text">
<a target="_blank" class="H1c" href="/default-1/prod-68914-comment.htm#viewc" title="纽曼 精音王N05 1G">纽曼 精音王N05 
</a><br/>
<a target="_blank" href="/default-1/prod-68914-comment.htm#viewc" class="H1">
上周六3月10日在中关村鼎好电子城4027买的,感觉音质马马
</a>
</span>
</li>
<li>
<span class="tu">
<a target="_blank" href="/default-1/prod-3544-comment.htm#viewc"><img src="http://img.ding9.com/picdata/common/recommend/1150.jpg" alt="佳能 IXUS 65" width="50" height="50" border="0"/></a>
</span>
<span class="text">

<a target="_blank" class="H1c" href="/default-1/prod-3544-comment.htm#viewc" title="佳能 IXUS 65">佳能 IXUS 65
</a><br/>
<a target="_blank" href="/default-1/prod-3544-comment.htm#viewc" class="H1">
佳能太贵点佳能太贵点了了
</a>
</span>
</li>
</ul> --%>
<ul><logic:present name="CommentsOnProductByHomePage"><logic:iterate name="CommentsOnProductByHomePage" id="IdCommentsOnProductByHomePage" offset="0" indexId="seq">
<li>
<bean:define id="prso_id" name="IdCommentsOnProductByHomePage" property="prso_id" type="java.lang.Integer"/>
<bean:define id="prma_id" name="IdCommentsOnProductByHomePage" property="prma_id" type="java.lang.Integer"/>
<logic:present name="CommentsOnProductByHomePage" property="prso_name_one_en">
<bean:define id="prso_name_one_en" name="IdCommentsOnProductByHomePage" property="prso_name_one_en" type="String"/>
</logic:present>
<logic:notPresent name="CommentsOnProductByHomePage" property="prso_name_one_en">
<bean:define id="prso_name_one_en" value="default" type="String"/>
</logic:notPresent>
<span class="tu">
<%--<a target="_blank" href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+prma_id+"&type=comment")%>#viewc"><logic:empty name="IdCommentsOnProductByHomePage" property="picture"><img src="<%=Environment.getTempProductPicture()%>" alt="<bean:write name='IdCommentsOnProductByHomePage' property='prma_name' filter='false'/>" width="50" height="50" border="0"/></logic:empty><logic:notEmpty name="IdCommentsOnProductByHomePage" property="picture"><img src="<%=Environment.getImageDing9()%><bean:write name="IdCommentsOnProductByHomePage" property="picture" filter="false"/>" alt="<bean:write name='IdCommentsOnProductByHomePage' property='prma_name' filter='false'/>" width="50" height="50" border="0"/></logic:notEmpty></a>--%>
<a target="_blank" href="<c:url value="/product/product-info.do?prma_id=${IdCommentsOnProductByHomePage.prma_id}&prso_id_one=${IdCommentsOnProductByHomePage.prso_id_one}&prso_name_one_en=${prso_name_one_en}&type=comment"/>#viewc"><logic:empty name="IdCommentsOnProductByHomePage" property="picture"><img src="<%=Environment.getTempProductPicture()%>" alt="<bean:write name='IdCommentsOnProductByHomePage' property='prma_name' filter='false'/>" width="50" height="50" border="0"/></logic:empty><logic:notEmpty name="IdCommentsOnProductByHomePage" property="picture"><img src="<c:out value="${imageHost}"/><bean:write name="IdCommentsOnProductByHomePage" property="picture" filter="false"/>" alt="<bean:write name='IdCommentsOnProductByHomePage' property='prma_name' filter='false'/>" width="50" height="50" border="0"/></logic:notEmpty></a>
</span>
<span class="text">
<%--
<bean:define name="IdCommentsOnProductByHomePage" property="prma_name" id="prma_name" type="java.lang.String"/>
<a target="_blank" class="H1c" href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+prma_id+"&type=comment")%>#viewc" title="<%=prma_name%>"><ding9:substr title="<%=prma_name%>" len="15"/></a><br/>
<a target="_blank" href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+prma_id+"&type=comment")%>#viewc" class="H1"><bean:define name="IdCommentsOnProductByHomePage" property="brief" id="content" type="java.lang.String"/><ding9:substr title="<%=content%>" len="56"/></a>
--%>
<a target="_blank" class="H1c" href="<c:url value="/product/product-info.do?prma_id=${IdCommentsOnProductByHomePage.prma_id}&prso_id_one=${IdCommentsOnProductByHomePage.prso_id_one}&prso_name_one_en=${prso_name_one_en}&type=comment"/>#viewc" title="${IdCommentsOnProductByHomePage.prma_name}"><ding9:substr title="${IdCommentsOnProductByHomePage.prma_name}" len="15"/></a><br/>
<a target="_blank" href="<c:url value="/product/product-info.do?prma_id=${IdCommentsOnProductByHomePage.prma_id}&prso_id_one=${IdCommentsOnProductByHomePage.prso_id_one}&prso_name_one_en=${prso_name_one_en}&type=comment"/>#viewc" class="H1">
<bean:write name="IdCommentsOnProductByHomePage" property="brief" filter="true"/>
</a>
</span>
</li></logic:iterate></logic:present>
</ul>
</div>
<logic:present name="adv_66_393"><bean:write name="adv_66_393" filter="false"/></logic:present>
<div class="k100">
<div class="menu001">
<img src="/images/jjd9.gif" width="105" height="33" border="0"/>&nbsp;&nbsp;&nbsp;&nbsp;
<%--
<a target="_blank" href="<%=UrlRewriteManager.dynamic2static("/focus.do")%>" class="H2_1"><img src="/images/more.gif" width="38" height="13" border="0"/></a>
--%>
<a target="_blank" href="<c:url value="/focus.do"/>" class="H2_1"><img src="/images/more.gif" width="38" height="13" border="0"/></a>
</div>
<div class="div1">
<%--
<ul><logic:present name="SYSNEWS"><logic:iterate name="SYSNEWS" id="IDSYSNEWS" offset="0" indexId="seq">
<li><bean:define id="syne_id" name="IDSYSNEWS" property="syne_id" type="java.lang.Integer"/><a target="_blank" href="<%=UrlRewriteManager.dynamic2static("/comment.do?syne_id="+syne_id)%>" class="H1"><bean:define id="syne_title" name="IDSYSNEWS" property="syne_title" type="java.lang.String"/><ding9:substr title="<%=syne_title%>" len="24"/></a></li></logic:iterate></logic:present>
</ul>
--%>
<ul><c:forEach items="${SYSNEWS}" var="IDSYSNEWS" varStatus="status">
<li><a target="_blank" href="<c:url value="/comment.do?syne_id=${IDSYSNEWS.syne_id}"/>" class="H1"><ding9:substr title="${IDSYSNEWS.syne_title}" len="24"/></a></li>
</c:forEach></ul>
</div>
</div>
</div>
<div id="c03_r">
<div id="c0301">
<div id="c0301_l"><img src="/images/tj.gif" width="40" height="150"/></div>
<div id="c0301_r">
<table cellspacing="0" cellpadding="0" style="background: #f6f6f6">
<tr>
<td width="40" align="center"><DIV id="ar1"><A onclick="callServer('pre');" style="cursor:pointer;"><img src="/images/arrowRectTallLeft.gif" alt="更多小九九推荐商品"/></A></DIV></td>
<td>
<div style="background:#f6f6f6; left:0px; overflow:hidden; width:570px; height:210px;">
<div style="width: 570px; position: absolute">
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<logic:present name="scroll0"><bean:write name="scroll0" filter="false"/></logic:present>
<logic:present name="scroll1"><bean:write name="scroll1" filter="false"/></logic:present>
<logic:present name="scroll2"><bean:write name="scroll2" filter="false"/></logic:present>
<logic:present name="scroll3"><bean:write name="scroll3" filter="false"/></logic:present>
<logic:present name="scroll4"><bean:write name="scroll4" filter="false"/></logic:present>
<logic:present name="scroll5"><bean:write name="scroll5" filter="false"/></logic:present>
</tr>
</table>
</div>
</div>
</td>
<td width="40" align="center"><DIV id="ar2"><A onclick="callServer('next');" style="cursor:pointer;"><img src="/images/arrowRectTallRt.gif" alt="更多小九九推荐商品"/></A></DIV></td>
</tr>
</table>
</div>
</div>
<div id="c0302">
<div id="c0302_l">
<div class="menu001"><img src="/images/cpcp.gif" width="115" height="33" border="0"/></div>
<div class="div4">
<ul><logic:present name="evaList"><logic:iterate name="evaList" id="vo" offset="0" indexId="seq">
<li>
<span class="H3">[<bean:write name="vo" property="prsoName" filter="false" />]</span><bean:define id="article_id" name="vo" property="article_id" type="java.lang.Integer"/><bean:define id="prsoId" name="vo" property="prsoId" type="java.lang.Integer"/><bean:define id="title" name="vo" property="title" type="java.lang.String"/>
<bean:define id="prsoNameOneEn" name="vo" property="prsoNameOneEn" type="java.lang.String"/>
<%--
<a target="_blank" href="<%=ProjectEnvironment.getChannelDomainName(String.valueOf(prsoId))+UrlRewriteManager.dynamic2static("/news/news-info.do?article_id="+article_id)%>" class="H1"><ding9:substr title="<%=title%>" len="32"/></a>
--%>
<a target="_blank" href="<%=ProjectEnvironment.getChannelDomainName(String.valueOf(prsoId))+response.encodeURL("/news/news-info.do?article_id="+article_id+"&prso_id_one="+prsoId+"&prso_name_one_en="+prsoNameOneEn)%>" class="H1"><ding9:substr title="<%=title%>" len="32"/></a>
</li></logic:iterate></logic:present>
</ul>
</div>
</div>
<div id="c0302_r">
<div class="menu001"><img src="/images/zydg.gif" width="115" height="33" border="0"/></div>
<div class="div4">
<ul><logic:present name="direList"><logic:iterate name="direList" id="vo" offset="0" indexId="seq">
<li>
<span class="H3">[<bean:write name="vo" property="prsoName" filter="false"/>]</span><bean:define id="article_id" name="vo" property="article_id" type="java.lang.Integer"/><bean:define id="prsoId" name="vo" property="prsoId" type="java.lang.Integer"/><bean:define id="title" name="vo" property="title" type="java.lang.String"/>
<bean:define id="prsoNameOneEn" name="vo" property="prsoNameOneEn" type="java.lang.String"/>
<%--
<a target="_blank" href="<%=ProjectEnvironment.getChannelDomainName(String.valueOf(prsoId))+UrlRewriteManager.dynamic2static("/news/news-info.do?article_id="+article_id)%>" class="H1"><ding9:substr title="<%=title%>" len="32"/></a>
--%>
<a target="_blank" href="<%=ProjectEnvironment.getChannelDomainName(String.valueOf(prsoId))+response.encodeURL("/news/news-info.do?article_id="+article_id+"&prso_id_one="+prsoId+"&prso_name_one_en="+prsoNameOneEn)%>" class="H1"><ding9:substr title="<%=title%>" len="32"/></a>
</li></logic:iterate></logic:present>
</ul>
</div>
</div>
</div>
<table cellspacing="0" cellpadding="0">
<tr><td>
<div id="c0303">
<div id="c0303_l"><img src="/images/m001.gif" width="19" height="114"/></div>
<div id="c0303_l1"><br/><a href="http://mobile.ding9.com" target="_blank"><img src="/images/l001.gif" alt="手机通讯" width="60" height="88" border="0"/></a></div>
<div id="c0303_l2">
<div class="div5">
<ul>
<c:choose><c:when test="${!empty ListMobile}"><c:forEach items="${ListMobile}" var="mobile"><li><a id="nowrap" target="_blank" href="${mobile.url}" class="H3">${mobile.title}</a></li></c:forEach></c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div>
</div>
<div id="c0303_m"><img src="/images/m002.gif" width="19" height="114"/></div>
<div id="c0303_m1"><br/><a href="http://digital.ding9.com" target="_blank"><img src="/images/l002.gif" alt="数码电子" border="0"/></a></div>
<div id="c0303_m2">
<div class="div5">
<ul>
<c:choose><c:when test="${!empty ListDigital}"><c:forEach items="${ListDigital}" var="digital"><li><a id="nowrap" target="_blank" href="${digital.url}" class="H3">${digital.title}</a></li></c:forEach></c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div>
</div>
<div id="c0303_r"><img src="/images/m003.gif" width="19" height="114"/></div>
<div id="c0303_r1"><br/><a href="http://beauty.ding9.com" target="_blank"><img src="/images/l003.gif" alt="美容美体" border="0"/></a></div>
<div id="c0303_r2">
<div class="div5">
<ul>
<c:choose><c:when test="${!empty ListBeauty}"><c:forEach items="${ListBeauty}" var="beauty"><li><a id="nowrap" target="_blank" href="${beauty.url}" class="H3">${beauty.title}</a></li></c:forEach></c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div>
</div>
</div>
</td></tr><tr><td>
<div id="c0304">
<div id="c0304_l"><img src="/images/m004.gif" width="19" height="114"/></div>
<div id="c0304_l1"><br/><a href="http://computer.ding9.com" target="_blank"><img src="/images/l004.gif" alt="电脑网络" width="60" height="88" border="0"/></a></div>
<div id="c0304_l2">
<div class="div5">
<ul>
<c:choose><c:when test="${!empty ListComputer}"><c:forEach items="${ListComputer}" var="computer"><li><a id="nowrap" target="_blank" href="${computer.url}" class="H3">${computer.title}</a></li></c:forEach></c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div>
</div>
<div id="c0304_m"><img src="/images/m005.gif" width="19" height="114"/></div>
<div id="c0304_m1"><br/><a href="http://office.ding9.com" target="_blank"><img src="/images/l005.gif" alt="办公用品" width="60" height="88" border="0"/></a></div>
<div id="c0304_m2">
<div class="div5">
<ul>
<c:choose><c:when test="${!empty ListOffice}"><c:forEach items="${ListOffice}" var="office"><li><a id="nowrap" target="_blank" href="${office.url}" class="H3">${office.title}</a></li></c:forEach></c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div>
</div>
<div id="c0304_r"><img src="/images/m006.gif" width="19" height="114"/></div>
<div id="c0304_r1"><br/><a href="http://hea.ding9.com" target="_blank"><img src="/images/l006.gif" alt="家用电器" width="60" height="88" border="0"/></a></div>
<div id="c0304_r2">
<div class="div5">
<ul>
<c:choose><c:when test="${!empty ListHea}"><c:forEach items="${ListHea}" var="hea"><li><a id="nowrap" target="_blank" href="${hea.url}" class="H3">${hea.title}</a></li></c:forEach></c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div>
</div>
</div>
</td></tr><tr><td>
<div id="c0305">
<div id="c0305_l"><img src="/images/m007.gif" width="19" height="114"/></div>
<div id="c0305_l1"><br/><a href="http://jingpin.ding9.com" target="_blank"><img src="/images/l007.gif" alt="精品饰品" width="60" height="88" border="0"/></a></div>
<div id="c0305_l2">
<div class="div5">
<ul>
<c:choose><c:when test="${!empty ListLove}"><c:forEach items="${ListLove}" var="love"><li><a id="nowrap" target="_blank" href="${love.url}" class="H3">${love.title}</a></li></c:forEach></c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div>
</div>
<div id="c0305_m"><img src="/images/m008.gif" width="19" height="114"/></div>
<div id="c0305_m1"><br/><a href="http://coupon.ding9.com" target="_blank"><img src="/images/l008.gif" alt="优惠券" width="60" height="88" border="0"/></a></div>
<div id="c0305_m2">
<div class="div5">
<ul>
<c:choose><c:when test="${!empty ListCoupon}"><c:forEach items="${ListCoupon}" var="coupon"><li><a id="nowrap" target="_blank" href="${coupon.url}" class="H3">${coupon.title}</a></li></c:forEach></c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div>
</div>
<div id="c0305_r"><img src="/images/m009.gif" width="19" height="114"/></div>
<div id="c0305_r1"><br/><a href="http://promotion.ding9.com" target="_blank"><img src="/images/l009.gif" alt="折扣促销" width="60" height="88" border="0"/></a></div>
<div id="c0305_r2">
<div class="div5">
<ul>
<c:choose><c:when test="${!empty ListPromotion}"><c:forEach items="${ListPromotion}" var="pro"><li><a id="nowrap" target="_blank" href="${pro.url}" class="H3">${pro.title}</a></li></c:forEach></c:when><c:otherwise>暂无信息!</c:otherwise></c:choose>
</ul>
</div>
</div>
</div>
</td></tr></table>
</div>
</div>
</td></tr><tr><td>
<div>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<td height="56" bgcolor="#FFFFFF">
<table width="98%" border="0" align="center" cellpadding="0" cellspacing="0">
<tr>
<td width="44" height="39" align="center" class="H8c">友情<br/>链接</td>
<td width="1" bgcolor="#CCCCCC"></td>
<td width="16">&nbsp;</td>
<td width="819" class="H5"><%-- 2014-07-27 改为动态取友情连接 --%>
<%-- <logic:present name="yqlj">
	<logic:iterate name="yqlj" id="IDyqlj" offset="0" indexId="seq"> |
<a target="_blank" href="<bean:write name="IDyqlj" property="webURL" filter="false"/>" class="H5"><bean:write name="IDyqlj" property="webName" filter="false"/></a></logic:iterate>
	</logic:present> --%>
<c:choose><c:when test="${!empty yqlj}"><c:forEach items="${yqlj}" var="lj1"> |<a id="nowrap" target="_blank" href="${lj1.webURL}" class="H5">${lj1.webName}</a></c:forEach></c:when>
<c:otherwise>
<a class="H5" target="_blank" href="http://www.avonshop.cn" >雅芳</a> |
<a class="H5" target="_blank" href="http://www.ccnf.com/" >中国展览交易网</a> |
<a class="H5" target="_blank" href="http://www.128uu.com" >酒店预订</a> |
<a class="H5" target="_blank" href="http://www.zglysp.com/" >网上购物</a> |
<a class="H5" target="_blank" href="http://www.tlx.com.cn/" >天路行购物吧</a> |
<a class="H5" target="_blank" href="http://www.ayjewelry.com/" >饰品</a> |
<a class="H5" target="_blank" href="http://hotel.mapbar.com/" >mapbar酒店地图</a> |
<a class="H5" target="_blank" href="http://www.onlylove.hk/" > 惟有爱情感礼品  </a> |
<a class="H5" target="_blank" href="http://www.epclean.com/" > 环保清洗网  </a> |
<a class="H5" target="_blank" href="http://www.1m1m.com/" >1m1m健康网 </a>
	</c:otherwise></c:choose>
</td></tr>
</table>
</td>
</tr>
</table>
</div>
</td></tr></table>
<%@ include file="include/bottom.jsp"%>
</center>
<script language="javascript" type="text/javascript">
window.focus();
function add_Move(){
var children = document.getElementsByTagName("a") || document.all;
for(i = 0; i < children.length; i++){
if(children[i].id=="nowrap"){
if(document.all){
children[i].attachEvent ("onmouseover", doMove);
}else{
children[i].addEventListener("mouseover", doMove, false);
}
}
}
}
add_Move();
</script>

</body>
</html>
<script type="text/javascript" src="http://click.ding9.com/js/type1.js"></script>
<script type="text/javascript" src="http://click.ding9.com/js/stat.js"></script>

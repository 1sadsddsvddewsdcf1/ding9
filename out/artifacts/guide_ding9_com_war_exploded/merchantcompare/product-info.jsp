<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/fmt.tld" prefix="fmt" %>
<%@ page import="com.ding9.util.UrlRewriteManager,com.ding9.util.Environment"%>
<html>
<head>
<title><logic:present name="Title"><bean:write name="Title" filter="false"/></logic:present></title>
<META NAME="description" CONTENT="<logic:present name="Desc">
<bean:write name="Desc" filter="false"/></logic:present>"/>
<META NAME="keywords" CONTENT="<logic:present name="KeyWords">
<bean:write name="KeyWords" filter="false"/></logic:present>"/>
<logic:present name="META"><bean:write name="META" filter="false"/></logic:present>

<link href="/css/_cm_tefont.css" rel="stylesheet" type="text/css"/>
<link href="/css/_cm_te.css" rel="stylesheet" type="text/css"/>
<link href="/css/_cm_fzfont.css" rel="stylesheet" type="text/css"/>
<link href="/css/_cm_fz.css" rel="stylesheet" type="text/css"/>
<link href="/css/_cm_nav.css" rel="stylesheet" type="text/css"/>
<link href="/css/xqcss.css" rel="stylesheet" type="text/css"/>
<link href="/css/indexfont.css" rel="stylesheet" type="text/css"/>

<script type="text/javascript" src="/js/fzcomment.js"></script>
<script type="text/javascript" src="/js/tecomment.js"></script>
<script type="text/javascript" src="/js/user.js"></script>

<script type="text/javascript">
function GetXmlHttp3(url){//获取xmlHttp
var agt = navigator.userAgent.toLowerCase();
var is_opera = (agt.indexOf("opera") != -1);
var is_ie = (agt.indexOf("msie") != -1) && document.all && !is_opera;
var is_ie5 = (agt.indexOf("msie 5") != -1) && document.all;
var xmlhttp;
if (is_ie) {
var control = (is_ie5) ? "Microsoft.XMLHTTP" : "Msxml2.XMLHTTP";
try {
xmlhttp = new ActiveXObject(control);
} catch(e) {
listener.innerHTML = "<font color='green'>1";
return false;
}
} else {
xmlhttp = new XMLHttpRequest();
}
//xmlhttp.onreadystatechange = processRequestChange;
try{
xmlhttp.open("GET", url, false);
xmlhttp.send(null);
}catch(e){
return false;
}
if (xmlhttp.readyState == 4){
if (xmlhttp.status == 200){
 return xmlhttp.responseXML;
}else{
return false;
}
}else{
return false;
}
}
function tag(pid,pname){//收藏
var tag=trim(document.getElementById('tag').value);//标签
var remarks=document.getElementById('remarks').value;//说明
var type=document.getElementById('tag_type').value;//收藏类型
var tag_url=document.URL;//收藏地址
var url='/collection/collection.do?method=doSave&type=1&title='+ pname +'&id='+ pid +'&url='+ tag_url +'&remark='+ remarks +'&tag='+tag;
var Status=GetXmlHttp3(url);
var flag=Status.getElementsByTagName("flag")[0].firstChild.data;
var count=Status.getElementsByTagName("count")[0].firstChild.data;
if(flag==1){//成功
//document.getElementById('newDiv').innerHTML="<br><br><br><div align='center'><b>收藏成功！</b><br><br> <a href='#'>查看我的收藏</a> <br><br><input type='button' value=' 关 闭 ' onClick=document.body.removeChild(document.getElementById('newDiv'))></div>";
document.getElementById('newDiv').innerHTML="<br><div align='center'><img src='/images/collection_right.gif'> &nbsp; <b>收藏成功！</b><br> 已有<font style='text-decoration:underline;font-family:Verdana, Arial, Helvetica, sans-serif' size=12 color='#298AFF'>"+ count +"</font>人收藏 <a target='_blank' href='${pForm.userDomain}/main.jsp?page=c:1'>查看我的收藏</a> <br><br><input type='button' value=' 关 闭 ' onClick=document.body.removeChild(document.getElementById('newFrame'));document.body.removeChild(document.getElementById('newDiv'))></div>";
}else{//重复
document.getElementById('newDiv').innerHTML="<br><div align='center'><img src='/images/collection_error.gif'> &nbsp;<b>您已经收藏过了</b><br> 已有<font style='text-decoration:underline;font-family:Verdana, Arial, Helvetica, sans-serif' size=12 color='#298AFF'>"+ count +"</font>人收藏 <a target='_blank' href='${pForm.userDomain}/main.jsp?page=c:1'>查看我的收藏</a> <br><br><input type='button' value=' 关 闭 ' onClick=document.body.removeChild(document.getElementById('newFrame'));document.body.removeChild(document.getElementById('newDiv'))></div>";
}
}
function KeyDown(btnname){//收藏登陆
if (event.keyCode == 13) {
event.returnValue=false;
event.cancel = true;
eval(btnname+'.click()');
}
}
function login_col(pid,pname){
var username=document.all.user.value;
var password=document.all.psw.value;
if( username ==""){
alert("请输入用户名！");
document.all.user.focus();
return;
}
if( password ==""){
alert("请输入密码！");
document.all.psw.focus();
return ;
}
document.all.user.disabled=true;
document.all.psw.disabled=true;
document.all.loading2.innerHTML="&nbsp;&nbsp;<img src=/images/info_wait.gif align='top'>  登陆中…"
var url="/logon.do?username="+ username +"&password="+ password +"&rememberMe=true";
var Status=GetXmlHttp3(url);
var flag=Status.getElementsByTagName("flag")[0].firstChild.data;
if(flag==1){
document.getElementById('newDiv').innerHTML="<div align='right'><input type='image' src='/images/close2.gif' onClick=document.body.removeChild(document.getElementById('newFrame'));document.body.removeChild(document.getElementById('newDiv')) /></div> <span class='fzH2c'>填写收藏信息</span><span class='fzH1'>(选填，可帮助您分类、查找。)</span><br><br><span id=loading>&nbsp;<span class='fzH1c'>标签：<input name='tag' id='tag' type='text' size='30' maxlength='30' class='flatinput' \/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>我最常用的</b>：<logic:present name='tagList'><logic:iterate id='vo' name='tagList'><a href='#' class='fzH8c' id='<bean:write name='vo' property='uslb_id'/>' onClick=document.getElementById('tag').value=document.getElementById('<bean:write name='vo' property='uslb_id'/>').innerHTML><bean:write name='vo' property='lb_name'/></a> </logic:iterate></logic:present> <br>&nbsp;说明：<textarea name='remarks' id='remarks' cols='40' rows='2' class='flatinput' id='remark'></textarea>&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='checkbox' checked='true'/><span class='fzH1'>公开此收藏</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='' type='button' onclick='tag("+ pid +",\""+ pname +"\");' align='absmiddle' value='确　定'/><input type='hidden' value='1' id='tag_type' name='tag_type'/></span>";
}else{
alert('密码错误！');
document.getElementById('newDiv').innerHTML="<div align='right'><input type='image' src='/images/close2.gif' onClick=document.body.removeChild(document.getElementById('newFrame'));document.body.removeChild(document.getElementById('newDiv')) /></div><b>请登录</b><br><span id=loading2 /><br>&nbsp;&nbsp;&nbsp;&nbsp;<span id=loading>用户名&nbsp;<input onkeydown=KeyDown('document.all.Button1'); name='user' id='user' type='text' size='20' maxlength='20' class='flatinput' \/><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码&nbsp;&nbsp;<input onkeydown=KeyDown('document.all.Button1'); name='psw' id='psw' type='password' size='20' class='flatinput'/>&nbsp;<a href='${pForm.userDomain}/logon/fillname.jsp' target='_blank'>忘记密码?</a>&nbsp;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='' type='image' id=Button1 name=Button1 src='/images/login_btn.gif' onclick='login_col("+ pid +",\""+ pname +"\");' align='absmiddle'/>&nbsp;<a href='${pForm.userDomain}/register/register.html' target='_blank'>免费注册</a>&nbsp;</span>";
}
}
</script>
<script language="javascript">
var docEle = function() {
return document.getElementById(arguments[0]) || false;
}
function openNewDiv(f_id,_id,pid,pname) {
var m = "mask";
//if (docEle(_id)) document.removeChild(docEle(_id));
//if (docEle(m)) document.removeChild(docEle(m));
// 新激活图层
var newFrame=document.createElement("iframe");
newFrame.id = f_id;
newFrame.style.position="absolute";
//newFrame.style.z-index="9";
newFrame.style.width = "450px";
newFrame.style.height = "200px";
newFrame.style.top=(document.getElementById('collection').offsetTop+180)+"px";
newFrame.style.left=(document.getElementById('collection').offsetLeft+150)+"px";
document.body.appendChild(newFrame);
var newDiv = document.createElement("div");
//设置属性
newDiv.id = _id;
newDiv.style.position = "absolute";
newDiv.style.zIndex = "9999";
newDiv.style.width = "450px";
newDiv.style.height = "200px";
//newDiv.style.top = "50px";
newDiv.style.top=(document.getElementById('collection').offsetTop+180)+"px";
newDiv.style.left=(document.getElementById('collection').offsetLeft+150)+"px";
//newDiv.style.left = (parseInt(document.body.scrollWidth) - 300) / 2 + "px"; // 屏幕居中
newDiv.style.background = "#EEF3F6";
newDiv.style.border = "2px solid #3CA1DD";
newDiv.style.padding = "5px";
//newDiv.innerHTML = "<img src='login_key.gif'> <b>请登录</b><br><br><br>&nbsp;&nbsp;&nbsp;&nbsp;<span id=loading>用户名&nbsp;<input name='user' id='user' type='text' size='20' maxlength='20' class='flatinput' \/><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码&nbsp;&nbsp;<input name='psw' id='psw' type='password' size='20' class='flatinput'/>&nbsp;<a href=''>忘记密码?</a>&nbsp;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='' type='image' src='login_btn.gif' onclick='Users.Login();' align='absmiddle'/>&nbsp;<a href=''>免费注册</a>&nbsp;</span>";
//根据cookies的情况判别页面的显示
var cookieValue = Cookies.Get("SSOUserId");
var cookieID=0;
if(cookieValue!=null){
cookieID = cookieValue.split(":")[0];
}
if(cookieID != 0 && cookieValue!=null){
//alert('Cookies存在，填写收藏信息!');
newDiv.innerHTML="<div align='right'><input type='image' src='/images/close2.gif' onClick=document.body.removeChild(document.getElementById('newFrame'));document.body.removeChild(document.getElementById('newDiv')) /></div> <span class='fzH2c'>填写收藏信息</span><span class='fzH1'>(选填，可帮助您分类、查找。)</span><br><br><span id=loading>&nbsp;<span class='fzH1c'>标签：<input name='tag' id='tag' type='text' size='30' maxlength='30' class='flatinput' \/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>我最常用的</b>：<logic:present name='tagList'><logic:iterate id='vo' name='tagList'><a href='#' class='fzH8c' id='<bean:write name='vo' property='uslb_id'/>' onClick=document.getElementById('tag').value=document.getElementById('<bean:write name='vo' property='uslb_id'/>').innerHTML><bean:write name='vo' property='lb_name'/></a> </logic:iterate></logic:present> <br>&nbsp;说明：<textarea name='remarks' id='remarks' cols='40' rows='2' class='flatinput' id='remark'></textarea>&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='checkbox' checked='true'/><span class='fzH1'>公开此收藏</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='' type='button' onclick='tag("+ pid +",\""+ pname +"\");' align='absmiddle' value='确　定'/><input type='hidden' value='1' id='tag_type' name='tag_type'/></span>";
}else{
//alert('Cookies不存在，请登陆');
newDiv.innerHTML = "<div align='right'><input type='image' src='/images/close2.gif' onClick=document.body.removeChild(document.getElementById('newFrame'));document.body.removeChild(document.getElementById('newDiv')) /></div><b>请登录</b><br><span id=loading2 /><br>&nbsp;&nbsp;&nbsp;&nbsp;<span id=loading>用户名&nbsp;<input onkeydown=KeyDown('document.all.Button1'); name='user' id='user' type='text' size='20' maxlength='20' class='flatinput' \/><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码&nbsp;&nbsp;<input onkeydown=KeyDown('document.all.Button1'); name='psw' id='psw' type='password' size='20' class='flatinput'/>&nbsp;<a href='${pForm.userDomain}/logon/fillname.jsp' target='_blank'>忘记密码?</a>&nbsp;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='' type='image' id=Button1 name=Button1 src='/images/login_btn.gif' onclick='login_col("+ pid +",\""+ pname +"\");' align='absmiddle'/>&nbsp;<a href='${pForm.userDomain}/register/register.html' target='_blank'>免费注册</a>&nbsp;</span>";
}
document.body.appendChild(newDiv);
// mask图层
var newMask = document.createElement("div");
newMask.id = m;
newMask.style.position = "absolute";
newMask.style.zIndex = "1";
newMask.style.width = document.body.scrollWidth + "px";
newMask.style.height = document.body.scrollHeight + "px";
newMask.style.top = "0px";
newMask.style.left = "0px";
//newMask.style.background = "#000";
newMask.style.filter = "alpha(opacity=40)";
newMask.style.opacity = "0.40";
document.body.appendChild(newMask);
// 关闭mask和新图层
var newA = document.createElement("a");
newA.href = "#";
newA.innerHTML = "";
newA.onclick = function() {
 document.body.removeChild(docEle(_id));
 document.body.removeChild(docEle(m));
 return false;
}
newDiv.appendChild(newA);
}
</script>
<style type="text/css">
<!--
.input11 {font-family:verdana;background-color:#EEEEEE;border-bottom:#FFFFFF 1px solid;border-left:#CCCCCC 1px solid;border-right:#FFFFFF 1px solid;border-top:#CCCCCC 1px solid;font-size:12px;}
.input11 {font-family:verdana;background-color:#EEEEEE;border-bottom:#FFFFFF 1px solid;border-left:#CCCCCC 1px solid;border-right:#FFFFFF 1px solid;border-top:#CCCCCC 1px solid;font-size:12px;}
.input111 {font-family:verdana;background-color:#EEEEEE;border-bottom:#FFFFFF 1px solid;border-left:#CCCCCC 1px solid;border-right:#FFFFFF 1px solid;border-top:#CCCCCC 1px solid;font-size:12px;}
.input111 {font-family:verdana;background-color:#EEEEEE;border-bottom:#FFFFFF 1px solid;border-left:#CCCCCC 1px solid;border-right:#FFFFFF 1px solid;border-top:#CCCCCC 1px solid;font-size:12px;}
-->
</style>
</head>
<body>
<center>
<bean:define id="prsoNameOneEn" value="${pForm.prso_name_one_en}"/>
<c:set var="items" value="${productlist}"/>
<bean:define id="prsoIdOne" value="${items[0].prso_id_one}"/>
<bean:define id="prmaId" value="${items[0].prma_id}"/>
<bean:define id="prmaName" value="${items[0].prma_name)}"/>
<jsp:include page="/include/topproduct.jsp" flush="true">
<jsp:param name="channel_id" value="${prsoIdOne}"/>
</jsp:include>
<div id="fz001">
<div id="fz001_l">
<div style="padding-top:5px;padding-bottom:5px">
<SCRIPT type=text/javascript>
google_ad_client = "pub-6775976115289657";
google_ad_slot = "8051835046";
google_ad_width = 760;
google_ad_height = 90;
</SCRIPT>

<SCRIPT type=text/javascript src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</SCRIPT>

</div>
<c:choose>
<c:when test="${items[0].prso_id=='' or items[0].prso_id==0}">  <span class="fzH1"><a href="http://guide.ding9.com" class="fzH1">首页</a> &gt;　${items[0].prma_name.trim()}</span></c:when>
<c:otherwise>  <span class="fzH1"><a href="http://guide.ding9.com" class="fzH1">首页</a>
 &gt; <a href="${pForm.channelDomain}" class="fzH1"><c:out value="${items[0].prso_name_one}"/></a>
 &gt; <a href="<c:url value="/product/product-type.do?prso_id_three=${items[0].prso_id}&prso_name_three_en=${pForm.prso_name_three_en}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}"/>" class="fzH1"><c:out value="${items[0].prso_name}"/></a></span></c:otherwise>
</c:choose>
<div id="fz009">
<div id="fz009_l"><img src="${pForm.channelD9Sense}/DwindlePicCtl.jpg?w=160&h=160&url=<c:out value="${items[0].pic_address.trim()}" />" border="0"><br>
<%--<a class="fzH5c" href="#" onclick="collection(<%=getPrmaid%>,'<%=getPrmaName%>');">收藏商品</a>--%>
<div id="collection">
<img src="/images/fz/4_20.gif" width="24" height="25"/>
<A target="_blank" href="${pForm.channelD9Sense}/DwindlePicCtl.jpg?t=1&url=${items[0].pic_address.trim()}" class="fzH5c">放大</A> <img src="/images/collection.gif" width="18" height="18"> <a class="fzH5c" href="#" onClick="openNewDiv('newFrame','newDiv',${prmaId},'${prmaName}');">收藏</a></div>
</div><!--fz009_l-->
<div id="fz009_r">
<div class="fz100_12"><span class="fzH1">${items[0].prma_name.trim()}</span></div>
<div id="fz010">
<div id="fz010_l">
<div class="fzd005">
<ul>
<Li class="fzH1">
<span class="fzH1c">所属类别：</span>
 <a href="<c:url value="/product/product-type.do?prso_id_three=${items[0].prso_id}&prso_name_three_en=${pForm.prso_name_three_en}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}"/>" class="fzH6" target="_blank">
<c:out value="${items[0].prso_name.trim()}"/></a>
&nbsp;&nbsp;&nbsp;&nbsp;

<span class="fzH1c">所属品牌：</span>
<a href="<c:url value="/product/product-type.do?prbr_id=${items[0].prbr_id}&prso_id_three=${items[0].prso_id}&prso_name_three_en=${pForm.prso_name_three_en}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}"/>" class="fzH6" target="_blank">
<c:out value="${items[0].prbr_name.trim()}"/></a>
<br/>
</Li>
<c:if test="${items[0].prso_id==31}">
<c:if test="${ppara!=null}">
<c:choose>
<c:when test="${paracount>0}">
<Li class="fzH1">
<c:forEach items="${ppara}" var="pparainfo" begin="0" step="1" varStatus="var">
<!--<c:if test="${pparainfo.Param_name.trim()=='上市时间' and pparainfo.Param_value.trim()!=''}">-->
<span class="fzH1c"><!--<c:out value="${pparainfo.Param_name}"/>-->上市时间：</span><c:out value="${pparainfo.Param_value}"/>&nbsp;&nbsp;
<!--</c:if>
<c:if test="${pparainfo.Param_name.trim()=='网络制式' and pparainfo.Param_value.trim()!=''}">-->
<span class="fzH1c"><!--<c:out value="${pparainfo.Param_name}"/>-->网络制式：</span><c:out value="${pparainfo.Param_value}"/>
<!--</c:if>-->
</c:forEach>
<br/></Li>
</c:when>
<c:otherwise></c:otherwise>
</c:choose>
</c:if>
</c:if>
<li class="fzH1">
<span class="fzH1c">价格范围：</span>
<span class="H6">
<c:choose>
   <c:when test="${items[0].min_price==0}">   
   		<span>N/A</span> 
   </c:when>   
   <c:otherwise> 
   		 ￥<c:out value="${items[0].min_price}" />元
   		 - ￥<c:out value="${items[0].max_price}" />元，
   		 
   </c:otherwise>
  
</c:choose>
</span> 
<span class="H6">
<c:choose>
	<c:when test="${items[0].merchant_count==0}">
		暂无商家
	</c:when>
	<c:otherwise>
		<span>来自 <c:out value="${items[0].merchant_count}" />个商家</span>
	</c:otherwise>
</c:choose> 
</span>
 <br />
</li>
<li class="fzH1">
<span class="fzH1c">
<logic:present name="minPriceMerchant" > 
<bean:define id="Lprma_id" name='minPriceMerchant' property="prmaId" type="java.lang.Integer"/>
<bean:define id="Lmerc_id" name='minPriceMerchant' property="mercId" type="java.lang.Integer"/>



<logic:present name="minPriceMerchant" property="comments_level">
<bean:define id="alt_credit" property="comments_level" name="minPriceMerchant" type="java.lang.Integer"/>
</logic:present>
<logic:present name="minPriceMerchant" property="meprWebAddress">
<bean:define id="ggurl" name="minPriceMerchant" property="meprWebAddress" type="String"/>
<A href="
<%=response.encodeURL("/click/merchant-click.do?prma_id="+Lprma_id+"&merc_id="+Lmerc_id+"&url="+UrlRewriteManager.encodeURL(ggurl))%>" target=_blank class="fzH6">
<font style="color:#666666;font-weight:bold">最低价格：</font>  ￥<bean:write name="minPriceMerchant" filter="false" property="meprPrice"/>
      <font style="color:#666666;font-weight:bold"> 在：</font> <bean:write name="minPriceMerchant" filter="false" property="merc_com_name"/> 
</a>
</logic:present>
</logic:present>
</span>
</li>
<li class="fzH1"><span class="fzH1c">产品描述：</span>
<c:choose>
<c:when test="${items[0].prma_remark.length() > 160}"><c:out value="${items[0].prma_remark.substring(0,120)}..."/></c:when>
<c:otherwise><c:out value="${items[0].prma_remark.trim()}"/></c:otherwise>
</c:choose>&nbsp;&nbsp;
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=ppara"/>#remark" class="fzH6">更多...</a>
</li>

</ul>
</div>
</div><!--fz010_l-->
<div id="fz010_r">
<span class="fzH1">产品星级：<img src="/images/ss/stars_<c:out value="${items[0].product_level}" />.gif" width="65" height="12"/>
<br/><br/>用户评论（<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=comment"/>#viewc" class="fzH6"><logic:present name="comment_count"><bean:write name="comment_count" /></logic:present></a>）
<br/><br/>
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=comment"/>#AddContent" class="fzH8c coblue bold"><img src="/images/pl.gif" width="103" height="26" border="0"/></a><br/>
<!--发表评论-->
<a href="#"><img src="/images/cs.gif" width="103" height="26" border="0" /></a><br /><!--产品参数-->
<A href="<%=response.encodeURL("/click/merchant-click.do?prma_id="+Lprma_id+"&merc_id="+Lmerc_id+"&url="+UrlRewriteManager.encodeURL(ggurl))%>" target=_blank><img src="/images/product_onelook.gif" width="95" height="30" border="0" /></A><br /><!--去购买--><br/>
</span></div>
<!--fz010_r-->
</div><!--fz010-->
</div><!--fz009_r-->
</div><!--fz009-->

<!-- google ad  -->
<div style="padding-bottom:5px">
<script type="text/javascript">
google_ad_client = "pub-6775976115289657";
google_ad_slot = "6937297346";
google_ad_width = 760;
google_ad_height = 90;
</script>
<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script>
</div>

<div class="fz100_4">
<table height="23" border="0" cellpadding="0" cellspacing="0" id="fzsecTable">
<tr>
<td width="80" height="23" align="center" valign="middle" class="<c:choose><c:when test="${type!='ppara' and type!='comment' and type!='promotion'}">fz2</c:when><c:otherwise>fz1</c:otherwise></c:choose>">
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=merchant"/>" class="fzH1">国内商家</a>
</td>
<td width="80" align="center" valign="middle" class="<c:choose><c:when test="${type=='ppara'}">fz2</c:when><c:otherwise>fz1</c:otherwise></c:choose>">
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=ppara"/>" class="fzH1">产品详情</a>
</td>
<td width="80" align="center" class="<c:choose><c:when test="${type=='comment'}">fz2</c:when><c:otherwise>fz1</c:otherwise></c:choose>">
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=comment"/>" class="fzH1">产品点评</a>
</td>
<td width="80" align="center" class="<c:choose><c:when test="${type=='promotion'}">fz2</c:when><c:otherwise>fz1</c:otherwise></c:choose>">
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=promotion"/>" class="fzH1">促销信息</a>
</td>
</tr>
</table>
</div>
<!--fz100_4-->
<c:choose>
<c:when test="${type=='merchant'}">
<jsp:include page="/merchantcompare/merchantinfo.jsp" flush="true"></jsp:include>
</c:when>
<c:when test="${type=='ppara'}">
<jsp:include page="/merchantcompare/productpara.jsp" flush="true"></jsp:include>
</c:when>
<c:when test="${type=='comment'}">
<jsp:include page="/merchantcompare/comment.jsp" flush="true"></jsp:include>
</c:when>
<c:when test="${type=='promotion'}">
<jsp:include page="/merchantcompare/promotion.jsp" flush="true"></jsp:include>
</c:when>
<c:otherwise>
<jsp:include page="/merchantcompare/merchantinfo.jsp" flush="true"></jsp:include>
</c:otherwise>
</c:choose>
<div><logic:present name="midword"> <bean:write name="midword" filter="false"/></logic:present></div>
<c:choose>
<c:when test="${items[0].prso_id=='' or items[0].prso_id==0}"></c:when>
<c:otherwise>

<div id="xqpro3">
<div id="xqpro3_1">

<SCRIPT type=text/javascript>
google_ad_client = "pub-6775976115289657";

google_ad_slot = "4429908876";
google_ad_width = 250;
google_ad_height = 235;

</SCRIPT>

<SCRIPT type=text/javascript src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</SCRIPT>
</div>
<c:choose>
<c:when test="${diffcount>0}">
 <div id="xqpro3_2">
 <div class="xqkun004 bold"><font class="fzH1c" >相关商品</font></div> 
<div class="xqpro1">
<ul>
<c:forEach items="${diffproductlist}" var="info" begin="0" step="1" varStatus="var"><bean:define id="diffPrmaid" value="${info.prma_id}"/>
<li>
<div class="fz80">
<a href="<c:url value="/product/product-info.do?prma_id=${diffPrmaid}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}"/>">
<img alt="<c:choose><c:when test="${info.prma_name.length() > 7}"><c:out value="${info.prma_name.substring(0,5)}.."/></c:when><c:otherwise><c:out value="${info.prma_name.trim()}"/></c:otherwise></c:choose>" src="${pForm.channelD9Sense}/DwindlePicCtl.jpg?w=80&h=80&url=${info.pic_address}" border="0"/>
</a>
</div>
<a href="<c:url value="/product/product-info.do?prma_id=${diffPrmaid}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}"/>" class="fzH1" title="<c:out value="${info.prma_name}" />">
<c:choose><c:when test="${info.prma_name.length() > 16}"><c:out value="${info.prma_name.substring(0,12)}..."/></c:when><c:otherwise>${info.prma_name.trim()}</c:otherwise></c:choose>
</a><br/>
<span class="fzH6">${info.min_price}元起</span></li>
</c:forEach>
</ul>
</div><!--xqpro1-->
</div><!--xqpro3_2-->
</c:when>
</c:choose>
</div>

<c:choose>
<c:when test="${samecount>0}">
<div class="xqkun004 bold"><font class="fzH1c"> 商家推荐商品</font></div>
 <div class="clear"></div>
 <div class="xqpro1">
<ul>
<c:forEach items="${sameproductlist}" var="info" begin="0" step="1" varStatus="var"><bean:define id="samePrmaid" value="${info.prma_id}"/>
<li>
<div class="fz80">
<a href="<c:url value="/product/product-info.do?prma_id=${samePrmaid}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}"/>">
<img alt="<c:choose><c:when test="${info.prma_name.length() > 7}"><c:out value="${info.prma_name.substring(0,5)}..."/></c:when><c:otherwise>${info.prma_name.trim()}</c:otherwise></c:choose>" src="${pForm.channelD9Sense}/DwindlePicCtl.jpg?w=80&h=80&url=${info.pic_address}" border="0"/>
</a></div><br/>
<a href="<c:url value="/product/product-info.do?prma_id=${samePrmaid}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}"/>" class="fzH1" title="${info.prma_name}">
<c:choose><c:when test="${info.prma_name.length() > 16}"><c:out value="${info.prma_name.trim().substring(0,12)}..."/></c:when><c:otherwise>${info.prma_name.trim()}</c:otherwise></c:choose>
</a><br/>
<span class="fzH6">${info.min_price}元起</span>
</li>
</c:forEach>
</ul>
</div><!--xqpro1-->
</c:when>
<c:otherwise></c:otherwise>
</c:choose>

<div id="fz015">

</div><!--fz015-->
</c:otherwise>
</c:choose>
<logic:present name="bottomad"> <bean:write name="bottomad" filter="false"/></logic:present>
</div><!--fz001_l-->
<div id="fz001_r">
<div>
<div>


</div><!--d9d003-->
</div><!--d9d002-->
</div><!--fz001_r-->
<logic:present name="rigmid"> <bean:write name="rigmid" filter="false"/></logic:present>
</div><!--fz001-->
<jsp:include page="/include/bottom.jsp" flush="true" />
</center>
<script language="javascript" src="http://count47.51yes.com/click.aspx?id=476604651&logo=1"></script>
</body>
</html>

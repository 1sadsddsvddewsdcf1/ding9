<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<%@ page import="com.ding9.util.StringHelper"%>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<meta http-equiv="Expires" CONTENT="0"/>
<meta http-equiv="Cache-Control" CONTENT="no-cache"/>
<meta http-equiv="Pragma" CONTENT="no-cache"/>
<script type="text/javascript" src="/js/fzcomment.js"></script>
<script type="text/javascript" src="/js/tecomment.js"></script>
<c:set var="items"  value="${productlist}"/>
<bean:define id="prmaId" value="${items[0].prma_id}" ></bean:define>
<script language="javascript">
function KeyDown(btnname){
if (event.keyCode == 13) {
event.returnValue=false;
event.cancel = true;
eval(btnname+'.click()');
}
}
function CheckMyForm(fm) {
var title=oderAdd.title.value.replace(/[^\x00-\xff]/g,"**");
var conten=oderAdd.content.value.replace(/[^\x00-\xff]/g,"**");
var advantage=oderAdd.advantage.value.replace(/[^\x00-\xff]/g,"**");
var disadvantage=oderAdd.disadvantage.value.replace(/[^\x00-\xff]/g,"**");
var chk=oderAdd.chk.value;
if(title==""){
alert('���ⲻ��Ϊ��');
return false;
}else if(title.length>100){
alert('���ⲻ�ܴ���50������');
return false;
}else if(title.length<8){
alert('������벻������4������');
return false;
}else if(conten==""){
alert('���ݲ���Ϊ��');
return false;
}else if(advantage.length>200){
alert('�ŵ㲻�ܴ���100����');
return false;
}else if(disadvantage.length>200){
alert('ȱ�㲻�ܴ���100����');
return false;
}else if (conten.length<20){
alert('���ݱ��벻������10������');
return false;
}else if(conten.length>4000){
alert('���ݲ��ܴ���2000������');
return false;
}else if(chk.length!=4){
alert('��֤�������������������룡');
return false;
}
fm.submit();
}
function CheckResForm(fm) {
var Res_conten=restoreAdd.re_content.value.replace(/[^\x00-\xff]/g,"**");
if(Res_conten==""){
alert('���ݲ���Ϊ��');
return false;
}
if (Res_conten.length<20){
alert('���ݱ��벻������10������');
return false;
}
if(Res_conten.length>4000){
alert('���ݲ��ܴ���2000������');
return false;
}
fm.submit();
}
//var number=1; //
/*
function LMYC() {
var lbmc;
for (i=1;i<=number;i++) {
lbmc = eval('LM' + i);
lbmc.style.display = 'none';
}
}
*/
function ShowFLT(i) {
lbmc = eval('LM' + i);
if (lbmc.style.display == 'none') {
//LMYC();
lbmc.style.display = '';
}else {
lbmc.style.display = 'none';
}
}
function ShowRET(i) {
res = eval('RE' + i);
if (res.style.display == 'none') {
//LMYC();
res.style.display = '';
}else {
res.style.display = 'none';
}
}
function ShowContend(i) {
res = eval('messageContend' + i);
if (res.style.display == 'none') {
//LMYC();
res.style.display = '';
}else {
res.style.display = 'none';
}
res = eval('messageContendTemp' + i);
if (res.style.display == 'none') {
//LMYC();
res.style.display = '';
}else {
res.style.display = 'none';
}
}

// 
function upcount(comment_id,tmpcount) {
   restoreAdd.tmpcount.value=tmpcount;
   restoreAdd.comment_id.value = comment_id;
   var url = "http://guide.ding9.com/oder/appraise.do?method=upcount&comment_id="+comment_id;
   if (window.XMLHttpRequest) {
    req = new XMLHttpRequest();
   }else if (window.ActiveXObject) {
    req = new ActiveXObject("Microsoft.XMLHTTP");
  }
  if(req){
    req.open("GET",url, true);
    req.onreadystatechange = complete;
    req.send(null);
  }
}
function complete(){
	var count = document.getElementById("useful"+restoreAdd.tmpcount.value).innerHTML;
	var tmpcount=parseInt(count);
  if (req.readyState == 4) {
   if (req.status == 200) {
     var result = req.responseXML.getElementsByTagName("result");
     var strresult=new Array();
     for(var i=0;i<result.length&&i<1;i++){
        strresult[i]=result[i].firstChild.data;
        if(strresult[i]=='0'){
        	strresult[i]=strresult[i]+1;
        }
	 	document.getElementById("useful"+restoreAdd.tmpcount.value).innerHTML = (tmpcount+1); 
     }              
  }
 }
}
</script>
<!--fz100_4-->
<a name="viewc"></a>
<logic:present name="ReviewProduct">
<tr>
<td height="28" background="/images/lb/4_32.gif">
<table width="99%" height="20" cellpadding="0" cellspacing="0">
<tr><td width="84%"><span class="fzH5c">&nbsp;�����ŵ����� </span><span class="fzH1">���ɶ��������ױ����ṩ��</span></td></tr>
</table>
</td>
</tr>
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td height="140" valign="top">
<table width="100%" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
<tr>
<td width="97" height="45" align="center" valign="middle" bgcolor="#FFFFFF" class="fzH7c">�ŵ㣺</td>
<td width="583" align="left" valign="middle" bgcolor="#FFFFFF" class="fzH1">&nbsp; <bean:write name="ReviewProduct" property="rpi_merit" filter="false"/></td>
</tr>
<tr>
<td height="45" align="center" valign="middle" bgcolor="#FFFFFF" class="fzH6c">ȱ�㣺</td>
<td align="left" valign="middle" bgcolor="#FFFFFF" class="fzH1">&nbsp;<bean:write name="ReviewProduct" property="rpi_fefect"filter="false"/></td>
</tr>
<tr>
<td height="54" align="center" valign="middle" bgcolor="#FFFFFF" class="H10c">������</td>
<td align="left" valign="middle" bgcolor="#FFFFFF" class="fzH1">&nbsp;<bean:write name="ReviewProduct" property="rpi_integration" filter="false"/></td>
</tr>
</table>
<br>
</td>
</tr>
</table>
</logic:present>
<div class="fz100_14"><span class="fzH5c">�û�����</span></div>
<div id="fz011">
<div id="fz011_l"><span class="fzH1"><logic:present name="comment_count"><bean:write name="comment_count"/></logic:present>λ�û��Դ���Ʒ����������</span></div>
<div id="fz011_r"> <a href="#AddContent" class="fzH6">��Ҫ����</a></div>
</div><!--fz011-->
<table width="100%" cellspacing="0" cellpadding="0">
<tr>
<td height="140" valign="top">
<table width="100%" cellpadding="0" cellspacing="0">
<tr>
<td height="93" valign="top"><!-- ���ۿ�ʼ -->
<logic:present name="crList">
<logic:iterate name="crList" id="comment" indexId="index">
<table width="700" cellpadding="0" cellspacing="1" bgcolor="#E7E7E7">
<tr>
<td width="163" height="137" rowspan="3" valign="top" bgcolor="#FFFFFF">
<TABLE width="81%" align="center" cellPadding="0" cellSpacing="3">
<TBODY>
<TR>
<TD height="22" class="fzH1c">
<logic:present name="comment" property="author_name">
<logic:notEmpty name="comment" property="author_name">
<logic:present name="comment" property="source">[<bean:write name="comment" property="source"/>]</logic:present><br/>
<bean:write name="comment" property="author_name"/>
</logic:notEmpty>
<logic:empty name="comment" property="author_name">�ο�</logic:empty>
</logic:present>
<logic:notPresent name="comment" property="author_name">�ο�</logic:notPresent>
</TD>
</TR>
<TR><TD height=22><a class="fzH1"> </a></TD></TR>
<TR><TD height=22><a class="fzH1"> </a></TD></TR>
</TBODY>
</TABLE></td>
<td width="534" valign="top" bgcolor="#FFFFFF">
<table cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr>
<td width="5%" height="25" align="center" valign="middle" bgcolor="#FFFFFF"><img src="/images/ss/k_1.gif" height="16" width="12"></td>
<td width="33%" height="25" bgcolor="#FFFFFF" class="fzH1">�����ڣ�<bean:write format="yyyy-MM-dd HH:mm:ss" name="comment" property="release_time"/> </td>
<td width="62%" bgcolor="#FFFFFF" class="fzH1">
<a href="#AddRes" class="fzH6c" onClick=javascript:ShowRET(2);restoreAdd.comment_id.value="<bean:write name="comment" property="comment_id"/>">�ظ�</a> &nbsp;<a href="#" class="fzH6c" onClick="upcount(<bean:write name="comment" property="comment_id"/>,<bean:write name="index"/>);">����:</a><label id="useful<bean:write name="index"/>"><bean:write name="comment" property="userful_count"/></label>
<span class="dotline"><logic:notEqual name="comment" property="recount" value="0"><a href="javascript:void(null)" class="fzH6c" onClick=javascript:ShowFLT(<bean:write name="comment" property="comment_id"/>)>�鿴�ظ�(<bean:write name="comment" property="recount"/>)</a></logic:notEqual></span>
</td>
</tr>
<tr bgcolor="#eaeaea">
<td colspan="3" height="1"></td>
</tr>
</tbody>
</table></td>
</tr>
<tr>
<td valign="top" bgcolor="#FFFFFF">
<table cellpadding="0" cellspacing="0" width="100%">
<tbody>
<logic:notEqual value="" name="comment" property="title">
<tr>
<td align="right" height="22" width="10%" class="fzH1c">���⣺</td>
<td height="18" width="2%">&nbsp;</td>
<td width="88%"><a class="fzH1"><bean:write name="comment" property="title"/></a></td>
</tr>
</logic:notEqual>
<logic:notEqual value="" name="comment" property="advantage">
<tr>
<td align="right" height="22" width="10%" class="fzH1c">�ŵ㣺</td>
<td height="16" width="2%">&nbsp;</td>
<td width="88%"><a class="fzH1"> <bean:write name="comment" property="advantage"/></a> </td>
</tr>
</logic:notEqual>
<logic:notEqual value=" " name="comment" property="disadvantage">
<tr>
<td align="right" height="22" width="10%" class="fzH1c">ȱ�㣺</td>
<td height="14" width="2%">&nbsp;</td>
<td width="88%"><a class="fzH1"><bean:write name="comment" property="disadvantage"/></a></td>
</tr>
</logic:notEqual>
<tr>
<tr>
<td align="right" height="22" width="10%" class="fzH1c">�Ǽ���</td>
<td height="14" width="2%">&nbsp;</td>
<td width="88%"><a class="fzH1">
<logic:present name="comment" property="product_level"><bean:define id="level" name="comment" property="product_level"></bean:define>
<logic:equal value="0" name="comment" property="product_level"><img src="/images/ss/stars_5.gif" width="65" height="12"/></logic:equal>
<logic:notEqual value="0" name="comment" property="product_level"><img src="/images/ss/stars_<%=level%>.gif" width="65" height="12"/></logic:notEqual>
</logic:present>
</a></td>
</tr>
<tr>
<td height="11" valign="top">
<table cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr><td height="5"></td></tr>
<tr><td align="right" height="25" valign="top" class="fzH1c">���ݣ�</td></tr>
</tbody>
</table>
</td>
<td width="2%" height="30" rowspan="2">&nbsp;</td>
<td valign="top" width="88%">
<table cellpadding="0" cellspacing="0" width="100%">
<tbody>
<tr><td height="5"></td></tr>
<tr>
<td height="22" id="messageContend<bean:write name="comment" property="comment_id"/>" valign="top" style="DISPLAY:" style="table-layout:fixed;word-break:break-all;word-wrap:break-word">
<logic:present name="comment" property="content">
<logic:notEqual name="comment" property="content" value=""><bean:define id="content" name="comment" property="content" type="java.lang.String"/>
<%
if (content != null)
if (content.length() > 200) {
content = StringHelper.getSubString(content, 200) + "...";
pageContext.setAttribute("info_content",content);
%>
<bean:write name="info_content" filter="false"/><br/>
<div align="right"><a href="javascript:void(null)" onClick="ShowContend(<bean:write name="comment" property="comment_id"/>)" class="fzH8c">��ʾȫ��&gt;&gt;&gt;</a></div>
<%} else {
pageContext.setAttribute("info_content",content);
%>
<bean:write name="info_content" filter="false"/><br/>
<div align="right"><a href="javascript:void(null)" onClick="ShowContend(<bean:write name="comment" property="comment_id"/>)" class="fzH1"></a></div>
<%}%>
</logic:notEqual>
</logic:present></td>
<td height="22" id="messageContendTemp<bean:write name="comment" property="comment_id"/>" valign="top" style="DISPLAY:none" style="table-layout:fixed;word-break:break-all;word-wrap:break-word">
<a class="fzH1"> <bean:write name="comment" property="content" filter="false"/></a>
<logic:present name="comment">
<logic:equal name="comment" property="source_url" value=""><br/>
<div align="right"><a href="javascript:void(null)" onClick="ShowContend(<bean:write name="comment" property="comment_id"/>)" class="fzH1"> </a></div>
</logic:equal>
<logic:notEqual name="comment" property="source_url" value=""><br/>
<div align="right"><a href="<bean:write name="comment" property="source_url" filter="false"/>" target="_blank" class="fzH8c"> �鿴ԭ��&gt;&gt;&gt;</a></div>
</logic:notEqual>
</logic:present>
</td>
</tr>
</tbody>
</table>
</td>
</tr>
</tbody>
</table></td>
</tr>
<tr>
<td align="center" valign="top" bgcolor="#FFFFFF">
<table width="99%" border="0" cellspacing="0" cellpadding="0">
<logic:notEqual value="0" name="comment" property="recount"></logic:notEqual>
<tr id=LM<bean:write name="comment" property="comment_id"/> style="DISPLAY: none">
<td height="42" valign="top"><!-- ���ۻظ� -->
<logic:present name="comment" property="restore">
<logic:iterate id="revo" name="comment" property="restore"offset="0" indexId="restore_index">
<table width="100%" height="68" align="center" cellpadding="0" cellspacing="0">
<tr>
<td width="14%" height="33" align="right" class="fzH1c"> �� �� �ˣ�</td>
<td width="27%" class="fzH1"><logic:equal value="" name="revo" property="user_name">�ο�</logic:equal><bean:write name="revo" property="user_name"/></td>
<td width="13%" class="fzH1c">�ظ�ʱ�䣺</td>
<td width="46%" class="fzH1"><bean:write format="yyyy-MM-dd HH:mm:ss" name="revo" property="mere_time"/></td>
</tr>
<tr>
<td height="33" align="right" class="fzH1c"> �ظ����ݣ�</td>
<td colspan="3" class="fzH1"><bean:write name="revo" property="mere_content"/></td>
</tr>
<tr><td height="2" colspan="4"><hr noshade size="0" color="#C0C0C0"></td></tr>
</table><!-- ���ۻظ� ���� -->
</logic:iterate></logic:present>
</td>
</tr>
</table></td>
</tr>
</table>
</logic:iterate><!--���۷�ҳ-->
<table width="100%" cellspacing="0" cellpadding="0">
<%--<logic:present name="NumberPage"><tr><td height="30" align="right"><span class="fzH1"><bean:write name="NumberPage" filter="false"/></span></td></tr></logic:present>--%>
<tr><td height="30" align="right"><span class="fzH1">
<ding9:page count_page="${count_page}" current_page="${current_page}" url="/product/product-info.do?prma_id=${items[0].prma_id}&type=comment&current_page="/>
</span></td></tr>
</table>
</logic:present><!-- ���۽��� -->
<br/><!-- �ظ����� -->
<form name="restoreAdd" method="post" action="/oder/restore.do">
<input name="prma_id" type="hidden" value="${prmaId}"/>
<input type="hidden" name="comment_id"/>
<input type="hidden" name="tmpcount" value="" />
<table width="100%" height="213" cellpadding="0" cellspacing="0"id=RE2 style="DISPLAY:none">
<tr>
<td height="29" colspan="2" background="/images/lb/4_32.gif">
<a name="AddRes"></a>
<div class="fz100_14"><span class="fzH5c">�ظ�����</span></div>
</tr>
<tr>
<td height="29" align="right"><STRONG class="fzH1c">�ظ����ݣ�</STRONG><span class="fzH6"></span></td>
<td><textarea name="re_content" cols="40" rows="8" class="input11" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"></textarea></td>
</tr>
<tr>
<td height="32">&nbsp;</td>
<td>
<div align="left"><button class=btn_2k3 title="0K!�����ҵ�����" onclick="CheckResForm(this.form);"> 0K!�����ҵ�����</button></div>
</td>
</tr>
</table>
</form><!-- �ظ����� ���� -->
<form name="oderAdd" method="post" action="/oder/appraise.do">
<input name="prma_id" type="hidden" value="${prmaId}"/>
<table width="700" cellpadding="0" cellspacing="1">
<tr><td height="28" colspan="4" background="/images/lb/4_32.gif"><div class="fz100_14"><span class="fzH5c">д����<a name="AddContent"></a></span></div></td></tr>
<tr>
<td width="56" height="24" align="right" class="fzH1"><STRONG class="fzH1c">���⣺</STRONG></td>
<td colspan="2" valign="top" title="��д����"><input size=38 name=title class="input11" onBlur="this.className='input1'" onFocus="this.className='input1-bor'"/>
<span class="fzH6">* <span class="fzH1">��������50���������ڡ�</span><br/></span>
</td>
<td width="215" rowspan="5" valign="top" title="ѡ���Ǽ�����">
<table width="100%" height="157" cellpadding="0" cellspacing="0">
<tr><td height="26"><STRONG class="fzH1c">�Ǽ����ۣ�</STRONG></td></tr>
<tr><td height="26"><span class="fzH1"><input type="radio" checked="checked" name="product_level" value="5"/><img src="/images/ss/star5.gif" width="65" height="12">[�ǳ�������ǿ���Ƽ�]</span></td></tr>
<tr><td height="27"><span class="fzH1"><input type="radio" name="product_level" value="4"/><img src="/images/ss/star4.gif" width="65" height="12">[ �ܺ�Ŷ���һ�ʹ�� ] </span></td></tr>
<tr><td height="25"><span class="fzH1"><input type="radio" name="product_level" value="3"/><img src="/images/ss/star3.gif" width="65" height="12">[ ������ɣ��ῼ�� ] </span></td></tr>
<tr><td height="26"><span class="fzH1"><input type="radio" name="product_level" value="2"/><img src="/images/ss/star2.gif" width="65" height="12">[һ������������Ƽ�]</span></td></tr>
<tr><td height="27"><span class="fzH1"><input type="radio" name="product_level" value="1"/><img src="/images/ss/star1.gif" width="65" height="12">[ �����⣬����ʹ�� ] </span></td></tr>
</table>
</td>
</tr>
<tr>
<td height="24" align="right"><STRONG class="fzH1c">�ŵ㣺</STRONG></td>
<td colspan="2" valign="top" title="��д�ŵ�"><input size=38 name=advantage class="input11" onBlur="this.className='input1'" onFocus="this.className='input1-bor'"/>
<span class="fzH1">��������100�����֡�</span></td>
</tr>
<tr>
<td height="24" align="right"><STRONG class="fzH1c">ȱ�㣺</STRONG></td>
<td colspan="2" valign="top" title="��дȱ��"><input size=38 name=disadvantage class="input11" onBlur="this.className='input1'" onFocus="this.className='input1-bor'"/>
<span class="fzH1">��������100�����֡�</span></td>
</tr>
<tr>
<td height="58" align="right"><span class="fzH1c">���ݣ�</span> </td>
<td width="247" title="��д����"><textarea name="content" cols="38" rows="8" class="input11" onFocus="this.className='input1-bor'" onBlur="this.className='input1'"></textarea></td>
<td width="177" title="��д����"><span class="fzH6">*</span> <span class="fzH1">��������2000�����֡�</span></td>
</tr>
<tr>
<td height="24" align="right"><span class="fzH1c">��֤�룺</span></td>
<td colspan="2" title="��д����"><input size=10 onkeydown="KeyDown('document.oderAdd.ok');" name="chk" class="input111" onBlur="this.className='input1'" onFocus="this.className='input1-bor'"/>
<img src="/server/validateimage" width="59" height="22"><span class="fzH6">&nbsp;&nbsp;*&nbsp;&nbsp;<logic:present name="msg"><bean:write name="msg"/></logic:present></span></td>
</tr>
<tr>
<td height="43" colspan="4" valign="bottom">
<div align="center"><br/>
<button class=btn_2k3 title="0K!�����ҵ�����" name="ok" onclick="CheckMyForm(this.form);"> 0K!�����ҵ�����</button>
</div>
</td>
</table>
</form>
</td>
</tr>
</table></td>
</tr>
</table>

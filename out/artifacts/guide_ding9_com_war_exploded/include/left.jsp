<%@page contentType="text/html;charset=GBK"%>
<%--@ page import="com.ding9.util.UrlRewriteManager"--%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<div id="f01_l">
<div class="f100">
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('First')">
<img src="/images/m/l001.gif" width="24" height="24"/>
<span class="H1cl">&nbsp;&nbsp;</span>
<a href="<c:url value="/switch.do?msg=aboutus"/>" class="H1cl">��������</a>
</div>
<div class="div8" id="First" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=aboutus"/>" class="H1">���ż��</a></li>
<li><a href="<c:url value="/focus.do"/>" class="H1">�۽�����</a></li>
<li><a href="<c:url value="/event.do"/>" class="H1">���¼�</a></li>
<li><a href="<c:url value="/media.do?synt_id=1"/>" class="H1">��ý����</a></li>
<li><a href="<c:url value="/media.do?synt_id=3"/>" class="H1">��ع�</a></li>
</ul>
</div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Five')"><img src="/images/m/l002.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<%--<a href="<%=UrlRewriteManager.dynamic2static("/switch.do?msg=help")%>" class="H1cl">ʹ�ð���</a>--%>
<a href="<c:url value="/switch.do?msg=help"/>" class="H1cl">ʹ�ð���</a>
</div>
<div class="div8" id="Five" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=help"/>" class="H1">������·</a></li>
<li><a href="<c:url value="/switch.do?msg=question"/>" class="H1">��������</a></li>
<li><a href="<c:url value="/switch.do?msg=helpme"/>" class="H1">�̼Ұ���</a></li>
</ul>
</div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Two')"><img src="/images/m/l003.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<a href="<c:url value="/switch.do?msg=service"/>" class="H1cl">��������</a>
</div>
<div class="div8" id="Two" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=service"/>" class="H1">��������</a></li>
<li><a href="<c:url value="/switch.do?msg=law"/>" class="H1">��������</a></li>
<li><a href="<c:url value="/switch.do?msg=declare"/>" class="H1">��˽����</a></li>
<li><a href="<c:url value="/switch.do?msg=promotion"/>" class="H1">�����ƹ�Э��</a></li>
</ul>
</div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Three')"><img src="/images/m/l004.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<a href="<c:url value="/switch.do?msg=technique"/>" class="H1cl">������ʿ</a>
</div>
<div class="div8" id="Three" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=technique"/>" class="H1">������</a></li>
<!--<li><a href="<c:url value="/switch.do?msg=business"/>" class="H1">���ز�</a></li>-->
<li><a href="<c:url value="/switch.do?msg=market"/>" class="H1">�г���</a></li>
<!--<li><a href="<c:url value="/switch.do?msg=product"/>" class="H1">��Ʒ��</a></li>-->
</ul>
</div>
<div class="f101" style="cursor:hand" onClick="Javascript:document.location.href='<c:url value="/switch.do?msg=contact"/>'"><img src="/images/m/l005.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span><a href="#" class="H1cl">��ϵ����</a></div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Six')"><img src="/images/m/l006.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<a href="<c:url value="/switch.do?msg=merchant"/>" class="H1cl">�̼Ҽ���</a>
</div>
<div class="div8" id="Six" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=merchant"/>" class="H1">�̼Ҽ���</a></li>
<li><a href="<c:url value="/switch.do?msg=product"/>" class="H1">��Ա����</a></li>
</ul>
</div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Four')"><img src="/images/m/l007.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span><a href="<c:url value="/switch.do?msg=cooperate"/>" class="H1cl">��վ����</a></div>
<div class="div8" id="Four" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=cooperate"/>" class="H1">�������</a></li>
<li><a href="<c:url value="/switch.do?msg=comethod"/>" class="H1">������ʽ</a></li>
<li><a href="<c:url value="/switch.do?msg=sitemap"/>" class="H1">��վ��ͼ</a></li>
</ul>
</div>
<div class="f101"><img src="/images/m/l008.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<a href="<c:url value="/switch.do?msg=search"/>" target="_blank" class="H1cl">��������</a>
</div>
</div>
</div>
<Script Language="Javascript">
document.all('First').style.display="none";
document.all('Five').style.display="none";
document.all('Two').style.display="none";
document.all('Three').style.display="none";
document.all('Four').style.display="none";
document.all('Six').style.display="none";
function Fun_Menu(Title){
if (document.all(Title).style.display==""){
document.all(Title).style.display="none";
}else{
document.all(Title).style.display="";
}
}
</Script>

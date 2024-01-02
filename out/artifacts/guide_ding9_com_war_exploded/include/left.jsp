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
<a href="<c:url value="/switch.do?msg=aboutus"/>" class="H1cl">关于我们</a>
</div>
<div class="div8" id="First" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=aboutus"/>" class="H1">顶九简介</a></li>
<li><a href="<c:url value="/focus.do"/>" class="H1">聚焦顶九</a></li>
<li><a href="<c:url value="/event.do"/>" class="H1">大事记</a></li>
<li><a href="<c:url value="/media.do?synt_id=1"/>" class="H1">传媒报道</a></li>
<li><a href="<c:url value="/media.do?synt_id=3"/>" class="H1">活动回顾</a></li>
</ul>
</div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Five')"><img src="/images/m/l002.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<%--<a href="<%=UrlRewriteManager.dynamic2static("/switch.do?msg=help")%>" class="H1cl">使用帮助</a>--%>
<a href="<c:url value="/switch.do?msg=help"/>" class="H1cl">使用帮助</a>
</div>
<div class="div8" id="Five" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=help"/>" class="H1">新手上路</a></li>
<li><a href="<c:url value="/switch.do?msg=question"/>" class="H1">常见问题</a></li>
<li><a href="<c:url value="/switch.do?msg=helpme"/>" class="H1">商家帮助</a></li>
</ul>
</div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Two')"><img src="/images/m/l003.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<a href="<c:url value="/switch.do?msg=service"/>" class="H1cl">服务条款</a>
</div>
<div class="div8" id="Two" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=service"/>" class="H1">服务条款</a></li>
<li><a href="<c:url value="/switch.do?msg=law"/>" class="H1">法律声明</a></li>
<li><a href="<c:url value="/switch.do?msg=declare"/>" class="H1">隐私声明</a></li>
<li><a href="<c:url value="/switch.do?msg=promotion"/>" class="H1">网络推广协议</a></li>
</ul>
</div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Three')"><img src="/images/m/l004.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<a href="<c:url value="/switch.do?msg=technique"/>" class="H1cl">招贤纳士</a>
</div>
<div class="div8" id="Three" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=technique"/>" class="H1">技术部</a></li>
<!--<li><a href="<c:url value="/switch.do?msg=business"/>" class="H1">商拓部</a></li>-->
<li><a href="<c:url value="/switch.do?msg=market"/>" class="H1">市场部</a></li>
<!--<li><a href="<c:url value="/switch.do?msg=product"/>" class="H1">产品部</a></li>-->
</ul>
</div>
<div class="f101" style="cursor:hand" onClick="Javascript:document.location.href='<c:url value="/switch.do?msg=contact"/>'"><img src="/images/m/l005.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span><a href="#" class="H1cl">联系我们</a></div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Six')"><img src="/images/m/l006.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<a href="<c:url value="/switch.do?msg=merchant"/>" class="H1cl">商家加盟</a>
</div>
<div class="div8" id="Six" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=merchant"/>" class="H1">商家加盟</a></li>
<li><a href="<c:url value="/switch.do?msg=product"/>" class="H1">会员政策</a></li>
</ul>
</div>
<div class="f101" style="cursor:hand" onclick="Javascript:Fun_Menu('Four')"><img src="/images/m/l007.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span><a href="<c:url value="/switch.do?msg=cooperate"/>" class="H1cl">网站合作</a></div>
<div class="div8" id="Four" style="display:none">
<ul>
<li><a href="<c:url value="/switch.do?msg=cooperate"/>" class="H1">合作伙伴</a></li>
<li><a href="<c:url value="/switch.do?msg=comethod"/>" class="H1">合作方式</a></li>
<li><a href="<c:url value="/switch.do?msg=sitemap"/>" class="H1">网站地图</a></li>
</ul>
</div>
<div class="f101"><img src="/images/m/l008.gif" width="24" height="24"/><span class="H1cl">&nbsp;&nbsp;</span>
<a href="<c:url value="/switch.do?msg=search"/>" target="_blank" class="H1cl">搜索竞价</a>
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

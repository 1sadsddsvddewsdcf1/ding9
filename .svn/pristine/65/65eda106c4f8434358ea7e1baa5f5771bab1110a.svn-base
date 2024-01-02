<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<%@ page import="com.ding9.util.UrlRewriteManager,com.ding9.util.Environment"%>
<bean:define id="prsoNameOneEn" value="${pForm.prso_name_one_en}"/>
<c:set var="items"  value="${productlist}"/>
<bean:define id="prsoIdOne" value="${items[0].prso_id_one}"/>
<bean:define id="prmaId" value="${items[0].prma_id}"/>
<bean:define id="mchcount" value="${items[0].merchant_count}"/>
<bean:define id="type" value="${type}"/>
<script type="text/javascript">
function tag2(pid,pname){//收藏商家信息
var tag=trim(document.getElementById('tag2').value);//标签
var remarks=document.getElementById('remarks2').value;//说明
var type=document.getElementById('tag_type2').value;//收藏类型
var tag_url=document.URL;//收藏地址
var url='/collection/collection.do?method=doSave&type=2&title='+ pname +'&id='+ pid +'&url='+ tag_url +'&remark='+ remarks +'&tag='+tag;
var Status=GetXmlHttp3(url);
var flag=Status.getElementsByTagName("flag")[0].firstChild.data;
if(flag==1){//成功
document.getElementById('newDiv2').innerHTML="<br><br><div align='center'><img src='/images/collection_right.gif'> &nbsp; <b>收藏成功！</b><br><br> <a target='_blank' href='http://user.ding9.local'>查看我的收藏</a> <br><br><input type='button' value=' 关 闭 ' onClick=document.body.removeChild(document.getElementById('newFrame2'));document.body.removeChild(document.getElementById('newDiv2'))></div>";
}else{//重复
document.getElementById('newDiv2').innerHTML="<br><br><div align='center'><img src='/images/collection_error.gif'> &nbsp;<b>您已经收藏过了</b><br><br> <a target='_blank' href='http://user.ding9.local'>查看我的收藏</a> <br><br><input type='button' value=' 关 闭 ' onClick=document.body.removeChild(document.getElementById('newFrame2'));document.body.removeChild(document.getElementById('newDiv2'))></div>";
}
}
function login_col2(pid,pname){//收藏登陆
var username=document.all.user2.value;
var password=document.all.psw2.value;
if( username ==""){
alert("请输入用户名！");
document.all.user2.focus();
return ;
}
if( password ==""){
alert("请输入密码！");
document.all.psw2.focus();
return ;
}
document.all.user2.disabled=true;
document.all.psw2.disabled=true;
var url="/logon.do?username="+ username +"&password="+ password +"&rememberMe=true";
var Status=GetXmlHttp3(url);
var flag=Status.getElementsByTagName("flag")[0].firstChild.data;
if(flag==1){
document.getElementById('newDiv2').innerHTML="<div align='right'><input type='image' src='/images/close2.gif' onClick=document.body.removeChild(document.getElementById('newFrame2'));document.body.removeChild(document.getElementById('newDiv2')) /></div> <span class='fzH2c'>填写收藏信息</span><span class='fzH1'>(选填，可帮助您分类、查找。)</span><br><br><span id=loading2>&nbsp;<span class='fzH1c'>标签：<input name='tag2' id='tag2' type='text' size='30' maxlength='30' class='flatinput' \/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>我最常用的</b>：<logic:present name='tagList2'><logic:iterate id='vo' name='tagList2'><a href='#' class='fzH8c' id='<bean:write name='vo' property='uslb_id'/>' onClick=document.getElementById('tag2').value=document.getElementById('<bean:write name='vo' property='uslb_id'/>').innerHTML><bean:write name='vo' property='lb_name'/></a> </logic:iterate></logic:present> <br>&nbsp;说明：<textarea name='remarks2' id='remarks2' cols='40' rows='2' class='flatinput' id='remark'></textarea>&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='checkbox' checked='true'/><span class='fzH1'>公开此收藏</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='' type='button' onclick='tag2("+ pid +",\""+ pname +"\");' align='absmiddle' value='确　定'/><input type='hidden' value='2' id='tag_type2' name='tag_type2'/></span>";
}else{
alert('密码错误！');
document.getElementById('newDiv2').innerHTML="<div align='right'><input type='image' src='/images/close2.gif'onClick=document.body.removeChild(document.getElementById('newFrame2'));document.body.removeChild(document.getElementById('newDiv2')) /></div><b>请登录</b><br><span id=loading2 /><br>&nbsp;&nbsp;&nbsp;&nbsp;<span id=loading>用户名&nbsp;<input onkeydown=KeyDown('document.all.Button2'); name='user2' id='user2' type='text' size='20' maxlength='20' class='flatinput' \/><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码&nbsp;&nbsp;<input onkeydown=KeyDown('document.all.Button1'); name='psw2' id='psw2' type='password' size='20' class='flatinput'/>&nbsp;<a href='http://user.ding9.local/logon/fillname.jsp' target='_blank'>忘记密码?</a>&nbsp;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='' type='image' id=Button2 name=Button2 src='/images/login_btn.gif' onclick='login_col2("+ pid +",\""+ pname +"\");' align='absmiddle'/>&nbsp;<a href='http://user.ding9.local/register/register.html' target='_blank'>免费注册</a>&nbsp;</span>";
}
}
</script>
<script language="javascript">
function openNewDiv2(f_id,_id,pid,pname){// 新激活图层
alert(document.getElementById('collection2').style.left);
var newFrame2=document.createElement("iframe");
newFrame2.id = f_id;
newFrame2.style.position="absolute";
newFrame2.style.width = "450px";
newFrame2.style.height = "200px";
newFrame2.style.top=(document.getElementById('collection2').offsetTop+600)+"px";
newFrame2.style.left=(document.getElementById('collection2').offsetLeft+150)+"px";
document.body.appendChild(newFrame2);
var newDiv2 = document.createElement("div");
//设置属性
newDiv2.id = _id;
newDiv2.style.position = "absolute";
newDiv2.style.zIndex = "9999";
newDiv2.style.width = "450px";
newDiv2.style.height = "200px";
newDiv2.style.top=(document.getElementById('collection2').offsetTop+600)+"px";
newDiv2.style.left=(document.getElementById('collection2').offsetLeft+150)+"px";
newDiv2.style.background = "#EEF3F6";
newDiv2.style.border = "2px solid #3CA1DD";
newDiv2.style.padding = "5px";
//根据cookies的情况判别页面的显示
var cookieValue = Cookies.Get("SSOUserId");
var cookieID=0;
if(cookieValue!=null){
cookieID = cookieValue.split(":")[0];
}
if(cookieID != 0 && cookieValue!=null){
newDiv2.innerHTML="<div align='right'><input type='image' src='/images/close2.gif' onClick=document.body.removeChild(document.getElementById('newFrame2'));document.body.removeChild(document.getElementById('newDiv2')) /></div> <span class='fzH2c'>填写收藏信息</span><span class='fzH1'>(选填，可帮助您分类、查找。)</span><br><br><span id=loading2>&nbsp;<span class='fzH1c'>标签：<input name='tag2' id='tag2' type='text' size='30' maxlength='30' class='flatinput' \/><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b>我最常用的</b>：<logic:present name='tagList2'><logic:iterate id='vo' name='tagList2'><a href='#' class='fzH8c' id='<bean:write name='vo' property='uslb_id'/>' onClick=document.getElementById('tag2').value=document.getElementById('<bean:write name='vo' property='uslb_id'/>').innerHTML><bean:write name='vo' property='lb_name'/></a> </logic:iterate></logic:present> <br>&nbsp;说明：<textarea name='remarks2' id='remarks2' cols='40' rows='2' class='flatinput' id='remark'></textarea>&nbsp;<br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type='checkbox' checked='true'/><span class='fzH1'>公开此收藏</span><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='' type='button' onclick='tag2("+ pid +",\""+ pname +"\");' align='absmiddle' value='确　定'/><input type='hidden' value='2' id='tag_type2' name='tag_type2'/></span>";
}else{
newDiv2.innerHTML = "<div align='right'><input type='image' src='/images/close2.gif' onClick=document.body.removeChild(document.getElementById('newFrame2'));document.body.removeChild(document.getElementById('newDiv2')) /></div><b>请登录</b><br><span id=loading2 /><br>&nbsp;&nbsp;&nbsp;&nbsp;<span id=loading>用户名&nbsp;<input onkeydown=KeyDown('document.all.Button2'); name='user2' id='user2' type='text' size='20' maxlength='20' class='flatinput' \/><br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;密码&nbsp;&nbsp;<input onkeydown=KeyDown('document.all.Button1'); name='psw2' id='psw2' type='password' size='20' class='flatinput'/>&nbsp;<a href='http://user.ding9.local/logon/fillname.jsp' target='_blank'>忘记密码?</a>&nbsp;<br><br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input name='' type='image' id=Button2 name=Button2 src='/images/login_btn.gif' onclick='login_col2("+ pid +",\""+ pname +"\");' align='absmiddle'/>&nbsp;<a href='http://user.ding9.local/register/register.html' target='_blank'>免费注册</a>&nbsp;</span>";
}
document.body.appendChild(newDiv2);
}
</script>
<script language="javascript">
function pay2(fm) {
fm.action='/product/product-info.do?type=merchant&prma_id='+<c:out value="${items[0].prma_id}"/>;
fm.submit();
}
</script>
<c:choose>
<c:when test="${items[0].merchant_count==0}">
<span class="fzH1c">暂无商家 </span>
</c:when>
<c:otherwise>
<div class="fz100_13">
<div id="fz011">
<div id="fz011_l">
<span class="fzH1">共有<span class="fzH6c"><c:choose>
<c:when test="${items[0].merchant_count>10}">
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?type=merchant&sort=203&prma_id="+getPrmaid+"&pageSize="+mchcount)%>" class="fzH8c">--%>
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=merchant&sort=203&pageSize=${mchcount}"/>" class="fzH8c">
<c:out value="${items[0].merchant_count}" /></a>
</c:when>
<c:otherwise><c:out value="${items[0].merchant_count}"/></c:otherwise></c:choose></span>个商家销售 <c:out value="${items[0].prma_name}"/></span></div>
<div id="fz011_m">
<html:form method="post" styleId="f1" action="/product/product-info.do">
<span class="fzH1">支付方式：
<select name="pay" class="fzH1" onchange="pay2(this.form);">
<option value="0">不限... </option>
<c:forEach items="${pay}" var="item" begin="0" step="1" varStatus="var">
<option value="${item}" <c:if test="${item==pForm.pay}"><c:out value="selected"/></c:if>/>${item}</option>
</c:forEach>
</select>
</span>
</html:form>
</div>
<div id="fz011_r"> <a href="${pForm.channelMerchant}/login.html" class="fzH6">发布我的商品</a></div>
</div><!--fz011--></div><!--fz100_13-->
<div class="fz100_14"><span class="fzH1c">【商家详细介绍】</span></div>

<div id="fz012">
<div id="fz012_2"><span class="fzH1">商家/Logo</span></div>
<div id="fz012_3"><span class="fzH1">信用度 </span>
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?type=merchant&sort=203&prma_id="+getPrmaid)%>">--%>
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=merchant&sort=203"/>">
<img src="/images/ss/4_37.gif" alt="按信用度从低到高排序" width="13" height="15" border="0"></a>
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?type=merchant&sort=204&prma_id="+getPrmaid)%>">--%>
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=merchant&sort=204"/>">
<img src="/images/ss/4_39.gif" alt="按信用度从高到低排序" width="13" height="15" border="0"></a></div>
<div id="fz012_4"><html:form method="post" styleId="f2" action="/product/product-info.do">
<select name="city" class="fzH1" onchange="pay2(this.form);">
<option value="0">商家所在地</option>
<c:forEach items="${city}" var="item" begin="0" step="1" varStatus="var">
<option value="${item}" <c:if test="${item==pForm.city}"><c:out value="selected" /></c:if> />${item}</option>
</c:forEach>
</select>
</html:form>
</div>
<div id="fz012_5"><span class="fzH1">联系方式</span></div>
<div id="fz012_6"><span class="fzH1">价格</span><span class="fzH1"> </span>
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?type=merchant&sort=201&prma_id="+getPrmaid)%>">--%>
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=merchant&sort=201"/>">
<img src="/images/ss/4_37.gif" alt="按价格从低到高排序" width="13" height="15" border="0"/></a>
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?type=merchant&sort=202&prma_id="+getPrmaid)%>">--%>
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=merchant&sort=202"/>">
<img src="/images/ss/4_39.gif" alt="按价格从高到低排序" width="13" height="15" border="0"/></a>
</div>
</div><!--fz012-->


<div class="fzd007">
<ul>
<logic:present name="mpList">
<logic:iterate name="mpList" id="prod_info" indexId="index">
<bean:define id="Lprma_id" name='prod_info' property="prmaId" type="java.lang.Integer"/>
<bean:define id="Lmerc_id" name='prod_info' property="mercId" type="java.lang.Integer"/>
<logic:present name="prod_info" property="meprWebAddress"><bean:define id="ggurl" name="prod_info" property="meprWebAddress" type="String"/></logic:present>
<logic:present name="prod_info" property="comments_level"><bean:define id="alt_credit" property="comments_level" name="prod_info" type="java.lang.Integer"/></logic:present>
<%
String credit_info="";
if(alt_credit==1){credit_info="遭透了";}else if(alt_credit==2){credit_info="完成交易,但不会再打交道了";}else if(alt_credit==3){credit_info="基本满意";}else if(alt_credit==4){credit_info="挺好的,我会再光顾的";}else if(alt_credit==5){credit_info="满意极了,我推荐";}
%>
<li>
<span class="n2">
<%--<a class=H1 target="_blank" href="<%=Environment.getChannelMerchant()%><%=UrlRewriteManager.dynamic2static("/member/merchant.do?merc_id="+Lmerc_id)%>">--%>
<a class=H1 target="_blank" href="${pForm.channelMerchant}<c:url value="/member/merchant.do?merc_id=${Lmerc_id}"/>">
<logic:notEqual value="" name="prod_info" property="mesh_logo">
<img alt="商家名称:<bean:write name="prod_info" filter="false" property="merc_com_name"/>,商家电话:<bean:write name="prod_info" filter="false" property="merc_phone"/>" src="<%=Environment.getImageDing9()%><bean:write name="prod_info" filter="false" property="mesh_logo"/>" width="111" height="43" border="0"/>
</logic:notEqual>
<logic:equal value="" name="prod_info" property="mesh_logo"><bean:write name="prod_info" filter="false" property="merc_com_name"/></logic:equal>
</a>
</span>
<span class="n3">
<img alt="<%=credit_info%>" src="/images/lb/credit<bean:write name="prod_info" property="comments_level"/>.gif" width="24" height="23" /><BR/>
<%--
<logic:equal value="0" name="prod_info" property="comments_cnt"><a href="<%=Environment.getChannelMerchant()%><%=UrlRewriteManager.dynamic2static("/member/merchant-talk.do?merc_id="+Lmerc_id)%>" class="fzH8c" target="_blank">发表评论</a></logic:equal>
<logic:notEqual value="0" name="prod_info" property="comments_cnt"><a href="<%=Environment.getChannelMerchant()%><%=UrlRewriteManager.dynamic2static("/member/merchant-talk.do?merc_id="+Lmerc_id)%>" target="_blank" class="fzH6">(<bean:write name="prod_info" filter="false" property="comments_cnt"/>条评论)</a></logic:notEqual>
--%>
<logic:equal value="0" name="prod_info" property="comments_cnt"><a href="${pForm.channelMerchant}<c:url value="/member/merchant-talk.do?merc_id=${Lmerc_id}"/>#add" class="fzH8c" target="_blank">发表评论</a></logic:equal>
<logic:notEqual value="0" name="prod_info" property="comments_cnt"><a href="${pForm.channelMerchant}<c:url value="/member/merchant-talk.do?merc_id=${Lmerc_id}"/>" target="_blank" class="fzH6">(<bean:write name="prod_info" filter="false" property="comments_cnt"/>条评论)</a></logic:notEqual>
</span>
<span class="n4"><span class="fzH1"><bean:write name="prod_info" filter="false" property="merc_province"/><logic:notEqual value="" name="prod_info" property="merc_city">·<bean:write name="prod_info" filter="false" property="merc_city"/></logic:notEqual></span></span>
<span class="n5">
<%--<A href="<%=Environment.getChannelMerchant()%><%=UrlRewriteManager.dynamic2static("/member/merchant.do?merc_id="+Lmerc_id)%>" target=_blank><logic:present name="prod_info" property="merc_phone"><IMG height=16 alt="<bean:write name="prod_info" filter="false" property="merc_phone"/>" src="/images/ss/phone.gif" width=14 border=0></logic:present></A>--%>
<A href="${pForm.channelMerchant}<c:url value="/member/merchant.do?merc_id=${Lmerc_id}"/>" target=_blank><logic:present name="prod_info" property="merc_email"><IMG height=16 alt="<bean:write name="prod_info" filter="false" property="merc_email"/>" src="/images/ss/email.gif" width="14" border="0"></logic:present></A>
</span>
<span class="n6"><span class="fzH8c"><bean:write name="prod_info" filter="false" property="meprPrice"/></span></span>
<%--<span class="n7"><A href="/click/merchant-click.do?prma_id=<%=Lprma_id%>&url=<%=UrlRewriteManager.encrypt(ggurl)%>" target=_blank><img src="/images/ss/4_49.gif" width="85" height="28" border="0"/></A></span>--%>
<span class="n7"><A href="<%=response.encodeURL("/click/merchant-click.do?prma_id="+Lprma_id+"&merc_id="+Lmerc_id+"&url="+UrlRewriteManager.encodeURL(ggurl))%>" target=_blank><img src="/images/ss/4_49.gif" width="85" height="28" border="0"/></A></span>
</li>
<div id="collection2"><%--<input type="image" src="/images/collection.gif" onclick="openNewDiv2('newFrame2','newDiv2',<%=Lmerc_id%>,'商家');" >--%></div>
</logic:iterate>
</logic:present>
</ul>
<c:if test="${items[0].merchant_count>10}">
<div class="fz100_15">
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?type=merchant&sort=203&prma_id="+getPrmaid+"&pageSize="+mchcount)%>" class="fzH8c">点击查看全部 <span class="fzH6c"><c:out value="${items[0].merchant_count}" /></span> 个商家报价(￥<c:out value="${items[0].min_price}" />-￥<c:out value="${items[0].max_price}" />)</a>--%>
<a href="<c:url value="/product/product-info.do?prma_id=${prmaId}&prso_id_one=${prsoIdOne}&prso_name_one_en=${prsoNameOneEn}&type=merchant&sort=203&pageSize=${mchcount}"/>" class="fzH8c">点击查看全部 <span class="fzH6c"><c:out value="${items[0].merchant_count}" /></span> 个商家报价(￥<c:out value="${items[0].min_price}" />-￥<c:out value="${items[0].max_price}" />)</a>
</div>
</c:if>
</div><!--fzd007-->

</c:otherwise>
</c:choose>
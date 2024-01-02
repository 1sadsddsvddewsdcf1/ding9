<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c" %>
<div class="fz100_3">
<c:choose>
<c:when test="${Salepromotion!=null}">
<div id="fz013">
<div id="fz013_1"></div>
<div id="fz013_2"><span class="fzH1c">商家名称</span></div>
<div id="fz013_3"><span class="fzH1c">促销信息 / 详情</span></div>
<div id="fz013_4"><span class="fzH1c">有效期</span></div>
<div id="fz013_5"><span class="fzH1c">发布时间</span></div>
</div><!--fz013-->
</c:when>
<c:otherwise><div><span class="fzH1c">很抱歉，暂时没有相关促销信息！</span></div></c:otherwise>
</c:choose>
<c:forEach items="${Salepromotion}" var="info" begin="0" step="1" varStatus="var"><bean:define id="Lmerc_id" name='info' property="merc_id" type="java.lang.Integer"/>
<div id="fz014">
<div class="fzH1" id="fz014_1"><c:out value="${var.count}"/></div>
<div id="fz014_2">
<a class=H1 href="${pForm.channelMerchant}<c:url value="/member/merchant.do?merc_id=${Lmerc_id}"/>"><img alt="${info.merc_name}${info.merc_phone}" src="${info.merc_logo}" width="111" height="43" border="0"/></a></div>
<div id="fz014_3">
<div class="fzd008">
<ul>
<c:choose>
<c:when test="${info.info_type==0}">
<li><a href="${pForm.channelPromotion}<c:url value="/news/news-info.do?info_id=${info.info_id}"/>" class="fzH1">${info.title}</a></li>
<li><a href="${pForm.channelPromotion}<c:url value="/news/news-info.do?info_id=${info.info_id}"/>" class="fzH1">${info.content}</a></li>
</c:when>
<c:otherwise>
<li><a href="${info.source_url}" class="fzH1">${info.title}</a></li>
<li><a href="${info.source_url}" class="fzH1">${info.content}</a></li>
</c:otherwise>
</c:choose>
</ul>
</div></div>
<div id="fz014_4"><a class="fzH1">${info.useful_life}<bean:write name="Sale_promotion" property="useful_life" filter="false"/></a></div>
<div id="fz014_5"><a class="fzH1">${info.pub_time}<bean:write name="Sale_promotion" property="pub_time" filter="false"/></a></div>
</div><!--fz014-->
</c:forEach>
</div><!--fz100_3-->

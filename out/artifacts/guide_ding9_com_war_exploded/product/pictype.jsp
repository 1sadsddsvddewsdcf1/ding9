<%@ page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<div class="sed002">
<ul>
<logic:present name="ProductInfo">
<logic:iterate id="IdProductInfo" name="ProductInfo" property="records" offset="0" indexId="index">
<bean:define id="Lprma_id" name="IdProductInfo" property="prma_id" type="java.lang.Integer"/>
<bean:define id="Lmerc_id" name='IdProductInfo' property="merc_id" type="java.lang.Integer"/>
<bean:define id="ggurl" property="merc_product_address" name="IdProductInfo" type="String"/>
<bean:define id="remark" name="IdProductInfo" property="prma_remark" type="String"/>
<% String producturl="";
ggurl=UrlRewriteManager.encrypt(ggurl);
if(Lprma_id==0){
producturl=ggurl;
}else{
//producturl=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+Lprma_id+"&prso_id_three="+Lprso_id);
producturl = response.encodeURL("/product/product-info.do?prma_id="+Lprma_id+"&prso_id_one="+prsoid1+"&prso_name_one_en="+prsoNameEn1);
}%>
<li class="mp1" onMouseOver="this.className='LIM1'" onMouseOut="this.className='LIM2'"><a href="<%=producturl%>" target="_blank" class="H3c"><img src="<%=Environment.getChannelD9Sense()%>/DwindlePicCtl.jpg?w=100&h=100&url=<bean:write name="IdProductInfo" property="pic_address" filter="false"/>" alt="<bean:write name="IdProductInfo" property="prma_name" filter="false"/>" border="0"/></a><br/><br/>
<bean:define name="IdProductInfo" property="prma_name" id="prmaName" type="String"/>
<a class="se5cl" href="<%=producturl%>" target="_blank" class="H3c"><ding9:substr title="${IdProductInfo.prma_remark}" len="14"/></a><br/>
<img src="/images/lb/comments_<bean:write name="IdProductInfo" property="product_level" filter="false"/>.gif" width="65" height="12"/><br/><br/>
<span class="se4">
<logic:equal name="IdProductInfo" property="min_price" value="0">
	<span>N/A</span>
</logic:equal> 
<logic:notEqual name="IdProductInfo" property="min_price" value="0">
	￥<bean:write name="IdProductInfo" property="min_price" filter="false"/> 起
</logic:notEqual>
</span>
<br/>

<span>
<logic:equal name="IdProductInfo" property="merchant_count" value="0">
	<span>暂无商家</span>
</logic:equal> 
<logic:notEqual name="IdProductInfo" property="merchant_count" value="0">
	来自<span class="se4"><bean:write name="IdProductInfo" property="merchant_count" filter="false"/></span>个商家
</logic:notEqual>
</span>
<br/>

<logic:notEqual name="IdProductInfo" property="merchant_count" value="1">
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+Lprma_id+"&prso_id_three="+Lprso_id)%>" target="_blank"><img src="/seimages/anbbk.gif" border="0"/></a>--%>
<a href="<c:url value="/product/product-info.do?prma_id=${Lprma_id}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}"/>" target="_blank"><img src="/seimages/anbbk.gif" border="0"/></a>
</logic:notEqual>
<logic:equal name="IdProductInfo" property="merchant_count" value="1">
<%--<a href="/click/merchant-click.do?prma_id=<bean:write name="IdProductInfo" property="prma_id" filter="false"/>&url=<%=ggurl%>" target="_blank"><img src="/seimages/anqgg.gif" border="0"/></a>--%>
<a href="<%=response.encodeURL("/click/merchant-click.do?prma_id="+Lprma_id+"&merc_id="+Lmerc_id+"&url="+ggurl)%>" target="_blank"><img src="/seimages/anqgg.gif" border="0"/></a>
</logic:equal><br/>
<input type="checkbox" value="<bean:write name="IdProductInfo" property="prma_id" filter="false"/>" onClick="Javascript:FUN_ITEM(this.checked,this.value)" name="prma_id" id="prma_id"/>
</li>
</logic:iterate>
</logic:present>
</ul>
</div><!--产品列表结束-->

<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<!--sek100_3-->
<logic:present name="ProductInfo">
<logic:iterate name="ProductInfo"  property="records" id="IdProductInfo" offset="0" indexId="index">
<bean:define id="Lprma_id" name='IdProductInfo' property="prma_id" type="java.lang.Integer"/>
<bean:define id="Lprso_id" name='IdProductInfo' property="prso_id" type="java.lang.Integer"/>
<bean:define id="Lmerc_id" name='IdProductInfo' property="merc_id" type="java.lang.Integer"/>
<bean:define id="prso_id_one" name="IdProductInfo" property="prso_id_one"></bean:define>
<bean:define id="ggurl" property="merc_product_address" name="IdProductInfo" type="String"/>
<bean:define name="IdProductInfo" property="prma_remark" id="remark" type="String"/>
<%
String producturl="";
ggurl=UrlRewriteManager.encrypt(ggurl);
if(Lprma_id==0){
producturl=ggurl;
}else{
//producturl=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+Lprma_id+"&prso_id_three="+Lprso_id);
producturl = response.encodeURL("/product/product-info.do?prma_id="+Lprma_id+"&prso_id_one="+prsoid1+"&prso_name_one_en="+prsoNameEn1);
}%>
<div id="se0031">
<div id="se0031_l"><input type="checkbox" value="<bean:write name="IdProductInfo" property="prma_id" filter="false"/>" onClick="Javascript:FUN_ITEM(this.checked,this.value)" name="prma_id" id=prma_id /></div>
<div id="se0031_m2"><a class="se5cl" href="<%=producturl%>" target="_blank" class="H3c"><bean:write name="IdProductInfo" property="prma_name" filter="false"/></a><br/>
<span class="se1"><ding9:substr title="${IdProductInfo.prma_remark}" len="140"/></span><br/>
<span class="fzH1">
<span class="se1c">产品星级：</span><img src="/images/lb/comments_<bean:write name="IdProductInfo" property="product_level" filter="false"/>.gif" width="65" height="12" /></span>&nbsp;&nbsp;
<span class="se1c">产品点评</span><span class="se1">(
<logic:equal name="IdProductInfo" property="comment_count" value="0">
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+Lprma_id+"&prso_id_three="+Lprso_id+"&type=comment")%>#AddContent" target="_blank" class="se4">发表评论</a>--%>
<a href="<c:url value="/product/product-info.do?prma_id=${Lprma_id}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&type=comment"/>#AddContent" target="_blank" class="se4">发表评论</a>
</logic:equal>
<logic:notEqual name="IdProductInfo" property="comment_count" value="0">
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+Lprma_id+"&prso_id_three="+Lprso_id+"&type=comment")%>#ViewContent" target="_blank" class="se4"><bean:write name="IdProductInfo" property="comment_count" filter="false"/></a>--%>
<a href="<c:url value="/product/product-info.do?prma_id=${Lprma_id}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&type=comment"/>#ViewContent" target="_blank" class="se4"><bean:write name="IdProductInfo" property="comment_count" filter="false"/></a>
</logic:notEqual>)</span><br/>
</div><!--se003_m2-->
<div id="se0031_r">
<span>
<logic:equal name="IdProductInfo" property="min_price" value="0">
	<span>N/A</span>
</logic:equal> 
<logic:notEqual name="IdProductInfo" property="min_price" value="0">
	￥<bean:write name="IdProductInfo" property="min_price" filter="false"/> 起
</logic:notEqual>
</span>
<br/>

<span class="se1">
<logic:equal name="IdProductInfo" property="merchant_count" value="0">
	<span>暂无商家</span>
</logic:equal> 
<logic:notEqual name="IdProductInfo" property="merchant_count" value="0">
	来自<span class="se4"><bean:write name="IdProductInfo" property="merchant_count" filter="false"/></span>个商家
</logic:notEqual>
</span>
<br/>

<logic:notEqual name="IdProductInfo" property="merchant_count" value="1">
<%--<a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+Lprma_id+"&prso_id_three="+Lprso_id)%>" target="_blank" ><img src="/seimages/anbbk.gif" border="0"></a>--%>
<a href="<c:url value="/product/product-info.do?prma_id=${Lprma_id}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}"/>" target="_blank" ><img src="/seimages/anbbk.gif" border="0"/></a>
</logic:notEqual>
<logic:equal name="IdProductInfo" property="merchant_count" value="1">
<%--<a href="/click/merchant-click.do?prma_id=<bean:write name="IdProductInfo" property="prma_id" filter="false"/>&url=<%=ggurl%>" target="_blank"><img src="/seimages/anqgg.gif" border="0"></a>--%>
<a href="<%=response.encodeURL("/click/merchant-click.do?prma_id="+Lprma_id+"&merc_id="+Lmerc_id+"&url="+ggurl)%>" target="_blank"><img src="/seimages/anqgg.gif" border="0"></a>
</logic:equal><br/>
</div>
</div><!--se0031-->
</logic:iterate>
</logic:present>

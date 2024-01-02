<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/util.tld" prefix="util"%>
<%@ page import="com.ding9.search.util.ConstantManager"%>
<%--@ page import="com.ding9.util.ProjectEnvironment"--%>
<%@ page import="com.ding9.util.UrlRewriteManager"%>
<%--@ page import="com.ding9.util.StringHelper"--%>
<%@ page import="com.ding9.dao.productsort.ProductSortDao"%>
<%@ page import="com.ding9.dao.productsort.ProductSortDaoImpl"%>
<%@ page import="com.ding9.entity.productsort.ProductSortVO"%>
<bean:define id="prsoid3" name="productTypeForm" property="prso_id_three" type="Integer"/>

<logic:present name="productTypeForm" property="prso_name_three_en">
<bean:define id="prsoNameEn3" name="productTypeForm" property="prso_name_three_en" type="String"/>
</logic:present>
<logic:notPresent name="productTypeForm" property="prso_name_three_en">
<bean:define id="prsoNameEn3" value="mobile" type="String"/>
</logic:notPresent>
<bean:define id="prsoid1" name="productTypeForm" property="prso_id_one" type="Integer"/>
<logic:present name="productTypeForm" property="prso_name_one_en">
<bean:define id="prsoNameEn1" name="productTypeForm" property="prso_name_one_en" type="String"/>
</logic:present>
<logic:notPresent name="productTypeForm" property="prso_name_one_en">
<bean:define id="prsoNameEn1" value="mobile" type="String"/>
</logic:notPresent>

<bean:define id="prbrid" name="productTypeForm" property="prbr_id" type="Integer"/>
<bean:define id="typeid" name="productTypeForm" property="type" type="Integer"/>
<bean:define id="selectS" property="order_asc_desc" name="productTypeForm" type="Integer"/>
<bean:define id="size" property="page_size" name="productTypeForm" type="Integer"/>
<%--<logic:present name="ProductSort"><bean:define id="prso1" name="ProductSort" property="prso_id_one" type="Integer"/></logic:present>--%>
<jsp:include page="/include/topproduct.jsp" flush="false">
<%--<jsp:param name="channel_id" value="<%=prso1%>"/>--%>
<jsp:param name="channel_id" value="${ProductSort.prso_id_one}"/>
</jsp:include>
<html>
<head>
<logic:present name="Title"><title><bean:write name="Title" filter="false"/></title></logic:present>
<logic:present name="Desc"><META NAME="description" CONTENT="<bean:write name="Desc" filter="false"/>"></logic:present>
<logic:present name="KeyWords"><META NAME="keywords" CONTENT="<bean:write name="KeyWords" filter="false"/>"></logic:present>
<logic:present name="META"><bean:write name="META" filter="false"/></logic:present>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="/css/tefont.css" rel="stylesheet" type="text/css"/>
<link href="/css/te.css" rel="stylesheet" type="text/css"/>
<link href="/css/font.css" rel="stylesheet" type="text/css"/>
<link href="/css/css.css" rel="stylesheet" type="text/css"/>
<link href="/css/secss.css" rel="stylesheet" type="text/css"/>
<link href="/css/sefont.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/js/tecomment.js"></script>
<script type="text/javascript" src="/js/js.js"></script>
</head>
<body>
<center>
<div id="se002">
<div class="se1" id="se002_l">
<div class="sek100">
<A href="http://guide.ding9.com/" class="se1">首页</A>
<logic:present name="ProductSort">
<%--<bean:define id="prso3" name="ProductSort" property="prso_id" type="Integer"/>--%>
  &gt;
<%--<A href="<%=ProjectEnvironment.getChannelDomainName(prso1+"")%>" class="se1"><bean:write name="ProductSort" property="prso_name_one"/></A> &gt;--%>
<A href="${channelDomainName}" class="se1"><bean:write name="ProductSort" property="prso_name_one"/></A> &gt;
<%--<A href="<%=UrlRewriteManager.dynamic2static("/product/product-type.do?prso_id_three="+prso3)%>" class="se1"><bean:write name="ProductSort" property="prso_name"/></A>--%>
<A href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}"/>" class="se1"><bean:write name="ProductSort" property="prso_name"/></A>
</logic:present>
<logic:present name="Prbr_Name">&gt; <bean:write name="Prbr_Name"/></logic:present>
</div>
<logic:present name="Top"><bean:write name="Top" filter="false"/></logic:present>
<%--<logic:present name="Url"><bean:define id="url" name="Url" type="String"/></logic:present>--%>
<logic:present name="ProductInfo"><bean:define id="curr" property="current" name="ProductInfo" type="Integer"></bean:define></logic:present>
<logic:present name="ProductInfo"><bean:define id="totpage" name="ProductInfo" property="totalPage" type="Integer"></bean:define></logic:present>
<logic:present name="ProductBrand"><bean:size name="ProductBrand" id="totsize"/>
<div id="se011">
<div id="se011_l">
<%
int size1 = totsize-1;
if(prbrid>0){
size1=size1-1;
 %>
<img src="/seimages/ck004.gif">
<%}else{%>
<img src="/seimages/ck001.gif">
<%}%>
</div><!--se011_l-->
<div id="se011_r">
<tbody>
<div class="sed001">
<ul>
<logic:iterate name="ProductBrand" id="IdProductBrand" offset="0" indexId="index">
<bean:define id="LIdProductBrand" name="IdProductBrand" property="value" type="String"/>
<%if(prbrid!=Integer.parseInt(LIdProductBrand)){%>
<%--<li><a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+LIdProductBrand+"&order_asc_desc="+selectS+"&page_size="+size)%>" <%=index>=12?" style='DISPLAY: none'":""%> class="se3" id="ProductBrand1"><bean:write name="IdProductBrand" property="extend_value_one"/><span class="se1">(<bean:write name="IdProductBrand" property="count"/>)</span></a></li>--%>
<%--
<li><a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${LIdProductBrand}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${selectS}"/>" <%=index>=12?" style='DISPLAY: none'":""%> class="se3" id="ProductBrand1"><bean:write name="IdProductBrand" property="extend_value_one"/><span class="se1">(<bean:write name="IdProductBrand" property="count"/>)</span></a></li>
--%>
<li><a href="<c:url value="/product/product-type.do?prbr_id=${LIdProductBrand}&prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}"/>" <%=index>=12?" style='DISPLAY: none'":""%> class="se3" id="ProductBrand1"><bean:write name="IdProductBrand" property="extend_value_one"/><span class="se1">(<bean:write name="IdProductBrand" property="count"/>)</span></a></li>
<%}%>
</logic:iterate>
</ul>
</div><!--sed001-->
<logic:greaterThan name="totsize" value="12"><div class="sek100_1"><img src="/seimages/dot001.gif"/><a href="#" id="cmdProductBrand1" title="显示全部" onClick="Javascript:DisplayProductBrand1(1,<%=size1%>)" class="se1">显示全部</a><a href="#" id="cmdProductBrand1" title="精简显示" style="DISPLAY: none" onClick="Javascript:DisplayProductBrand1(0,<%=size1%>)" class="se1">精简显示</a></div></logic:greaterThan>
</tbody>
</div><!--se011_r-->
</div><!--se011-->
</logic:present>
<logic:present name="ThreeGrade">
<div id="se011">
<div id="se011_l"><img src="/seimages/ck002.gif" width="87" height="74"/></div><!--se011_l-->
<div id="se011_r">
<tbody>
<div class="sed001">
<ul><logic:iterate name="ThreeGrade" id="IdThreeGrade" offset="0" indexId="inx">
<bean:define id="LIdThreeGrade" name='IdThreeGrade' property="value" type="java.lang.String"/>
<%
int prsoIdThree = Integer.parseInt(LIdThreeGrade);
ProductSortDao psDao = new ProductSortDaoImpl();
ProductSortVO ps = psDao.findByP3(prsoIdThree);
String prsoNameThreeEn = "default";
if(ps!=null) {
 prsoNameThreeEn = ps.getPrso_name_three_en();
}
%>
<%--<li><a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+LIdThreeGrade+"&order_asc_desc="+selectS+"&page_size="+size+"&prbr_id="+prbrid)%>" <%=inx>=12?" style='DISPLAY: none'":""%> class="se3" id="ProductBrand"><bean:write name="IdThreeGrade" property="extend_value_one"/><span class="se1">(<bean:write name="IdThreeGrade" property="count"/>)</span></a></li>--%>
<%--
<li><a href="<c:url value="/product/product-type.do?prso_id_three=${LIdThreeGrade}&prbr_id=${prbrid}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${selectS}"/>" <%=inx>=12?" style='DISPLAY: none'":""%> class="se3" id="ProductBrand"><bean:write name="IdThreeGrade" property="extend_value_one"/><span class="se1">(<bean:write name="IdThreeGrade" property="count"/>)</span></a></li>
<li><a href="<%=UrlRewriteManager.dynamic2static("/product/product-type.do?prso_id_three="+LIdThreeGrade+"&prbr_id="+prbrid+"&type="+typeid+"&page_size="+size+"&current_page=1&order_asc_desc="+selectS)%>" <%=inx>=12?" style='DISPLAY: none'":""%> class="se3" id="ProductBrand"><bean:write name="IdThreeGrade" property="extend_value_one"/><span class="se1">(<bean:write name="IdThreeGrade" property="count"/>)</span></a></li>

<li><a href="<c:url value="/product/product-type.do?prso_id_three=${LIdThreeGrade}&prso_name_three_en=${prsoNameThreeEn}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}"/>" <%=inx>=12?" style='DISPLAY: none'":""%> class="se3" id="ProductBrand"><bean:write name="IdThreeGrade" property="extend_value_one"/><span class="se1">(<bean:write name="IdThreeGrade" property="count"/>)</span></a></li>
--%>
<li><a href="<%=response.encodeURL("/product/product-type.do?prso_id_three="+LIdThreeGrade+"&prso_name_three_en="+prsoNameThreeEn+"&prso_id_one="+prsoid1+"&prso_name_one_en="+prsoNameEn1)%>" <%=inx>=12?" style='DISPLAY: none'":""%> class="se3" id="ProductBrand"><bean:write name="IdThreeGrade" property="extend_value_one"/><span class="se1">(<bean:write name="IdThreeGrade" property="count"/>)</span></a></li>
</logic:iterate></ul>
</div><!--sed001--><bean:size name="ThreeGrade" id="totsize1"/>
<logic:greaterThan name="totsize1" value="12"><div class="sek100_1"><img src="/seimages/dot001.gif"><a href="#" id="cmdProductBrand" title="显示全部" onClick="Javascript:DisplayProductBrand(1,<%=totsize1-1%>)" class="se1">显示全部</a><a href="#" id="cmdProductBrand" title="精简显示" style="DISPLAY: none" onClick="Javascript:DisplayProductBrand(0,<%=totsize1-1%>)" class="se1">精简显示</a></div></logic:greaterThan>
</tbody>
</div><!--se011_r-->
</div><!--se011-->
</logic:present>
<logic:present name="ProductInfo"><bean:size name="ProductInfo"  property="records" id="infosize"/></logic:present>
<%if(infosize==0){%><%@include file="/product/noresult.jsp"%><%}%>
<html:form action="/product/product-compare.do" target="_blank">
<input type="hidden" name="prso_id" value="${prsoid3}"/>
<%if(infosize>0){%>
<div class="sek100_3">
<span class="se1">
<label><img src="/seimages/dbx.gif" width="16" height="13"/><input name="cmdCompare" type="submit" onclick="return check()" class="se1" value="对比选中的商品"/></label>
<logic:equal name="productTypeForm" property="type" value="0"><img src="/seimages/fs1.gif" alt="列表方式" border="0" width="18" height="15"/></logic:equal>
<logic:notEqual name="productTypeForm" property="type" value="0">
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+selectS+"&page_size="+size+"&type=0")%>"><img src="/seimages/fs1_1.gif" alt="列表方式" width="18" height="15" border="0"></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=0&page_size=${size}&current_page=1&order_asc_desc=${selectS}"/>"><img src="/seimages/fs1_1.gif" alt="列表方式" width="18" height="15" border="0"/></a>
</logic:notEqual>
<logic:equal name="productTypeForm" property="type" value="1"><img src="/seimages/fs2.gif" alt="图片方式" width="18" height="15" border="0"/></logic:equal>
<logic:notEqual name="productTypeForm" property="type" value="1">
<%--<a href="<%=UrlRewriteManager.dynamic2static(url}&prso_id_three="+prsoid3}&prbr_id="+prbrid}&order_asc_desc="+selectS}&page_size="+size}&type=1")%>"><img src="/seimages/fs2_1.gif" alt="图片方式" width="18" height="15" border="0"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=1&page_size=${size}&current_page=1&order_asc_desc=${selectS}"/>"><img src="/seimages/fs2_1.gif" alt="图片方式" width="18" height="15" border="0"/></a>
</logic:notEqual>
<logic:equal name="productTypeForm" property="type" value="2"><img src="/seimages/fs3.gif" alt="纯文字方式" width="18" height="15" border="0"/></logic:equal>
<logic:notEqual name="productTypeForm" property="type" value="2">
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+selectS+"&page_size="+size+"&type=2")%>"><img src="/seimages/fs3_1.gif" alt="纯文字方式" width="18" height="15" border="0"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=2&page_size=${size}&current_page=1&order_asc_desc=${selectS}"/>"><img src="/seimages/fs3_1.gif" alt="纯文字方式" width="18" height="15" border="0"/></a>
</logic:notEqual>&nbsp;
<logic:equal name="productTypeForm" property="page_size" value="10"><img src="/seimages/item_amount_10_act.gif" alt="每页显示10件商品" width="18" height="15" border="0"/></logic:equal>
<logic:notEqual name="productTypeForm" property="page_size" value="10">
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size=10&current_page=1&order_asc_desc="+selectS)%>"><img src="/seimages/item_amount_10_1.gif" width="18" height="15" border="0"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=10&current_page=1&order_asc_desc=${selectS}"/>"><img src="/seimages/item_amount_10_1.gif" alt="每页显示10件商品" width="18" height="15" border="0"/></a>
</logic:notEqual>
<logic:equal name="productTypeForm" property="page_size" value="20"><img src="/seimages/item_amount_20_1.gif" alt="每页显示20件商品" width="18" height="15" border="0"/></logic:equal>
<logic:notEqual name="productTypeForm" property="page_size" value="20">
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size=20&current_page=1&order_asc_desc="+selectS)%>"><img src="/seimages/item_amount_20.gif" width="18" height="15" border="0"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=20&current_page=1&order_asc_desc=${selectS}"/>"><img src="/seimages/item_amount_20.gif" alt="每页显示20件商品" width="18" height="15" border="0"/></a>
</logic:notEqual>
<logic:equal name="productTypeForm" property="page_size" value="40"><img src="/seimages/item_amount_40_act.gif" alt="每页显示40件商品" width="18" height="15" border="0"/></logic:equal>
<logic:notEqual name="productTypeForm" property="page_size" value="40">
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size=40&current_page=1&order_asc_desc="+selectS)%>"><img src="/seimages/item_amount_40.gif" width="18" height="15" border="0"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=40&current_page=1&order_asc_desc=${selectS}"/>"><img src="/seimages/item_amount_40.gif" alt="每页显示40件商品" width="18" height="15" border="0"/></a>
</logic:notEqual>&nbsp;
<%if(selectS==ConstantManager.SORT_PRODUCT_PRICE_INC){%>
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+ConstantManager.SORT_PRODUCT_PRICE_DEC+"&page_size="+size)%>"><img src="/seimages/sortby_price_up_act.gif" alt="按价格排序" border="0" width="24" height="15"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${priceOrderDesc}"/>"><img src="/seimages/sortby_price_up_act.gif" alt="按价格排序" border="0" width="24" height="15"/></a>
<%}else if (selectS==ConstantManager.SORT_PRODUCT_PRICE_DEC){%>
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+ConstantManager.SORT_PRODUCT_PRICE_INC+"&page_size="+size)%>"><img src="/seimages/sortby_price_down.gif" alt="按价格排序" border="0" width="24" height="15"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${priceOrderAsc}"/>"><img src="/seimages/sortby_price_down.gif" alt="按价格排序" border="0" width="24" height="15"/></a>
<%}else{%>
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+ConstantManager.SORT_PRODUCT_PRICE_INC+"&page_size="+size)%>"><img src="/seimages/sortby_price_up.gif" alt="按价格排序" border="0" width="24" height="15"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${priceOrderAsc}"/>"><img src="/seimages/sortby_price_up.gif" alt="按价格排序" border="0" width="24" height="15"/></a>
<%}%>
<%if(selectS==ConstantManager.SORT_PRODUCT_COMMENT_DEC){%>
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+ConstantManager.SORT_PRODUCT_COMMENT_INC+"&page_size="+size)%>"><img src="/seimages/pl_down.gif" alt="按评论数排序" border="0" width="24" height="15"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${commentOrderAsc}"/>"><img src="/seimages/pl_down.gif" alt="按评论数排序" border="0" width="24" height="15"/></a>
<%}else if (selectS==ConstantManager.SORT_PRODUCT_COMMENT_INC){%>
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+ConstantManager.SORT_PRODUCT_COMMENT_DEC+"&page_size="+size)%>"><img src="/seimages/pl_up_act.gif" alt="按评论数排序" border="0" width="24" height="15"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${commentOrderDesc}"/>"><img src="/seimages/pl_up_act.gif" alt="按评论数排序" border="0" width="24" height="15"/></a>
<%}else{%>
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+ConstantManager.SORT_PRODUCT_COMMENT_INC+"&page_size="+size)%>"><img src="/seimages/pl_up.gif" alt="按评论数排序" border="0" width="24" height="15"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${commentOrderAsc}"/>"><img src="/seimages/pl_up.gif" alt="按评论数排序" border="0" width="24" height="15"/></a>
<%}%>
<%if(selectS==ConstantManager.SORT_PRODUCT_MERCHANT_DEC){%>
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+ConstantManager.SORT_PRODUCT_MERCHANT_INC+"&page_size="+size)%>"><img src="/seimages/sj_down.gif" alt="按商家数排序" border="0" width="24" height="15"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${merchantOrderAsc}"/>"><img src="/seimages/sj_down.gif" alt="按商家数排序" border="0" width="24" height="15"/></a>
<%}else if (selectS==ConstantManager.SORT_PRODUCT_MERCHANT_INC){%>
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+ConstantManager.SORT_PRODUCT_MERCHANT_DEC+"&page_size="+size)%>"><img src="/seimages/sj_up_act.gif" alt="按商家数排序" border="0" width="24" height="15"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${merchantOrderDesc}"/>"><img src="/seimages/sj_up_act.gif" alt="按商家数排序" border="0" width="24" height="15"/></a>
<%}else{%>
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&order_asc_desc="+ConstantManager.SORT_PRODUCT_MERCHANT_INC+"&page_size="+size)%>"><img src="/seimages/sj_up.gif" alt="按商家数排序" border="0" width="24" height="15"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=${merchantOrderAsc}"/>"><img src="/seimages/sj_up.gif" alt="按商家数排序" border="0" width="24" height="15"/></a>
<%}%>
<select class="se1" name="view_type" onchange="Javascript:document.location.href=this.options[this.selectedIndex].className">
<option value="0">-选择排序/显示方式-</option>
<optgroup label="排序">
<%--
<option value="102" <%=102==selectS?"selected":""%> class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&type="+typeid+"&page_size="+size+"&current_page=1&order_asc_desc=102")%>">价格从低到高</option>
<option value="103" <%=103==selectS?"selected":""%> class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&type="+typeid+"&page_size="+size+"&current_page=1&order_asc_desc=103")%>">价格从高到低</option>
<option value="105" <%=105==selectS?"selected":""%> class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&type="+typeid+"&page_size="+size+"&current_page=1&order_asc_desc=105")%>">评论数从高到低</option>
<option value="104" <%=104==selectS?"selected":""%> class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&type="+typeid+"&page_size="+size+"&current_page=1&order_asc_desc=104")%>">评论数从低到高</option>
<option value="107" <%=107==selectS?"selected":""%> class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&type="+typeid+"&page_size="+size+"&current_page=1&order_asc_desc=107")%>">商家数从高到低</option>
<option value="106" <%=106==selectS?"selected":""%> class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&type="+typeid+"&page_size="+size+"&current_page=1&order_asc_desc=106")%>">商家数从低到高</option>
--%>
<option value="102" <%=102==selectS?"selected":""%> class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=102"/>">价格从低到高</option>
<option value="103" <%=103==selectS?"selected":""%> class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=103"/>">价格从高到低</option>
<option value="105" <%=105==selectS?"selected":""%> class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=105"/>">评论数从高到低</option>
<option value="104" <%=104==selectS?"selected":""%> class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=104"/>">评论数从低到高</option>
<option value="107" <%=107==selectS?"selected":""%> class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=107"/>">商家数从高到低</option>
<option value="106" <%=106==selectS?"selected":""%> class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=1&order_asc_desc=106"/>">商家数从低到高</option>
</optgroup>
<optgroup label="显示">
<%--
<option value="1" class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size="+size+"&current_page=1&order_asc_desc="+selectS+"&type=0")%>">列表方式</option>
<option value="2" class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size="+size+"&current_page=1&order_asc_desc="+selectS+"&type=1")%>">图片方式</option>
<option value="3" class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size="+size+"&current_page=1&order_asc_desc="+selectS+"&type=2")%>">纯文字方式</option>
--%>
<option value="1" class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=0&page_size=${size}&current_page=1&order_asc_desc=${selectS}"/>">列表方式</option>
<option value="2" class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=1&page_size=${size}&current_page=1&order_asc_desc=${selectS}"/>">图片方式</option>
<option value="3" class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=2&page_size=${size}&current_page=1&order_asc_desc=${selectS}"/>">纯文字方式</option>
</optgroup>
<optgroup label="数量">
<%--
<option value="4" class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size=10&current_page=1&order_asc_desc="+selectS+"&type="+typeid)%>">每页显示10个商品</option>
<option value="5" class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size=20&current_page=1&order_asc_desc="+selectS+"&type="+typeid)%>">每页显示20个商品</option>
<option value="6" class="<%=UrlRewriteManager.dynamic2static(url+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size=40&current_page=1&order_asc_desc="+selectS+"&type="+typeid)%>">每页显示40个商品</option>
--%>
<option value="4" class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=10&current_page=1&order_asc_desc=${selectS}"/>">每页显示10个商品</option>
<option value="5" class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=20&current_page=1&order_asc_desc=${selectS}"/>">每页显示20个商品</option>
<option value="6" class="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=40&current_page=1&order_asc_desc=${selectS}"/>">每页显示40个商品</option>
</optgroup>
</select>&nbsp;${curr}/${totpage}&nbsp;<logic:present name="ProductInfo"><logic:equal  property="hasPreviousPage" name="ProductInfo" value="true">
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size="+size+"&current_page="+(curr-1)+"&order_asc_desc="+selectS)%>"><img src="/seimages/front_page_act.gif" width="46" height="15" border="0"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=${(curr-1)}&order_asc_desc=${selectS}"/>"><img src="/seimages/front_page_act.gif" width="46" height="15" border="0"/></a>
</logic:equal></logic:present>
<logic:present name="ProductInfo"><logic:equal property="hasNextPage" name="ProductInfo" value="true">
<%--<a href="<%=UrlRewriteManager.dynamic2static(url+"&type="+typeid+"&prso_id_three="+prsoid3+"&prbr_id="+prbrid+"&page_size="+size+"&current_page="+(curr+1)+"&order_asc_desc="+selectS)%>"><img src="/seimages/next_page_act.gif" width="46" height="15" border="0"/></a>--%>
<a href="<c:url value="/product/product-type.do?prso_id_three=${prsoid3}&prso_name_three_en=${prsoNameEn3}&prso_id_one=${prsoid1}&prso_name_one_en=${prsoNameEn1}&prbr_id=${prbrid}&key=${key}&type=${typeid}&page_size=${size}&current_page=${(curr+1)}&order_asc_desc=${selectS}"/>"><img src="/seimages/next_page_act.gif" width="46" height="15" border="0"/></a>
</logic:equal></logic:present>
</div>
<%}%>
<%if (typeid==1){//图片%>
<%@include file="/product/pictype.jsp"%>
<%}else if (typeid==2){%>
<%@include file="/product/wordtype.jsp"%>
<%}else{%>
<%@include file="/product/producttype.jsp"%>
<%}%>
<%if(infosize>0){%>
<div id="se012">
<div id="se012_l"><img src="/seimages/dbs.gif" width="16" height="13"/><input name="cmdCompare" type="submit" onclick="return check()" target="_blank" class="se1" value="对比选中的商品"/></div>
<input type="hidden" name="select_prma_id"/>
<div class="se1c" id="se012_r">共约有<span class="se4"><logic:present name="ProductInfo"><bean:write name='ProductInfo' property='recordCount'/></logic:present></span>项结果，这是第<span class="se4"><logic:present name="ProductInfo"><bean:write name='ProductInfo' property='start'/>-<bean:write name='ProductInfo' property='end'/></logic:present></span>项。</div>
</div><!--se012-->
<%}%>
</html:form>
<div id="se004">
<div id="se004_l"></div>
<div class="se1" id="se004_r">

<logic:present name="ProductInfo"><logic:equal property="hasPreviousPage" name="ProductInfo" value="true">
<a href="<c:url value="/${prsoNameEn1}-${prsoid1}/category/${prsoNameEn3}-${prsoid3}/brand-${prbrid}-key-${key}-vt-${typeid}-sortby-${selectS}-${ProductInfo.pageSize}-page${ProductInfo.previous}/"/>" class="se1">上一页</a>
</logic:equal>
<logic:iterate name="ProductInfo" property="before" id="beforePageItem">
<a href="javascript:pagination(<bean:write name='beforePageItem' property='page'/>,<bean:write name='ProductInfo' property='pageSize'/>);" class="se1">[<bean:write name="beforePageItem" property="page"/>]</a>
</logic:iterate>
<logic:greaterThan name="ProductInfo" property="recordCount" value="10">
<span class="se4"><bean:write name="ProductInfo" property="current"/></span>
</logic:greaterThan>
<logic:iterate name="ProductInfo" property="after" id="afterPageItem">
<a href="<c:url value="/${prsoNameEn1}-${prsoid1}/category/${prsoNameEn3}-${prsoid3}/brand-${prbrid}-key-${key}-vt-${typeid}-sortby-${selectS}-${ProductInfo.pageSize}-page${afterPageItem.page}/"/>" class="se1">[${afterPageItem.page}]</a>
</logic:iterate>
<logic:equal property="hasNextPage" name="ProductInfo" value="true">
<a href="<c:url value="/${prsoNameEn1}-${prsoid1}/category/${prsoNameEn3}-${prsoid3}/brand-${prbrid}-key-${key}-vt-${typeid}-sortby-${selectS}-${ProductInfo.pageSize}-page${ProductInfo.next}/"/>" class="se1">下一页</a>
</logic:equal></logic:present>
<%--
<util:pagination pageCount="${CountPage}" currentPage="${CurrentPage}" url="${PageUrl}" highlightClass="red" backgroundClass="H1"/>
--%>
</div>
<div><logic:present name="Bottom"><bean:write name="Bottom" filter="false"/></logic:present></div>
</div><!--se004-->
</div><!--se002_l-->
<div id="se002_r">
<html:form action="/product/product-type.do">
<html:hidden property="prso_id_three"/>
<html:hidden property="prbr_id"/>
<logic:present name="RightTop"><bean:write name="RightTop" filter="false"/></logic:present>
<div class="sek100_2"><span class="se1c">缩小搜索范围</span></div>
<div class="sek100_7">
价格范围：从<label><input name="min_price" type="text" onkeydown="KeyDown('search')" value="<c:if test="${productTypeForm.min_price>0.0}">${productTypeForm.min_price}</c:if>" class="se1" size="4"/></label>
至<input name="max_price" onkeydown="KeyDown('search')" value="<c:if test="${productTypeForm.max_price>0.0}">${productTypeForm.max_price}</c:if>" type="text" class="se1" size="5"/><br/>
关&nbsp;键&nbsp;字：<label><html:text property="prma_name" onkeydown="KeyDown('search')" size="18" styleClass="se1"/></label><br/>
<span class="se1"><input name="search" type="submit" class="se1" value="在结果中搜索"/>&nbsp;<input name="Submit222" type="reset" class="se1" value=" 重 置 "/></span>
</div><!--sek100_7-->
</html:form>
<logic:present name="RightMiddle"><bean:write name="RightMiddle" filter="false"/></logic:present>
</div><!--se002_r-->
</div><!--se002-->
<script language="javascript"><!--
function check(){
var select_prma_id= document.forms["productCompareForm"].select_prma_id.value;
if(select_prma_id==''){
alert('请选择两个或两个以上的商品进行对比');
return false;
}else{
return true;
}
}
function FUN_ITEM(CHECKED,PRMA_ID){
if (CHECKED==false){
var select_prma_id=document.all.select_prma_id.value;
if (select_prma_id!=""){
select_prma_id=select_prma_id.split(",");
document.all.select_prma_id.value="";
for (var I=0;I<=select_prma_id.length-2;I++){
if (select_prma_id[I]!=PRMA_ID){
if (document.all.select_prma_id.value==""){
document.all.select_prma_id.value=select_prma_id[I]+",";
}else{
document.all.select_prma_id.value=document.all.select_prma_id.value+select_prma_id[I]+",";
}
}
}
}
}else{
if (document.all.select_prma_id.value!=""){
document.all.select_prma_id.value=document.all.select_prma_id.value+PRMA_ID+",";
}else{
document.all.select_prma_id.value=PRMA_ID+",";
}
}
select_prma_id = document.all.select_prma_id.value;
select_prma_id=select_prma_id.split(",");
if(select_prma_id.length>7) alert('最多只能选择6款商品进行比较！');
}
function KeyDown(name){
if (event.keyCode == 13){
event.returnValue=false;
event.cancel = true;
eval('document.forms["productTypeForm"].'+name+'.click()');
}
}

</script>
<%@ include file="/include/bottom.jsp"%>
</center>
</body>
</html>

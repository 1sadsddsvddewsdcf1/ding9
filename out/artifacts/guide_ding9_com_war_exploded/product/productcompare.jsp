<%@page contentType="text/html;charset=gbk" import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ page import="com.ding9.util.UrlRewriteManager,com.ding9.util.Environment"%>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Set" %>
<%@ page import="java.util.LinkedHashMap" %>
<head>
<logic:present name="Title"><title><bean:write name="Title" filter="false"/></title></logic:present>
<logic:present name="Desc"><META NAME="description" CONTENT="<bean:write name="Desc" filter="false"/>"></logic:present>
<logic:present name="KeyWords"><META NAME="keywords" CONTENT="<bean:write name="KeyWords" filter="false"/>"></logic:present>
<logic:present name="META"><bean:write name="META" filter="false"/></logic:present>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="../css/css2.css" rel="stylesheet" type="text/css" />
<link href="/css/fzfont.css" rel="stylesheet" type="text/css">
<link href="/css/fz.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="../js/comment.js"></script>
<SCRIPT LANGUAGE="JAVASCRIPT" SRC="../js/public.js"></SCRIPT>
</head>

<body>
<logic:present name="prso_id_one">
<bean:define id="prsoid1" name="prso_id_one" />
</logic:present>
<jsp:include page="/include/top.jsp" flush="true">
<jsp:param   name="channel_id"   value="<%=prsoid1%>"/>
</jsp:include>
<bean:define id="prsoid" name="productCompareForm" property="prso_id" type="Integer"/>
<table width="900" border="0" align="center" cellpadding="0" cellspacing="1" bgcolor="#CCCCCC">
 <tr>
    <td height="30" width="88" align="center" background="images/fz/bg001.gif" bgcolor="#FFFFFF">&nbsp;</td>
    <% int prma1=0;
      int prma2=0;
      int prma3=0;
      int prma4=0;
      int prma5=0;
      int prma0=0;%>

      <logic:present name="productinfo">

<logic:iterate name="productinfo"  id="pic_id" offset="0" indexId="index">
        <bean:define id="picinfo" name="pic_id" property="value"  type="com.ding9.search.entity.product.ProductMaster"/>
        <% switch(index){
        case 0:prma0 = picinfo.getPrma_id();break;
        case 1: prma1 =picinfo.getPrma_id();break;
        case 2:prma2 = picinfo.getPrma_id();break;
        case 3:prma3 = picinfo.getPrma_id();break;
        case 4:prma4 = picinfo.getPrma_id();break;
        case 5:prma5 = picinfo.getPrma_id();break;
        default :;
        }

        %>
    <td align="center" width="<bean:write name="width"/>" background="/images/fz/bg001.gif" bgcolor="#FFFFFF"><a href="<%=UrlRewriteManager.dynamic2static("/product/product-compare.do?dell_id="+picinfo.getPrma_id()+"&prso_id="+prsoid)%>" class="fzH5">移除</a></td>
</logic:iterate>
</logic:present>

  </tr>
  <tr>
    <td height="100" align="center" bgcolor="#FFFFFF" class="fzH1c"><span class="k1c">商品图片</span></td>
    <logic:present name="productinfo">
    <logic:iterate name="productinfo"  id="pic_id" offset="0" indexId="index">
        <bean:define id="picinfo" name="pic_id" property="value"  type="com.ding9.search.entity.product.ProductMaster"/>
        <td height="99" align="center" bgcolor="#FFFFFF" class="fzH1c"><a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+picinfo.getPrma_id())%>"><img src="<%=Environment.getChannelD9Sense()%>/DwindlePicCtl.jpg?w=80&h=80&url=<bean:write name="picinfo" property="pic_address"/>"  border=0 /></a></td>
   </logic:iterate>
   </logic:present>
  </tr>
  <tr>
    <td height="30" align="center" bgcolor="#FFFFFF" class="fzH1c"><span class="k1c">商品名称</span></td>
    <logic:present name="productinfo">
    <logic:iterate name="productinfo"  id="pic_id" offset="0" indexId="index">
        <bean:define id="picinfo" name="pic_id" property="value"  type="com.ding9.search.entity.product.ProductMaster"/>
        <td height="99" align="center" bgcolor="#FFFFFF" class="fzH1c"><a href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+picinfo.getPrma_id())%>" class="fzH1" target="_blank" ><bean:write name="picinfo" property="prma_name"/></a></td>
   </logic:iterate>
   </logic:present>
  </tr>
  <tr>
    <td height="30" align="center" bgcolor="#FFFFFF" class="fzH1c">商品品牌</td>
    <logic:present name="productinfo">
    <logic:iterate name="productinfo"  id="pic_id" offset="0" indexId="index">
        <bean:define id="picinfo" name="pic_id" property="value"  type="com.ding9.search.entity.product.ProductMaster"/>
    <td align="center" bgcolor="#FFFFFF" class="fzH1"><bean:write name="picinfo" property="prbr_name" /></td>
    </logic:iterate>
    </logic:present>
  </tr>
  <tr>
    <td height="30" align="center" bgcolor="#FFFFFF" class="fzH1c"><span class="k1c">价格范围</span></td>
    <logic:present name="productinfo">
    <logic:iterate name="productinfo"  id="pic_id" offset="0" indexId="index">
        <bean:define id="picinfo" name="pic_id" property="value"  type="com.ding9.search.entity.product.ProductMaster"/>
    <td align="center" bgcolor="#FFFFFF" class="fzH6"><bean:write name="picinfo" property="min_price" />-<bean:write name="picinfo" property="max_price" /></td>
    </logic:iterate>
    </logic:present>
  </tr>
  <tr>
    <td height="30" align="center" bgcolor="#FFFFFF" class="fzH1c"><span class="k1c">比较价格</span></td>
   <logic:present name="productinfo">
   <logic:iterate name="productinfo" id="product_info" offset="0" indexId="index">
     <td align="center" bgcolor="#FFFFFF">
     <bean:define id="goinfo" name="product_info" property="value"  type="com.ding9.search.entity.product.ProductMaster"/>

<logic:notEqual name="goinfo" property="merchant_count" value="1">
<a target="_blank" href="<%=UrlRewriteManager.dynamic2static("/product/product-info.do?prma_id="+goinfo.getPrma_id())%>">
<img src="/images/ss/anbbk.gif" width="85" height="28" border="0" />
</a>
</logic:notEqual>
<logic:equal name="goinfo" property="merchant_count" value="1">
<bean:define id="ggurl" property="merc_product_address" name="goinfo" type="String"/>
<% ggurl=UrlRewriteManager.encrypt(ggurl);%>
<a target="_blank" href="/click/merchant-click.do?prma_id=<bean:write name="goinfo" property="prma_id" filter="false"/>&url=<%=ggurl%>">
<img src="/images/lb/4_49.gif" width="85" height="28" border="0" />
</a>
</logic:equal>
 </logic:iterate>
 </logic:present>
  </tr>
  <tr>
    <td height="30" align="center" bgcolor="#FFFFFF" class="fzH1c"><span class="k1c">商品级别</span></td>
    <logic:present name="productinfo">
    <logic:iterate name="productinfo"  id="pic_id" offset="0" indexId="index">
        <bean:define id="picinfo" name="pic_id" property="value"  type="com.ding9.search.entity.product.ProductMaster"/>
    <td align="center" bgcolor="#FFFFFF"><img src="/images/lb/comments_<bean:write name="picinfo" property="product_level"/>.gif" width="65" height="12" /></td>
    </logic:iterate>
    </logic:present>
  </tr>
  <logic:present name="parameter">
  <tr>
    <td height="25" colspan="7" align="left" bgcolor="#F2F2F2" class="fzH5c">&nbsp;&nbsp;&nbsp;参&nbsp;&nbsp;&nbsp;&nbsp;数</td>
    </tr>
<% Object value0="",value1="",value2="",value3="",value4="",value5="";

%>
<logic:iterate name="parameter" id="parent" offset="0"  indexId="index">
<%
  Set keySet = ((LinkedHashMap)parent).keySet();
      int i=0;
      //System.out.println((LinkedHashMap)parent);
      for (Iterator iter = keySet.iterator(); iter.hasNext();) {
        String key = (String) iter.next();
        if(i==0){ i++;%>
  <tr>
    <td height="30" align="center" bgcolor="#FFFFFF" class="fzH1c"><span class="k1c"><%=key%></span></td>
<%				}else{
          if(prma0==Integer.parseInt(key)){	value0 = ((LinkedHashMap)parent).get(key);
          }
        else if(prma1==Integer.parseInt(key)) {	value1 = ((LinkedHashMap)parent).get(key);}
        else if(prma2==Integer.parseInt(key)) {	value2 = ((LinkedHashMap)parent).get(key);	}
        else if(prma3==Integer.parseInt(key)) {	value3 = ((LinkedHashMap)parent).get(key);}
        else if(prma4==Integer.parseInt(key)) {	value4 = ((LinkedHashMap)parent).get(key);}
        else if(prma5==Integer.parseInt(key)) {	value5 = ((LinkedHashMap)parent).get(key);}
        }
      }
    for(int j=0;j<keySet.size()-1;j++){
%>
  <td width="<bean:write name="width"/>" height="30" bgcolor="#FFFFFF" class="fzH1" align="center" >
        <% if(j==0) out.println(value0);
        else if(j==1) out.println(value1);
        else if(j==2) out.println(value2);
        else if(j==3) out.println(value3);
        else if(j==4) out.println(value4);
        else if(j==5) out.println(value5); %>
      </td>
      <%}%>
  </tr>
 </logic:iterate>
 </logic:present>
 <tr>
    <td height="30" align="center" background="images/fz/bg001.gif" bgcolor="#FFFFFF">&nbsp;</td>
<logic:present name="productinfo">
<logic:iterate name="productinfo"  id="pic_id" offset="0" indexId="index">
        <bean:define id="picinfo" name="pic_id" property="value"  type="com.ding9.search.entity.product.ProductMaster"/>
    <td align="center" width="<bean:write name="width"/>" background="/images/fz/bg001.gif" bgcolor="#FFFFFF"><a href="<%=UrlRewriteManager.dynamic2static("/product/product-compare.do?dell_id="+picinfo.getPrma_id()+"&prso_id="+prsoid)%>" class="fzH5">移除</a></td>
</logic:iterate>
</logic:present>
  </tr>
</table>
<%@ include file="/include/bottom.jsp"%>
</body>
</html>

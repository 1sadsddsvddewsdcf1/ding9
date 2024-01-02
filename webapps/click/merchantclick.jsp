<%@page contentType="text/html;charset=GBK" import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html>
<head>
<title>顶九网联盟: 购物搜索,一个顶九! 顶九购物搜索信息平台 guide.ding9.com</title>
<META NAME="description"
	CONTENT="首页关键内容中国最好、最强、产品最多的比较购物平台，让您享受省时、省力、省钱、省心的购物环境，真正做到货比多家，购买到最好、最便宜的商品，体验比较购物的无限乐趣。">
<META NAME="keywords"
	CONTENT="首页关键词比较 购物 网站 价格 商家 商品 产品 品牌 购物网站 比较购物 在线购物 比较价格 商家比较  产品评价 商家评价 ding9.com 计算机 数码电子 办公设备 通讯 汽车 成人用品 家用电器 化妆品 音像">
<META NAME="Author" CONTENT="顶九网">
<META NAME="Subject"
	CONTENT="顶九网 ding9网 ding9 顶九 ding9wang  比较 购物 省钱 便宜 商家 指南">
<META NAME="Robots" CONTENT="all">
<META NAME="copyright" CONTENT="ding9.com">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="refresh" content="1;URL=<bean:write name="url"/>">
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	color: #666666;
}

.STYLE2 {
	color: #990000
}

.STYLE6 {
	color: #009933
}

.STYLE7 {
	font-size: 14px;
	color: #000033;
}
-->
</style>
</head>
<body>
<table width="550" border="0" align="center" cellpadding="0"
cellspacing="1" bgcolor="#FF9933">
<tr>
<td align="center" bgcolor="#FFFFFF">
<br>
<br>
<table width="420" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="411" align="center">
			<img src="http://guide.ding9.com/images/click/logo.gif"
				width="220" height="100">
			<br>
			<br>
			<br>
		</td>
	</tr>
	<TR>
	<td>
		<p class="STYLE1">
			您将离开
			<span class="STYLE2">顶九网</span>到
			<span class="STYLE6"><bean:write name="merchantinfo"
					property="merc_com_name" /> </span>网站进行购物；
			<br>
			<br>
			<span class="STYLE2">顶九网</span>通过搜索引擎向您提供购物相关信息，但不出售任何商品；
			<br>
			<br>
			<span class="STYLE2">顶九网</span>不对您在
			<span class="STYLE6"><bean:write name="merchantinfo"
					property="merc_com_name" />
			</span>网站的购物交易过程和结果负责；
		</p>
	</td>
	</tr>
</table>
<br>

<table width="500" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td align="center">
			<span class="STYLE6"><br> <img
					src="http://guide.ding9.com/images/click/loading.gif"
					width="280" height="13">
				<br> <br> </span>
		</td>
	</tr>
	<tr>
		<td align="center">
			<span class="STYLE7"> 
			<logic:equal value="1"	name="linktype">
				搜索引擎正为您打开 <bean:write name="merchantinfo" property="merc_com_name" />网站，请耐心等待。。。
			</logic:equal> 
			<logic:equal value="2" name="linktype">
				该商品页无法打开，我们将您转到该网站首页进一步查找，请耐心等待。。。
			</logic:equal>
			<logic:equal value="3" name="linktype">该网站无法打开，建议返回顶九网继续搜索</logic:equal>
			</span>
		</td>
	</tr>
</table>

<br>
<br>
</td>
</tr>
</table>
</body>
</html>

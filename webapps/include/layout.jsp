<%@page contentType="text/html;charset=GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<html>
	<head>
        <title>顶九网: 购物搜索,一个顶九! 顶九购物搜索信息平台  guide.ding9.com</title> 
		<META NAME="description" CONTENT="首页关键内容中国最好、最强、产品最多的比较购物平台，让您享受省时、省力、省钱、省心的购物环境，真正做到货比多家，购买到最好、最便宜的商品，体验比较购物的无限乐趣。"> <META NAME="keywords" CONTENT="首页关键词比较 购物 网站 价格 商家 商品 产品 品牌 购物网站 比较购物 在线购物 比较价格 商家比较  产品评价 商家评价 ding9.com 计算机 数码电子 办公设备 通讯 汽车 成人用品 家用电器 化妆品 音像">
		<META NAME="Author" CONTENT="顶九网"> 
		<META NAME="Subject" CONTENT="顶九网 ding9网 ding9">
		<META NAME="copyright" CONTENT="ding9.com">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		
		<style type="text/css">
			body {
				background-color: #FFFFFF;
				margin-left: 0px;
				margin-top: 0px;
				margin-right: 0px;
				margin-bottom: 0px;
			}
		</style>
	</head>
	
		
	
	
	
	<body>
		<table border="0" align="center" bgcolor="#FFFFFF" cellpadding="0" cellspacing="0">
			<tr>
				<td colspan="2">
					<tiles:insert attribute="top"/>
				</td>
			</tr>
			<tr>
				<td valign="top">
					<tiles:insert attribute="left"/>
				</td>
				<td valign="top">
					<tiles:insert attribute="content" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<tiles:insert attribute="bottom"/>
				</td>
			</tr>
		</table>
	</body>
</html>
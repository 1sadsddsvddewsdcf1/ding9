<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<html>
    <head>
<title>顶九网: 购物搜索,一个顶九! 顶九购物搜索信息平台  guide.ding9.com</title> <META NAME="description" CONTENT="首页关键内容中国最好、最强、产品最多的比较购物平台，让您享受省时、省力、省钱、省心的购物环境，真正做到货比多家，购买到最好、最便宜的商品，体验比较购物的无限乐趣。"> <META NAME="keywords" CONTENT="首页关键词比较 购物 网站 价格 商家 商品 产品 品牌 购物网站 比较购物 在线购物 比较价格 商家比较  产品评价 商家评价 ding9.com 计算机 数码电子 办公设备 通讯 汽车 成人用品 家用电器 化妆品 音像"><META NAME="Author" CONTENT="顶九网"> <META NAME="Subject" CONTENT="顶九网 ding9网 ding9 顶九 ding9wang  比较 购物 省钱 便宜 商家 指南"><META NAME="Robots" CONTENT="all"><META NAME="copyright" CONTENT="ding9.com">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/css/font.css" rel="stylesheet" type="text/css">
<link href="/css/css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/comment.js"></script>
<script type="text/javascript" src="js/domove.js"></script>
<style type="text/css">

.menu {
    display:block;
    position:absolute;
    left: 870px;
}
.menu a.outer, .menu a.outer:visited {
    color:#666666;
    width:68px;
    height:22px;
    display:block;
    margin-right:1px;
    text-align:center;
    float:right;
    text-decoration:none;
    font-size:12px;
    overflow:hidden;
}
.menu a.outer:hover {
overflow:visible;
}
.menu a.outer:hover table.first {
    display:block;
    border-collapse:collapse;
    background-color: #F9F9F9;
}
.menu a.inner, .menu a.inner:visited {
    display:block;
    width:80px;
    height:22px;
    text-decoration:none;
    color:#666666;
    font-size:12px;
    text-align:left;
    border-bottom-width: 1px;
    border-bottom-style: dashed;
    border-bottom-color: #999999;
    padding-top: 6px;
    padding-left: 8px;
}
.menu a.inner:hover {
    background-color: #E7F4FA;
}

.menu a.outer table.first a.second {
height:22px;
line-height:18px;
overflow:hidden;
font-weight:bold;
}
.menu a.outer table.first a.second:hover {
position:relative;
overflow:visible;
}

</style>

</head>

<body>
<center>

<div class="div12">
<ul>
<li><a href="<c:url value="/switch.do?msg=search"/>" class="H6c">首页</a></li>
<li><a href="<c:url value="/switch.do?msg=sservice"/>" class="H6c">服务介绍</a></li>
<li><a href="<c:url value="/switch.do?msg=squestion"/>" class="H6c">常见问题</a></li>
<li><a href="<c:url value="/media.do"/>" class="H6c">媒体报道</a></li>
<li><a href="<c:url value="/switch.do?msg=spricecenter"/>" class="H6c">代理中心</a></li>
<li><a href="<c:url value="/switch.do?msg=scontact"/>" class="H6c">联系我们</a></li>
<li><a href="<c:url value="/switch.do?msg=spricequery"/>" class="H5c">竞价查询</a></li>
</ul>
</div><!--div12-->
<br>
<div class="con900">

<div class="s001">
<div class="s002"><span class="f02l"> 竞价价格：查询投放第九感文字竞价广告的关键词价格。</span></div>
<div class="s004"><br>

  <span class="H1">查询关键字：
  <label>
  <input type="text" name="textfield3" disabled>
  </label>

  <label>
  <input name="Submit2" type="submit" class="H1" value="查询" onclick="javascript:alert('抱歉，该功能暂时不能使用');">
  </label>
  <!--  <label>
  <input type="radio" name="radiobutton" value="radiobutton">关键词竞价价格  </label>
  <label>
  <input type="radio" name="radiobutton" value="radiobutton">  关键词定费搜索价格</label></span><br>  -->
  <br>

</div>
</div><!--s001--><!--s001-->
<!--s001-->
</div>

</center>
    </body>
</html>

<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<html>
<head>
<title></title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/css/font.css" rel="stylesheet" type="text/css">
<link href="/css/css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="/js/comment.js"></script>
<script type="text/javascript" src="/js/domove.js"></script>
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
<div id="f01_r">
<div class="f102">顶九简介</div>
<div class="m104"><span class="f02l">关于顶九</span><br><br>
<span class="H1">　　顶九网（guide.ding9.com）是全球性比较购物搜索引擎与综合性购物门户网站。公司由国际资深电子商务创业者和专业技术团队于2005年创建，致力于为消费者提供与购物相关的各方面信息，如商品信息、商家信息、用户评论、专家评论、折扣促销、团购信息、商品导购等信息，为消费者提供全方位的导购服务。顶九网让消费者在对商品和商家全面了解和比较的基础上，充分享受专业精准的购物信息所带来的实惠，从而
引导消费者做出明智的购买选择。在持续技术创新的基础上，顶九的搜索引擎会不断收录更多高质量的商品和更多合格的商家，让消费者能找到任何一件
想要购买的商品，提供给消费者更多的选择；使消费者体会到 “购物搜索，一个顶九”的真正含义，以及海量商品信息和强
大购物搜索引擎带来的便利。</span>
</div>
<div class="m104"><span class="f02l">顶九的使命</span><br><br>
<span class="H1">　　帮助广大消费者在购物时实现省钱、省时、省心。<br>
帮助广大商家以最小的成本、最直接有效的方式展现在亿万消费者面前。 </span></div>
<div class="m104"><span class="f02l">顶九的目标</span><br>
<br>
<span class="H1">　　顶九致力于打造中国最大、功能最强的比较购物搜索引擎，让消费者能通过顶九网搜索到任何一件想要购买的商品，并能货比三家，成为消费者购物的起点和必经之路。在持续创新的基础上，顶九将以专业精准的信息和高质量的服务成为消费者最值得信赖和喜欢使用的购物搜索引擎。顶九将给每个用户带来时尚购物的全新体验。<br>
购物搜索，从顶九开始。</span></div>
<div class="m104"><span class="f02l">顶九的服务</span><br><br>
<div class="m105"><span class="H1">比较购物—— <br>
商品比较，价格比较，商家比较，让您通过比较找到最合适商品，最低价格，最有信誉商家。  </span></div>
<div class="m105"><span class="H1">折扣优惠—— <br>
来自上百商家的折扣优惠券，让您在低价的基础上进一步省钱。</span></div>
<div class="m105"><span class="H1">购物返现—— <br>
低价，折扣，更有顶九提供的购物返现金，让您买得越多，赚得越多。</span></div>
</div>
<div class="m104"><span class="f02l">顶九的口号</span><br>
<br>
<span class="H1"><span class="h16c">爱购物 爱搜索 爱顶九</span></span></div>
<br>
</div>
</center>
</body>
</html>
<script language="javascript">
if(document.all('First').style.display!="") document.all('First').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/switch.do?msg=aboutus")%>' class='H1'>关于我们 [顶九简介]</a>";
</script>

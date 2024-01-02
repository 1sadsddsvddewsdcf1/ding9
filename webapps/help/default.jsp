<%@page contentType="text/html;charset=GBK"%>
<%@ page import="com.ding9.util.UrlRewriteManager" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="/css/font.css" rel="stylesheet" type="text/css"/>
<link href="/css/css.css" rel="stylesheet" type="text/css"/>
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
<div id="f01_r">
<center>
<div class="f102">新手上路</div><br/>
<div id="f02">
<div id="f02_l"><img src="/images/m/ding9_Help_22.gif" width="62" height="66"/></div><!--f02_l-->
<div class="H1" id="f02_r">　　HI~我是顶九超级宝贝小九九，欢迎光临顶九网。您可以利用我们功能强大的比较购物搜索引擎对互联网上数千商家的数百万件商品进行搜索，比较各类购物信息，小九九会成为你的购物向导，帮助您购物抉择。通过顶九网，您的网上购物旅程会变得轻松自在！ <br/>
来，让小九九帮您详细了解一下不同一般的网上购物经历吧。<br/>
<br/><br/>
<span class="H1cl">您好，通过顶九网购物有以下三个步骤</span></div><!--f02_r-->
</div><!--f02-->
<div id="f02">
<div class="box">
<div class="bd">
<div id='Tabs0'>
<div class="bd_left">
<span class="H1c"> <img src="/images/m/ding9_Help_20.gif" width="62" height="66"></span><span class="H11">搜索</span><span class="H1c"><br/><br/>
从互联网中数以千计的商家中找到你想购买的商品</span><br/>
<span class="H1"><br>
顶九购物搜索利用自主知识产权的智能搜索技术每天为您从互联网上搜索你所要的商品信息，价格信息。<br/><br/>
</span><span class="H1c">强大的搜索能力</span><span class="H1"><br/><br/>
顶九购物搜索提供给您快速搜索商品的能力。和普通的搜索引擎不同的是，只要你在搜索框里键入你想要的商品，顶九购物搜索将带你直达你要的商品，而不必看到大量和商品关系不大的其他信息。<br/><br/>
</span><span class="H1c">详细的目录导购</span><span class="H1"><br/><br/>
顶九购物搜索将互联网上数以千计的商家的数以百万的商品整理进一个易于使用的目录，只要点击几次，你就可以轻松地找到你想要的商品。<br/><br/>
</span><span class="H1c">细致的属性导购</span><span class="H1"><br/><br/>
顶九购物搜索将提供特色而细致的属性导购，你可以通过价格，品牌等多种属性导购帮助你发现真正契合你需要的商品。
</span></div>
</div>
<br>
<div id='Tabs1'>
<div class="bd_left"><span class="H1c"><img src="/images/m/ding9_Help_32.gif" width="62" height="66"></span><span class="H11"> 比较</span><span class="H1c"><br/><br/>
比较商品价格、规格，提供用户和专家的评论</span><br/><br/>
<span class="H1">顶九购物搜索提供的用户和专家的评论以及一些比较工具将帮助你在购物时做出正确的选择。</span><br/><br/>
<span class="H1c">比较商品</span><br/><br/>
<span class="H1">顶九购物搜索能让你方便、详细地比较相似商品的规格，以手机为例：你能同时比较几款手机的40多个参数。</span><br/><br/>
<span class="H1c">比较价格</span><br/><br/>
<span class="H1">顶九购物搜索每天从互联网上为你搜索大量的商品及价格并及时更新。陈列商品的同时也列出了能提供此商品的所有商家和价格的范围，点击价格比较的按钮可以得到卖同一个产品的所有商家列表，你可以比较他们的报价和服务以找到最合适的卖家。</span><br/><br/>
<span class="H1c">用户和专家的评论</span><br/><br/>
<span class="H1">顶九购物搜索提供用户评论的平台，每位顶九的用户可以将自己对商品的评论和商家的看法与他人分享， 同时顶九购物搜索还将提供互联网中关于某类或某种商品的专家测评，帮你在购物时做出正确的选择。</span></div>
</div>
<br/>
<div id='Tabs2'>
<div class="bd_left">
<span class="H1c"><img src="/images/m/ding9_Help_33.gif" width="62" height="66"> </span><span class="H11">购
买</span><span class="H1c"><br/>
<br/>
从数千种商家中直接购买你想要的商品</span><br/>
<br/>
<span class="H1">顶九购物搜索帮助你从互联网中数以千计的商家中轻松买到你要的商品</span><br/>
<br/>
<span class="H1c">商家评级和评论</span><br/>
<br/>
<span class="H1">顶九购物搜索将对搜入的商家建立评级体系，同时将提供对商家评论的平台让广大的网民共同监督商家的行为，真正在网上建立一个诚信经营，放心购物的环境，使顶九购物搜索成为让人放心的搜索引擎。</span><br/>
<br/>
<span class="H1c">直接购买</span><br/>
<br/>
<span class="H1">只要直接点击购买按钮，你就可以直达某商家的某商品的购买页面进行购物了。 顶九将成为你网上购物之旅的起点，几千个商家、几百万种商品通过顶九一站直达！</span> </div>
</div>
</div>
</center>
</div>
</body>
</html>
<Script Language="Javascript">
if(document.all('Five').style.display!="") document.all('Five').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/switch.do?msg=help")%>' class='H1'>使用帮助[新手上路]</a>";
</Script>

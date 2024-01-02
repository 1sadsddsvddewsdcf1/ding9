<%@page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<html>
<head>
<title>
<logic:present name="Page_Title"><bean:write name="Page_Title" filter="false"/></logic:present>
</title> <META NAME="description" CONTENT="<logic:present name="Page_Desc"><bean:write name="Page_Desc" filter="false"/></logic:present>"> <META NAME="keywords" CONTENT="<logic:present name="Page_Keywords"><bean:write name="Page_Keywords" filter="false"/></logic:present>">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
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
<div class="f102">顶九网商家会员产品</div>
<div class="s001">
<div class="s002"><span class="f02l"> 我们提供适合消费者购物时所需的相关商品和价格信息:</span></div>
<div class="s004"><span class="H1"> 　　顶九(Ding9.com) 是一个比较购物搜索引擎，专注于为消费者提供购物信息搜索服务，让消费者可以在做出购买决定前对商品、商家和价格等相关资源进行搜索比较。<br>
<br>
　　“顶九”为您提供这样的一群的用户：他们经常购物，而且偏爱上网购物；他们喜欢搜索各种新奇的商品，而且还经常与朋友一起分享购物的乐趣；他们希望得到更好的购物体验。<br>
<br>
　　通过“顶九”可以立即接触到大量的准备立即购物的高质量消费者，据我们的市场调查得知，使用顶九进行购物搜索的用户的网上购物消费额是其他网民的消费额的三倍。<br>
<br>
　　“顶九” 为您提供一条高效而又低成本的行销和沟通渠道，影响消费者的购买决策，用最经济实惠的方法获得订单。<br>

</span> </div>
</div>
<div class="s001">
<div class="s002"><span class="f02l"> "顶九"的优势:</span></div>
<div class="s004"><span class="H1">"顶九"把购物者输送到商家网站进行购买，购物者属于广告主，一次广告多次受益。 <br>
<br>"顶九"提供的是准备购物的消费者，您可以立即与大量高质量的网上购物人群建立联系，并获得订单。<br>
<br>一步连接到您的商品下单界面, 订单转换率更高，用户流失率最小 —— 调查表明，电子商务网站每个步骤都会流失用户。<br>
<br>我们提供的不仅是广告，还有服务 ——  “顶九”专业团队拥有10多年的电子商务经验，一对一帮您优化推广效果和改善网站。<br>

</span> </div>
</div>
<div class="s001">
<div class="s002"><span class="f02l"> 用户使用流程</span>
</div>
<div class="s004"><span class="H1"><br>
<img src="/images/m/oyj1.png"><br/><br/>
</span> </div>
</div>
<div class="s001">
<div class="s002"><span class="f02l"> 会员服务内容：</span></div>
<div class="s004"><span class="H1"><br><img src="/images/m/oyj3.jpg"><br/>
<br>A. 对钻石会员赠送频道中部广告一个月（价值5000元），赠送全国发行量高、办报时间场、区域影响大、深受读者喜爱的南方声屏报3.5X5cm的广告位一个，此广告位可供投放4次，每周一次，投放时间自定，但须在半年内投完。如图示：<br>
<br><img src="/images/m/oyj2.jpg"><br/>
<br>B. 对白金会员赠送频道中部广告两周（价值2500元）<br>
<br>C. 钻石会员购买其他广告位打6折，白金会员打7折，白银会员打8折<br>

</span> </div>
</div>
</center>
</body>
</html>
<script language="javascript">
if(document.all('Six').style.display!="") document.all('Six').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/switch.do?msg=product")%>' class='H1'>商家加盟 [会员政策]</a>";
</script>

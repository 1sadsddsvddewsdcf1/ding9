<%@page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<%@ page import="com.ding9.util.ProjectEnvironment"%>
<%@ page import="com.ding9.util.Environment"%>
<head>
<title>用户评论</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/css/font.css" rel="stylesheet" type="text/css"/>
<link href="/css/css.css" rel="stylesheet" type="text/css"/>
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
<div id="m01">
<div id="m01_l"><!--m0103-->
<logic:present name="CommentsOnProductByHomePage" scope="request">
<logic:iterate name="CommentsOnProductByHomePage" id="IdCommentsOnProductByHomePage" offset="0" indexId="seq">
<div id="m0104">
<div id="m0104_l">
<div class="m100_1">
<bean:define id="prma_id" name="IdCommentsOnProductByHomePage" property="prma_id" type="java.lang.Integer" />
<bean:define id="prso_id" name="IdCommentsOnProductByHomePage" property="prso_id_one" type="java.lang.Integer" />
<bean:define id="id" name="IdCommentsOnProductByHomePage" property="comment_id" type="java.lang.Integer" />
<a target="_blank" href="<%=response.encodeURL("/product/product-info.do?prma_id="+prma_id+"&type=merchant")%>">
<logic:empty name="IdCommentsOnProductByHomePage" property="pic_address">
<img src="http://d9sense.ding9.com/DwindlePicCtl.jpg?w=100&h=100&url=<%=Environment.getTempProductPicture()%>" alt="<bean:write name='IdCommentsOnProductByHomePage' property='prma_name' filter='false'/>" border="0">
</logic:empty>
<logic:notEmpty name="IdCommentsOnProductByHomePage" property="small_pic_address">
<img src="http://d9sense.ding9.com/DwindlePicCtl.jpg?w=100&h=100&url=<bean:write name="IdCommentsOnProductByHomePage" property="pic_address" filter="false"/>" alt="<bean:write name='IdCommentsOnProductByHomePage' property='prma_name' filter='false'/>" border="0"/>
</logic:notEmpty>
</a>
</div>
</div>
<!--m0104_l-->
<div id="m0104_r">
<div id="m0105">
<div id="m0105_l"><bean:define id="title" name="IdCommentsOnProductByHomePage" property="title" type="java.lang.String" />
<a target="_blank" href="<%=response.encodeURL("/product/product-info.do?prma_id="+prma_id+"&type=comment")%>" class="H1c"><ding9:substr title="<%=title%>" len="40"/></a>
</div>
<div class="H1" id="m0105_r">发布时间：<bean:write name="IdCommentsOnProductByHomePage" format="yyyy-MM-dd" property="release_time" filter="false" />（<a target="_blank" href="<%=response.encodeURL("/product/product-info.do?prma_id="+prma_id+"&type=comment")%>" class="H2">回复</a>）</div>
</div><!--m0105-->
<div class="m100">
<span class="H1">
<bean:define id="con" name="IdCommentsOnProductByHomePage" property="content" type="java.lang.String" />
优 点：<bean:write name='IdCommentsOnProductByHomePage' property='advantage' filter='false' /><br>
缺 点：<bean:write name='IdCommentsOnProductByHomePage' property='disadvantage' filter='false' /><br>
内 容：<a target="_blank" href="<%=response.encodeURL("/product/product-info.do?prma_id="+prma_id+"&type=comment")%>" class="H1"><ding9:substr title="<%=con%>" len="150"/></a>
</span>
</div><!--m100-->
</div><!--m0104_r-->
</div><!--m0104-->
</logic:iterate>
<div class="H1c" id="m100l">
<%-- <logic:present name="NumberPage"><bean:write name="NumberPage" filter="false"/></logic:present>--%>
<ding9:page count_page="${countpage}" current_page="${currentpage}" url="/pinglun.do?current_page="/>
</div>
</logic:present>
</div><!--m01_l-->
<div id="m01_r">
<%-- ding9:ads adpl_type="68" adpl_id="395"/--%>
<logic:present name="adv_68_395"><bean:write name="adv_68_395" filter="false" /></logic:present>
<div id="m100_h">&nbsp;&nbsp;<img src="/images/dot006.gif" width="13" height="15"/><span class="f02l">评测资讯</span></div>
<div class="div7">
<ul>
<%-- ding9:article memt_id="46" count="5"/--%>
<logic:present name="article46">
<logic:iterate name="article46" id="vo" offset="0" indexId="seq">
<li>
<bean:define id='article_id' name='vo' property='article_id' type='java.lang.Integer' />
<bean:define id='prsoId' name='vo' property='prsoId' type='java.lang.Integer' />
<bean:define id='title' name='vo' property='title' type='java.lang.String' />
<a target="_blank" href="<%=ProjectEnvironment.getChannelDomainName(String.valueOf(prsoId))+response.encodeURL("/news/news-info.do?article_id="+article_id)%>" class="H1">
<ding9:substr title="<%=title%>" len="24" />
</a>
</li>
</logic:iterate>
</logic:present>
</ul>
</div><!--div7-->
<!-- ding9:ads adpl_type="68" adpl_id="396"/-->
<logic:present name="adv_68_396"><bean:write name="adv_68_396" filter="false" /></logic:present>
<div id="m100_h">&nbsp;&nbsp;<img src="/images/dot006.gif" width="13" height="15"/><span class="f02l">导购资讯</span></div>
<div class="div7">
<ul>
<!-- ding9:article memt_id="47" count="5"/-->
<logic:present name="article47">
<logic:iterate name="article47" id="vo" offset="0" indexId="seq">
<li>
<bean:define id='article_id' name='vo' property='article_id' type='java.lang.Integer' />
<bean:define id='prsoId' name='vo' property='prsoId' type='java.lang.Integer' />
<bean:define id='title' name='vo' property='title' type='java.lang.String' />
<a target="_blank" href="<%=ProjectEnvironment.getChannelDomainName(String.valueOf(prsoId))+response.encodeURL("/news/news-info.do?article_id="+article_id)%>" class="H1">
<ding9:substr title="<%=title%>" len="24"/>
</a>
</li>
</logic:iterate>
</logic:present>
</ul>
</div><!--div7-->
</div><!--m01_r-->
</div><!--m01-->
</center>
</body>
</html>

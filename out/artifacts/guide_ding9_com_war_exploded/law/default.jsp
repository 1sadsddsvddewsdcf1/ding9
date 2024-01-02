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
<div class="f102">法律声明</div>
<div class="f103"><span class="H1">
　　顶九网关于商标和著作权声明<br>
<br>
　　顶九网及其注册用户及本网页内的资料提供方拥有顶九网网页内相关资料的商标和著作权，资料包括但不限于文字、软件、声音、图片、录象、图表等。所有这些内容受版权、商标和其它财产所有权法律的保护。任何用户不得擅自使用、复制这些内容、或创造与内容有关的派生产品。未经顶九网的明确书面许可，任何人或单位不得复制或在非顶九网所属的服务器上作镜像。凡未经许可擅自转载均会被视为侵权行为，本公司将依法追究其责任。顶九网欢迎有诚意的合作伙伴共同来开拓中国互联网事业，任何形式的合作都可以通过协商得出合理的解决方案。</span></div>
</div>
</center>
</body>
</html>
<Script Language="Javascript">
if(document.all('Two').style.display!="") document.all('Two').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/switch.do?msg=law")%>' class='H1'>服务条款 [法律声明]</a>";
</Script>

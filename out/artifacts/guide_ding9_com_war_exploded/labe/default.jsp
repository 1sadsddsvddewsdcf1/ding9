<%@page contentType="text/html;charset=GBK"%>
<%@ page import="com.ding9.util.UrlRewriteManager" %>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>

<head>
	

	<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
	<link href="../css/font.css" rel="stylesheet" type="text/css">
	<link href="../css/css.css" rel="stylesheet" type="text/css">
	<script type="text/javascript" src="../js/comment.js"></script>
	<script type="text/javascript" src="../js/domove.js"></script>
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
<div class="f102">活动回顾</div>
<div class="div11">
<ul>
<li><a href="http://event.ding9.com/07/fool/" target="_blank"><img src="/images/m/yrj.jpg" alt="愚人节礼物大比拼 41瓶芝华士在等候" width="160" height="120" border="0"><br>
    <br>
    <span class="H1">愚人节礼物大比拼 41瓶芝华士在等候</span></a></li>
	
	<li><a href="http://event.ding9.com/07/Valentine/" target="_blank"><img src="/images/m/qrj.jpg" alt="2007顶九网情人节有奖专题活动" width="160" height="120" border="0"><br>
	  <br>
    <span class="H1">2007顶九网情人节有奖专题活动</span></a></li>
	
	<li><a href="http://event.ding9.com/07/special_edition/" target="_blank"><img src="/images/m/cj.jpg" alt="春情荡漾 缤纷有礼" width="160" height="120" border="0"><br>
	  <br>
    <span class="H1">春情荡漾 缤纷有礼</span></a></li>
	
	<li><a href="http://event.ding9.com/07/newyear/" target="_blank"><img src="/images/m/smrl.jpg" alt="顶九商家岁末让利狂欢节" width="160" height="120" border="0"><br>
	  <br>
    <span class="H1">顶九商家岁末让利狂欢节</span></a></li>
	

</ul>



</div>
<!--f01_r-->
</div><!--f01-->

	</center>
</body>
</html>
<Script Language="Javascript">
 if(document.all('First').style.display!="") document.all('First').style.display="";  
document.all.TITLE.innerHTML="<a href='<%=UrlRewriteManager.dynamic2static("/labe.do")%>' class='H1'>关于我们 [活动回顾]</a>";
</Script>
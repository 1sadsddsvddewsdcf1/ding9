<%@page contentType="text/html;charset=gbk"%>
<%@ page import="com.ding9.util.UrlRewriteManager" %>
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
<script type="text/javascript" src="../js/comment.js"></script>
<script type="text/javascript" src="../js/domove.js"></script>
<style type="text/css">
menu {
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
<div class="f102">��������</div>
<div class="div14">
<ul><logic:present name="friendResults"><logic:iterate name="friendResults" id="friendItem">
<li><a href="<bean:write name='friendItem' property='webURL'/>" target="_blank"><img width="88" height="31" border="0" src="<bean:write name='image_server'/><bean:write name='friendItem' property='webLogo'/>" alt="<bean:write name='friendItem' property='webName'/>"/></a></li></logic:iterate></logic:present>
</ul>
</div>
</center>
</div>
</body>
</html>
<Script Language="Javascript">
if(document.all('Four').style.display!="") document.all('Four').style.display="";
document.all.TITLE.innerHTML="<a href='<%=UrlRewriteManager.dynamic2static("/switch.do?msg=cooperate")%>' class='H1'>��վ���� [�������]</a>";
</Script>
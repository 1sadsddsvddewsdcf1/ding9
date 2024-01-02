<%@page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<html>
<head>
<title></title>
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
<center>
<div id="f01_r">
<div class="f102">顶九大事记</div>
<div class="div10">
<logic:present name="SYSNEWS">
<ul>
<logic:iterate name="SYSNEWS" id="IDSYSNEWS" offset="0" indexId="seq">
<li>
<span class="time"><bean:write name="IDSYSNEWS" property="syne_time" filter="false"/></span>
<span class="text"><bean:write name="IDSYSNEWS" property="syne_title" filter="false"/></span>
</li>
</logic:iterate>
</ul>
<div class="H1c" id="m100l">
<bean:define id="count_page" name="COUNTPAGE" type="java.lang.Integer"/>
<bean:define id="current_page" name="CURRENTPAGE" type="java.lang.Integer"/>
<bean:define id="synt_id" name="SYNTID" type="java.lang.Integer"/>
<bean:define id="page_size" name="PAGESIZE" type="java.lang.Integer"/>
<ding9:page count_page="<%=count_page%>" current_page="<%=current_page%>" url='<%="/event.do?synt_id="+synt_id+"&page_size="+page_size+"&current_page="%>' />
</div>
</logic:present>
</div>
</div>
</center>
</body>
</html>
<script language="javascript">
if(document.all('First').style.display!="") document.all('First').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/event.do")%>' class='H1'>关于我们 [大事记]</a>";
</script>

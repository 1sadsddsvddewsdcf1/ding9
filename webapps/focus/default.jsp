<%@page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<head>
<title>�۽����� - �������� - ������</title>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="/css/font.css" rel="stylesheet" type="text/css"/>
<link href="/css/css.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="/js/comment.js"></script>
<script type="text/javascript" src="/js/domove.js"></script>
<style type="text/css" rel="stylesheet">
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
<div class="f102">�۽�����</div>
<div class="div9">
<ul>
<c:forEach items="${SYSNEWS}" var="IDSYSNEWS" varStatus="status">
<li>
<span class="text"><a target="_blank" href="<c:url value="/comment.do?syne_id=${IDSYSNEWS.syne_id}"/>" class="H1"><ding9:substr title="${IDSYSNEWS.syne_title}" len="50"/></a></span>
<span class="H1"><bean:write name="IDSYSNEWS" property="syne_time" filter="false"/></span>
</li>
<c:if test="${status.count%5==0}"></ul><ul></c:if>
</c:forEach>
</ul>
<div class="H1c" id="m100l">��Լ�� <span class="H2">${COUNTRECORD}</span> ������ ���ǵ�<span class="H2"> ${ITEMSTARTEND} </span>� </div>
<div class="H1c" id="m100l">
<ding9:page count_page="${COUNTPAGE}" current_page="${CURRENTPAGE}" url="/focus.do?synt_id=${SYNTID}&page_size=${PAGESIZE}&current_page="/>
</div>
</div>
</center>
</body>
</html>
<Script Language="Javascript">
if(document.all('First').style.display!="") document.all('First').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/focus.do")%>' class='H1'>�������� [�۽�����]</a>";
</Script>
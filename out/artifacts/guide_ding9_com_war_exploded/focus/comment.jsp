<%@page contentType="text/html;charset=GBK"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<head>
<title>������: ��������,һ������! ���Ź���������Ϣƽ̨  guide.ding9.com</title> <META NAME="description" CONTENT="��ҳ�ؼ������й���á���ǿ����Ʒ���ıȽϹ���ƽ̨����������ʡʱ��ʡ����ʡǮ��ʡ�ĵĹ��ﻷ���������������ȶ�ң�������á�����˵���Ʒ������ȽϹ����������Ȥ��"> <META NAME="keywords" CONTENT="��ҳ�ؼ��ʱȽ� ���� ��վ �۸� �̼� ��Ʒ ��Ʒ Ʒ�� ������վ �ȽϹ��� ���߹��� �Ƚϼ۸� �̼ұȽ�  ��Ʒ���� �̼����� ding9.com ����� ������� �칫�豸 ͨѶ ���� ������Ʒ ���õ��� ��ױƷ ����"><META NAME="Author" CONTENT="������"> <META NAME="Subject" CONTENT="������ ding9�� ding9 ���� ding9wang  �Ƚ� ���� ʡǮ ���� �̼� ָ��"><META NAME="Robots" CONTENT="all"><META NAME="copyright" CONTENT="ding9.com">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
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
.STYLE1 {color: #666666; text-decoration: none; font-size: 12px;}
</style>
</head>
<body>
<center>
<div id="f01_r">
<div class="f102">�۽�����</div>
<br/><br/><logic:present name="newsVO">
<div align="center"><span class="H1cl"><bean:write name="newsVO" property="syne_title" filter="false"/></span></div>
<br/><br/>
<div class="f103"><span class="H1"><bean:write name="newsVO" property="syne_counnet" filter="false"/></span></div>
</logic:present><!--div9--></div><!--f01_r-->
</center>
</body>
</html>
<script language="javascript">
if(document.all('First').style.display!="") document.all('First').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/focus.do")%>' class='H1'>�������� [�۽�����]</a>";
</script>

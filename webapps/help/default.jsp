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
<div class="f102">������·</div><br/>
<div id="f02">
<div id="f02_l"><img src="/images/m/ding9_Help_22.gif" width="62" height="66"/></div><!--f02_l-->
<div class="H1" id="f02_r">����HI~���Ƕ��ų�������С�žţ���ӭ���ٶ��������������������ǹ���ǿ��ıȽϹ�����������Ի���������ǧ�̼ҵ����������Ʒ�����������Ƚϸ��๺����Ϣ��С�žŻ��Ϊ��Ĺ����򵼣��������������ͨ�����������������Ϲ����ó̻����������ڣ� <br/>
������С�žŰ�����ϸ�˽�һ�²�ͬһ������Ϲ��ﾭ���ɡ�<br/>
<br/><br/>
<span class="H1cl">���ã�ͨ��������������������������</span></div><!--f02_r-->
</div><!--f02-->
<div id="f02">
<div class="box">
<div class="bd">
<div id='Tabs0'>
<div class="bd_left">
<span class="H1c"> <img src="/images/m/ding9_Help_20.gif" width="62" height="66"></span><span class="H11">����</span><span class="H1c"><br/><br/>
�ӻ�����������ǧ�Ƶ��̼����ҵ����빺�����Ʒ</span><br/>
<span class="H1"><br>
���Ź���������������֪ʶ��Ȩ��������������ÿ��Ϊ���ӻ���������������Ҫ����Ʒ��Ϣ���۸���Ϣ��<br/><br/>
</span><span class="H1c">ǿ�����������</span><span class="H1"><br/><br/>
���Ź��������ṩ��������������Ʒ������������ͨ���������治ͬ���ǣ�ֻҪ�������������������Ҫ����Ʒ�����Ź�������������ֱ����Ҫ����Ʒ�������ؿ�����������Ʒ��ϵ�����������Ϣ��<br/><br/>
</span><span class="H1c">��ϸ��Ŀ¼����</span><span class="H1"><br/><br/>
���Ź���������������������ǧ�Ƶ��̼ҵ����԰������Ʒ�����һ������ʹ�õ�Ŀ¼��ֻҪ������Σ���Ϳ������ɵ��ҵ�����Ҫ����Ʒ��<br/><br/>
</span><span class="H1c">ϸ�µ����Ե���</span><span class="H1"><br/><br/>
���Ź����������ṩ��ɫ��ϸ�µ����Ե����������ͨ���۸�Ʒ�Ƶȶ������Ե��������㷢��������������Ҫ����Ʒ��
</span></div>
</div>
<br>
<div id='Tabs1'>
<div class="bd_left"><span class="H1c"><img src="/images/m/ding9_Help_32.gif" width="62" height="66"></span><span class="H11"> �Ƚ�</span><span class="H1c"><br/><br/>
�Ƚ���Ʒ�۸񡢹���ṩ�û���ר�ҵ�����</span><br/><br/>
<span class="H1">���Ź��������ṩ���û���ר�ҵ������Լ�һЩ�ȽϹ��߽��������ڹ���ʱ������ȷ��ѡ��</span><br/><br/>
<span class="H1c">�Ƚ���Ʒ</span><br/><br/>
<span class="H1">���Ź������������㷽�㡢��ϸ�رȽ�������Ʒ�Ĺ�����ֻ�Ϊ��������ͬʱ�Ƚϼ����ֻ���40���������</span><br/><br/>
<span class="H1c">�Ƚϼ۸�</span><br/><br/>
<span class="H1">���Ź�������ÿ��ӻ�������Ϊ��������������Ʒ���۸񲢼�ʱ���¡�������Ʒ��ͬʱҲ�г������ṩ����Ʒ�������̼Һͼ۸�ķ�Χ������۸�Ƚϵİ�ť���Եõ���ͬһ����Ʒ�������̼��б�����ԱȽ����ǵı��ۺͷ������ҵ�����ʵ����ҡ�</span><br/><br/>
<span class="H1c">�û���ר�ҵ�����</span><br/><br/>
<span class="H1">���Ź��������ṩ�û����۵�ƽ̨��ÿλ���ŵ��û����Խ��Լ�����Ʒ�����ۺ��̼ҵĿ��������˷��� ͬʱ���Ź������������ṩ�������й���ĳ���ĳ����Ʒ��ר�Ҳ����������ڹ���ʱ������ȷ��ѡ��</span></div>
</div>
<br/>
<div id='Tabs2'>
<div class="bd_left">
<span class="H1c"><img src="/images/m/ding9_Help_33.gif" width="62" height="66"> </span><span class="H11">��
��</span><span class="H1c"><br/>
<br/>
����ǧ���̼���ֱ�ӹ�������Ҫ����Ʒ</span><br/>
<br/>
<span class="H1">���Ź�������������ӻ�����������ǧ�Ƶ��̼�����������Ҫ����Ʒ</span><br/>
<br/>
<span class="H1c">�̼�����������</span><br/>
<br/>
<span class="H1">���Ź�����������������̼ҽ���������ϵ��ͬʱ���ṩ���̼����۵�ƽ̨�ù�������ͬ�ල�̼ҵ���Ϊ�����������Ͻ���һ�����ž�Ӫ�����Ĺ���Ļ�����ʹ���Ź���������Ϊ���˷��ĵ��������档</span><br/>
<br/>
<span class="H1c">ֱ�ӹ���</span><br/>
<br/>
<span class="H1">ֻҪֱ�ӵ������ť����Ϳ���ֱ��ĳ�̼ҵ�ĳ��Ʒ�Ĺ���ҳ����й����ˡ� ���Ž���Ϊ�����Ϲ���֮�õ���㣬��ǧ���̼ҡ�����������Ʒͨ������һվֱ�</span> </div>
</div>
</div>
</center>
</div>
</body>
</html>
<Script Language="Javascript">
if(document.all('Five').style.display!="") document.all('Five').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/switch.do?msg=help")%>' class='H1'>ʹ�ð���[������·]</a>";
</Script>

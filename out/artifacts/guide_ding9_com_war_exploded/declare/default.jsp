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
<div class="f102">��˽����</div>
<div class="f103"><span class="H1">
����</span><span class="H1c">��˽Ȩ����</span><span class="H1"><br>
<br>
�����ڶ�����(Ding9.com)�����ǽ��߾������Ա���������˽�Լ��Ѵ���ĸ�����Ϣ�İ�ȫ�����Ǹ��ݷ��ɻ�������ǿ���Թ涨����δ�õ��������֮ǰ�����ǲ���������κθ�����Ϣ�ṩ���޹صĵ�������������˾����ˣ������ǣ������Ҫ�������ṩ�ض��ͻ�����������Ʒ��������������Ҫ�����������͵�ַ�ṩ�������ߡ�<br>
<br>
����</span><span class="H1c">����δ�����˵���Ҫ˵��</span><span class="H1"><br>
<br>
����δ�����ˣ�����16��������ʿ�����ʸ���û�мල�������ʹ�ñ���˾�ķ��񣬱���˾Ҫ��δ�����˲�Ҫ�򱾹�˾�ύ�κθ������ϣ�������Ƿ�����δ֪�������¼�˴�����Ϣ�����ǽ���ȡ�ʵ��Ĵ�ʩ����ɾ���������������Ϊ16�����£���ֻ���������ĸ�ĸ��໤��һ��������ĸ�ĸ��໤�˼ල��ʹ�ô������<br>
<br>
����</span><span class="H1c">�����ռ���Щ��Ϣ��</span><span class="H1"><br>
<br>
����ͨ����������������״̬�·������ǵ���վ�����������Ϣ��������Ҫ�����ṩ�����Ϣ֮ǰ�����ǻ������Щ��Ϣ����;��Ϊ�ܹ��������ö���������ɫ���ܺͷ�������Ҫ����һ��ע���ʽ����ע�ᣬ����ע��ֻҪ�����ṩ����ȷ����Ϣ�����继���������ʵ�ַ�ȣ����ע��Ϊ�������߼���Ա���û������ύ���������Ϣ����������Ŀ����Ϊ�˸��õ��˽����������������Ч��Ϊ�����������ռ�����Ϣ������������ϵ��ʽ�����֤���ĺ���ȡ�����Ȩ��ʱ�����������������ǵ��κ����ϡ�<br>
<br>
����</span><span class="H1c">��˽Ȩԭ��</span><span class="H1"><br>
<br>
��������ע��ɹ���Ϊ��Ա�������һ��������ʺš������δ���Ʊ����ʺź�����İ�ȫ������ȫ�����Ρ����⣬ÿ���û���Ҫ�����ʻ��е�������Ϊ���¼���ȫ����ɰ���ָʾ��ʱ�������������Լ��������ϡ�<br>
<br>
������������������������ԭ������漰��˽����Ϣ��<br>
<br>
����</span><span class="H1c">ԭ��1</span><span class="H1"><br>
����ÿ����������Ҫʶ��������ݻ���������ʱ������ȷ��ѯ����������ϣ����������ϡ�һ����ԣ���������վ��ע�ᣬҪ���ṩ�ر���񣬻�����μӻ��ֽ����ȣ���ᱻѯ�ʵ��������ϡ����ܵĻ���������������һЩ������ȷ�����ĸ������ϵ���ȷ����ʱЧ�ԡ�<br>
<br>
����</span><span class="H1c">ԭ��2</span><span class="H1"><br>
���������Ҫ��������������������;�ϣ����������ṩ����ξܾ���������˵�������������ն�������˵�����ܾ��������<br>
<br>
����</span><span class="H1c">ԭ��3</span><span class="H1"><br>
����������Ҳ�������Ҫ�󹫿��������ϣ�����������ȷ�������������������и��������Ҫ�ԣ�<br>
������1�����Ϸ��ɹ�������������ڶ�����վ��ĺϷ�����<br>
������2���������������û�Ȩ����Ʋ���<br>
������3���ڽ���������£�Ϊ�˱������Ź�˾�����û�֮���˻��ڰ�ȫ��<br>
<br>
����</span><span class="H1c">ԭ��4</span><span class="H1"><br>
�����κ�ʱ���������Ϊ���Ź�˾û��������Щԭ��ʱ����ϵ���ǣ����ǻᾡһ��Ŭ�����ں���Χ�ڴ���͸���������⡣<br>
<br>
����</span><span class="H1c">Cookies����;</span><span class="H1"><br>
<br>
������������ĳЩҳ���ʹ��"Cookies"��ʹ���ڷ������ǵ���վʱ�õ�������ķ��񣬰���ʵ����������ĸ��Ի���"Cookies"������ҳ���������������Ӳ���е��ı��ļ���"Cookies"�����������г���򽫲������͵����ļ�����С�ָ��������"Cookies"��Ψһ�ģ���ֻ���ɽ�"Cookies"�������������е� Web ��������ȡ��<br>
����"Cookies"����Ҫ��;֮һ���ṩһ�ֽ�Լʱ���ʵ�ù��ܡ������Խ��ܻ�ܾ�"Cookies"�������Web��������Զ�����"Cookies"������ͨ���ɸ����Լ�����Ҫ���޸�������������Ծܾ� Cookie��<br>
<br>
����</span><span class="H1c">������վ������</span><span class="H1"><br>
<br>
���������������������ṩ����վ���������ڶ��Ź�˾����������޷�������п��ơ����������ӣ��綥���Ѻ����ӣ�Ҳ���ڶ��ſ���֮�����վ����Щ��վ���ܻὫ�Լ���Cookies�����û����ռ����ݻ����������Ϣ�����ſ���ѡ����"��ַ�ض���"����ʽ��ʾ������������������ʹ������ַ�ض�������������������е���ַʱ���й���ε�ѡ����Ϣ���Ȼᷢ�͵����ţ�Ȼ�󶥾ŲŻ����������ѡ�����վ������ͳ����Щ��ַ��ѡ�����ϣ���Ϊ�����Ľ������ݡ�<br>
<br>
����</span><span class="H1c">��θ������Ѿ��ṩ�����Ź�˾�ĸ�����Ϣ</span><span class="H1"><br>
<br>
����������ĵ�ַ���绰��e-mail��ַ����Ϣ�����仯�������԰��������й�������ϵ��ʽ֪ͨ���Ź�˾���԰������Ǳ����������ϵ�׼ȷ�ԡ���Ҳ����ͨ����½guide.ding9.com(�������û�ע��ҳ��ĸ��»�Ա������)�ķ�ʽ���и������ĸ�����Ϣ��<br>
<br>
����</span><span class="H1c">������˽Ȩ���ߵ���ͬ���޶�</span><span class="H1"><br>
<br>
��������˽Ȩ������Ϊ�����û�����Э���һ���֣�������ʹ�ö�����������������ǵ���վʱ������ʾ��ͬ�������ռ���ʹ���������ϣ��籾����������������ʾ����ͬ���ǵ��û�����Э�顣�����������޸Ĵ���˽Ȩ���ߵ�Ȩ�����������޸ģ����ǻὫ�޸����ݷ����ڴ�ҳ�ϣ�������ʱ�˽������ռ���Щ���ϣ����ʹ�ã��Լ���ʲô״���²Żṫ����<br>
<br>
����</span><span class="H1c">���Ź�˾��ӭ����������ƶȸ������۲�������ɡ����ǽ������ڱ������ĸ�����Ϣ����ȫ����֤��Щ��Ϣ�İ�ȫ����Ա��������κ����ۺ����ɣ�����ϵ���ǡ� </span></div>
</div>
</center>
</body>
</html>
<Script Language="Javascript">
if(document.all('Two').style.display!="") document.all('Two').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/switch.do?msg=declare")%>' class='H1'>�������� [��˽����]</a>";
</Script>

<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
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
<div class="f102">�������û�����Э��</div>
<div class="f103"><span class="H1">
������ӭ�Ķ�������Ϣ�Ƽ����޹�˾�����¼��"������"���ͻ�����Э��(�³�"��Э��")����Э�����֮�����������������ʹ��guide.ding9.com��վ���ṩ��ȫ��ȽϹ�����Ϣ����͸�����ɫ���ߺ͹��ܡ�(�³�"����")���û������ע�����ʱ��Ӧ��ͬ�ⱾЭ���ȫ������û��ڽ���ע���������е��"ͬ��"��ť����ʾ�û���ȫ���ܱ�Э�����µ�ȫ�����<br>
<br>
����1. ����˵��<br>
<br>
������������Ȩ���о������ṩ����ľ������ݣ�����Ʒ�������������ȣ���������ʱ������жϻ���ֹ���ֻ�ȫ�������Ȩ����<br>
�������������ṩ����ʱ����Ȩ���о����Ƿ���û���ȡ���ã��ڴ�����£��������������ҳ��������ȷ����ʾ�����û��ܾ�֧���õȷ��ã�����ʹ����صķ���<br>
�������������ṩ���ڻ���������ط����û����������ý��ܷ�����������豸������ԡ����ƽ��������������뻥�����йص�װ�ã����е�����ķ��ã���Ϊ���뻥������֧���ĵ绰�Ѽ������ѣ���<br>
<br>
����2. ʹ�ù���<br>
<br>
������������Ȩ���û�ʹ�÷���ǰ��Ҫ���û�����ע��Ϊ�������û����û����򶥾����ṩ׼ȷ����ҵע�����ϣ���ע���������κα䶯���û��뼰ʱ���¡�<br>
�����û�ע��ɹ����û����õ�һ���û��ʺż���Ӧ�����룬���û��ʺź��������û����𱣹ܣ��û�Ӧ���������û��ʺŽ��е����л���¼����������Ρ�<br>
�����û�����ͬ����ܶ�����ͨ�������ʼ���������ʽ���û����͵���Ʒ���������������ҵ��Ϣ��
�����û���ʹ�ö�������������У�������ѭ����ԭ��<br>
���������й��йصķ��ɺͷ��棻<br>
�������ض������йع�����Э�飻<br>
�����������ö������ķ�������κο��ܶԻ�������������ת��ɲ���Ӱ�����Ϊ��<br>
�����������ö������ķ������κ�ɧ���Եġ��������˵ġ������Եġ������Եġ�ӹ������Ļ������κηǷ�����Ϣ���ϣ�
�����������ö����������κβ����ڶ���������Ϊ��<br>
�����緢���κηǷ�ʹ���û��ʺŻ��ʺų��ְ�ȫ©�������뱻���������Ӧ����֪ͨ����������δ��ʱ֪ͨ����ɵ���ʧ���û����ге���<br>
�������û���ʹ�÷���ʱΥ���κ������涨����������ȨҪ���û�������ֱ����ͣ����ֹ�û�ʹ�÷����Լ����û�������Ϊ��ɵ�Ӱ�졣<br>
<br>
����3. ��������<br>
<br>
���������˴��鿴���ŵ�<a href="<c:url value="/switch.do?msg=law"/>" class="H2">��������</a><br>
<br>
����4. ��˽Ȩ����<br>
<br>
���������˴��鿴���ŵ�<a href="<c:url value="/switch.do?msg=declare"/>" class="H2">��˽Ȩ����</a><br>
<br>
����5. ��������<br>
<br>
�����û���ȷͬ��е�ʹ�ö��������������ڵķ��գ�����ʹ�ö����������������һ�к�����û����ге������������û����е��κ����Ρ�<br>
��������������������һ���������û���Ҫ��Ҳ���������񲻻��жϣ��������Է���ļ�ʱ�ԡ���ȫ�ԡ�׼ȷ�Բ���������
��������������֤Ϊ���û��ṩ���������õ��ⲿ���ӵ�׼ȷ�Ժ������ԣ�ͬʱ�����ڸõ��ⲿ����ָ��Ĳ��ɶ�����ʵ�ʿ��Ƶ��κ���ҳ�ϵ����ݣ����������е��κ����Ρ�<br>
���������򲻿ɿ����򶥾������ܿ��Ƶ�ԭ����ɵķ����жϻ�����ȱ�ݣ����������е��κ����Σ���������������˶����û���ɵ���ʧ��Ӱ�졣<br>
<br>
����6. ���������жϻ���ֹ<br>
<br>
��������ϵͳά������������Ҫ������ͣ���񣬶����������������Ƚ���ͨ�档<br>
�����緢��������һ�����Σ���������Ȩ��ʱ�жϻ���ֹ���û��ṩ��Э�����µķ��������֪ͨ�û���<br>
�����û��ṩ��ע�����ϲ���ʵ��<br>
�����û�ʹ�÷������Ϊ�𺦻�����𺦶��������棻<br>
�����û�Υ����Э���й涨��ʹ�ù���<br>
������ǰ�����������⣬������ͬʱ�����ڲ�����֪ͨ�û����������ʱ�жϻ���ֹ���ֻ�ȫ�������Ȩ�����������з�����жϻ���ֹ����ɵ��κ���ʧ��������������û����κε������е��κ����Ρ�<br>
<br>
����7. ΥԼ�⳥<br>
<br>
�����û���ʹ�÷���Ĺ����б�����Ϸ��ɷ��漰��Э���Լ������ͬ�Ᵽ�Ϻ�ά���������������û������棬�����û�Υ���йط��ɡ������Э�����µ��κ�����������������κ����������������ʧ���û�ͬ��е��ɴ���ɵ����⳥���Ρ�<br>
<br>
����8. Э���޸�<br>
<br>
������������Ȩ��ʱ�޸ı�Э����й����һ����Э������ݷ����䶯������������ͨ���ʵ���ʽ���û���ʾ�޸����ݡ�
���������ͬ�ⶥ�����Ա�Э����������������޸ģ��û���Ȩֹͣʹ�÷�������û�����ʹ�÷�������Ϊ�û����ܶ������Ա�Э����������������޸ġ�<br>
<br>
����9. ���ɹ�Ͻ<br>
<br>
������Э��Ķ�����ִ�кͽ��ͼ�����Ľ����Ӧ�����й����ɡ�<br>
������˫���ͱ�Э�����ݻ���ִ�з����κ����飬˫��Ӧ�����Ѻ�Э�̽����Э�̲���ʱ���κ�һ�������򶥾������ڵص�����Ժ�������ϡ�<br>
<br>
����10. ֪ͨ���ʹ�<br>
<br>
������Э���������е�֪ͨ����ͨ����Ҫҳ�湫�桢�����ʼ��򳣹���ż����͵ȷ�ʽ���У��õ�֪ͨ�ڷ���֮����Ϊ���ʹ��ռ��ˡ�<br>
<br>
����11. �����涨<br>
<br>
������Э�鹹��˫���Ա�Э��֮Լ����������й����˵�����Э�飬����Э��涨��֮�⣬δ���豾Э���������Ȩ����
�����籾Э���е��κ��������������ԭ����ȫ�򲿷���Ч�򲻾���ִ��������Э�������������Ӧ��Ч������Լ������<br>
������Э����޶������������Ȩȫ�����ڶ������� </span></div>
</div>
</center>
</body>
</html>
<Script Language="Javascript">
if(document.all('Two').style.display!="") document.all('Two').style.display="";
document.all.TITLE.innerHTML="<a href='<%=response.encodeURL("/switch.do?msg=service")%>' class='H1'>��������</a>";
</Script>
<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>
<html>
<head>
<title>������: ��������,һ������! ���Ź���������Ϣƽ̨  guide.ding9.com</title> <META NAME="description" CONTENT="��ҳ�ؼ������й���á���ǿ����Ʒ���ıȽϹ���ƽ̨����������ʡʱ��ʡ����ʡǮ��ʡ�ĵĹ��ﻷ���������������ȶ�ң�������á�����˵���Ʒ������ȽϹ����������Ȥ��"> <META NAME="keywords" CONTENT="��ҳ�ؼ��ʱȽ� ���� ��վ �۸� �̼� ��Ʒ ��Ʒ Ʒ�� ������վ �ȽϹ��� ���߹��� �Ƚϼ۸� �̼ұȽ�  ��Ʒ���� �̼����� ding9.com ����� ������� �칫�豸 ͨѶ ���� ������Ʒ ���õ��� ��ױƷ ����"><META NAME="Author" CONTENT="������"> <META NAME="Subject" CONTENT="������ ding9�� ding9 ���� ding9wang  �Ƚ� ���� ʡǮ ���� �̼� ָ��"><META NAME="Robots" CONTENT="all"><META NAME="copyright" CONTENT="ding9.com">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312"/>
<link href="/css/font.css" rel="stylesheet" type="text/css"/>
<link href="/css/css.css" rel="stylesheet" type="text/css"/>
<script type="text/javascript" src="js/comment.js"></script>
<script type="text/javascript" src="js/domove.js"></script>
</head>
<body>
<center>
<div class="div12">
<ul>
<li><a href="<%=response.encodeURL("/switch.do?msg=search")%>" class="H5c">��ҳ</a></li>
<li><a href="<%=response.encodeURL("/switch.do?msg=sservice")%>" class="H6c">�������</a></li>
<li><a href="<%=response.encodeURL("/switch.do?msg=squestion")%>" class="H6c">��������</a></li>
<li><a href="<%=response.encodeURL("/media.do")%>" class="H6c" target="_blank">ý�屨��</a></li>
<li><a href="<%=response.encodeURL("/switch.do?msg=spricecenter")%>" class="H6c">��������</a></li>
<li><a href="<%=response.encodeURL("/switch.do?msg=scontact")%>" class="H6c">��ϵ����</a></li>
<li><a href="<%=response.encodeURL("/switch.do?msg=spricequery")%>" class="H6c">���۲�ѯ</a></li>
</ul>
</div><!--div12-->
<div id="s01">
<div id="s01_l">
<div class="s001">
<div class="s002"><span class="f02l">רҵ�����������澺���ƹ�ġ��塱������</span></div>
<div class="div13">
<ul>
<li><span class="left">ȫ��Ӫ��ģʽ</span> <span class="text">���ڴ�ֱ�����Ļ���Ӫ��ģʽ�����Ͷ��λ�ü�������ЧӦ </span></li>
<li><span class="left">���Ƿ�Χ��</span> <span class="text">���ż��䳬��100�����������վ����ʹ��������3000��/��</span></li>
<li><span class="left">�����ǿ</span> <span class="text">רҵ�����������棬Ԥ�ȹ�������Ŀ�ĵķ����ߣ�ֻ���̼����͹�����Ⱥ</span></li>
<li><span class="left">�Լ۱ȸ�</span> <span class="text">��ʮ����������������Ķ���ת���ʣ�ʹ�̼ҵ�Ͷ���ø���ر�</span></li>
<li><span class="left">������ǿ</span> <span class="text">�����������Ƽ۸�����Ԥ���Ͷ��λ�ã��еķ�ʸ</span></li>
</ul>
</div><!--div13-->
</div><!--s001-->
<div class="s001">
<div class="s002"><span class="f02l">ý�屨��</span></div>
<div class="div4">
<ul>
<logic:present name="SYSNEWS">
<logic:iterate name="SYSNEWS" id="IDSYSNEWS" offset="0" indexId="seq">
<li>
<bean:define id='syne_id' name='IDSYSNEWS' property='syne_id' type='java.lang.Integer'/>
<a target="_blank" href="<%=response.encodeURL("/comment.do?syne_id="+syne_id)%>" class="H1">
<bean:write  name="IDSYSNEWS" property="syne_title"/>
</a>
</li>
</logic:iterate>
</logic:present>
</ul>
</div><!--div4-->
</div><!--s001-->
<div class="s001">
<div class="s002"><span class="f02l">��ϵ����</span></div>
<div class="s005"><span class="H1">�ͷ���ѯʱ�䣺</span><span class="H2">��һ������ 9:00-18:00 </span><br>
<span class="H1">�绰��020-37583435 ext 8036     ����: 020-37583436<br>
E-mail��searchcs@ding9.com      msn��searchcs@ding9.com</span>
</div>
</div><!--s001-->
<div class="s001">
<div class="s002"><span class="f02l">��������</span></div>
<div class="s005"><span class="H1">&nbsp;&nbsp;&nbsp;&nbsp;���������վ��һ���������������ôֻ��Ѵ���Ƕ��ҳ�棬���������ɵĻ�����롣������㣬���ɻ��棡</span><!-- <a href="#" class="H2">����&gt;&gt;</a>��--></div>
</div><!--s001-->
</div><!--s01_l-->
<div id="s01_r">
<div class="s001">
<div class="s003"><span class="f02l">���ž��۷���</span></div>
<div class="s004"><span class="H1c">��Ʒ������������</span>    <br/>
<br/>
<span class="H1">&nbsp;&nbsp;&nbsp;&nbsp;��Ʒ���������Ƕ���������̼���
����һ��</span><span class="H2">��Ч������</span><span class="H1">�������ƹ㷽ʽ��
������Ʒ���۷�����̼ҿ���ʹ�Լ�����Ʒ�����ڶ��������������վ�û���
�������ǰ�棬���ߵ�ͬһ����Ʒ�ж���̼�����ʱ�����̼һ���ʾ��ǰ�档
�̼Ұ����۸ߵ���������Խ��ǰ�����̼ҵ���Ʒ�͸��û���������͵���Ļ��ᡣ</span><br/>
<br/>
<span class="H1c">D9Sense���ھŸУ����ֹ��
������������</span><br/>
<br/>
<span class="H1">&nbsp;&nbsp;&nbsp;&nbsp;    D9Sense���ֹ�澺�������Ƕ���
�ڹ����״�����Թ�����Ⱥ���а�Ч��
���ѵĹؼ����ƹ㷽ʽ���ڶ���Ԥѡ��
�˵��ǹ�����Ⱥ�Ļ����ϣ���������Ͷ
��Ϳ��Ը���ҵ��������Ǳ��Ŀ��ͻ���
�����������ҵ���۶</span> <br>
<br>
<a href="../login.html" class="H2" target="_blank">����ע�ᣬ�����ƹ���Ϣ��</a></div>
</div><!--s001-->
<div class="s001">
<div class="s003"><span class="f02l">��������</span></div>
<div class="div4">
<ul>
<li><a href="<%=response.encodeURL("/switch.do?msg=squestion")%>#tuiguang" class="H1">ΪʲôҪʹ�ö��Ź������������ƹ㣿</a></li>
<li><a href="<%=response.encodeURL("/switch.do?msg=squestion")%>#qubie" class="H1">��������������ٶȣ�Google��ʲô����</a></li>
<li><a href="<%=response.encodeURL("/switch.do?msg=squestion")%>#paiming" class="H1">ʲô����Ʒ����������</a></li>
<li><a href="<%=response.encodeURL("/switch.do?msg=squestion")%>#jiugan" class="H1">ʲô�ǵھŸУ�D9Sense�����ֹ�澺��������</a></li>
</ul>
</div><!--div4-->
</div><!--s001-->
</div><!--s01_r-->
</div><!--s01-->
</center>
</body>
</html>

<%@page contentType="text/html;charset=GBK" import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<html>
<head>
<title>����������: ��������,һ������! ���Ź���������Ϣƽ̨ guide.ding9.com</title>
<META NAME="description"
	CONTENT="��ҳ�ؼ������й���á���ǿ����Ʒ���ıȽϹ���ƽ̨����������ʡʱ��ʡ����ʡǮ��ʡ�ĵĹ��ﻷ���������������ȶ�ң�������á�����˵���Ʒ������ȽϹ����������Ȥ��">
<META NAME="keywords"
	CONTENT="��ҳ�ؼ��ʱȽ� ���� ��վ �۸� �̼� ��Ʒ ��Ʒ Ʒ�� ������վ �ȽϹ��� ���߹��� �Ƚϼ۸� �̼ұȽ�  ��Ʒ���� �̼����� ding9.com ����� ������� �칫�豸 ͨѶ ���� ������Ʒ ���õ��� ��ױƷ ����">
<META NAME="Author" CONTENT="������">
<META NAME="Subject"
	CONTENT="������ ding9�� ding9 ���� ding9wang  �Ƚ� ���� ʡǮ ���� �̼� ָ��">
<META NAME="Robots" CONTENT="all">
<META NAME="copyright" CONTENT="ding9.com">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<meta http-equiv="refresh" content="1;URL=<bean:write name="url"/>">
<style type="text/css">
<!--
.STYLE1 {
	font-size: 14px;
	color: #666666;
}

.STYLE2 {
	color: #990000
}

.STYLE6 {
	color: #009933
}

.STYLE7 {
	font-size: 14px;
	color: #000033;
}
-->
</style>
</head>
<body>
<table width="550" border="0" align="center" cellpadding="0"
cellspacing="1" bgcolor="#FF9933">
<tr>
<td align="center" bgcolor="#FFFFFF">
<br>
<br>
<table width="420" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td width="411" align="center">
			<img src="http://guide.ding9.com/images/click/logo.gif"
				width="220" height="100">
			<br>
			<br>
			<br>
		</td>
	</tr>
	<TR>
	<td>
		<p class="STYLE1">
			�����뿪
			<span class="STYLE2">������</span>��
			<span class="STYLE6"><bean:write name="merchantinfo"
					property="merc_com_name" /> </span>��վ���й��
			<br>
			<br>
			<span class="STYLE2">������</span>ͨ���������������ṩ���������Ϣ�����������κ���Ʒ��
			<br>
			<br>
			<span class="STYLE2">������</span>��������
			<span class="STYLE6"><bean:write name="merchantinfo"
					property="merc_com_name" />
			</span>��վ�Ĺ��ｻ�׹��̺ͽ������
		</p>
	</td>
	</tr>
</table>
<br>

<table width="500" border="0" align="center" cellpadding="0"
	cellspacing="0">
	<tr>
		<td align="center">
			<span class="STYLE6"><br> <img
					src="http://guide.ding9.com/images/click/loading.gif"
					width="280" height="13">
				<br> <br> </span>
		</td>
	</tr>
	<tr>
		<td align="center">
			<span class="STYLE7"> 
			<logic:equal value="1"	name="linktype">
				����������Ϊ���� <bean:write name="merchantinfo" property="merc_com_name" />��վ�������ĵȴ�������
			</logic:equal> 
			<logic:equal value="2" name="linktype">
				����Ʒҳ�޷��򿪣����ǽ���ת������վ��ҳ��һ�����ң������ĵȴ�������
			</logic:equal>
			<logic:equal value="3" name="linktype">����վ�޷��򿪣����鷵�ض�������������</logic:equal>
			</span>
		</td>
	</tr>
</table>

<br>
<br>
</td>
</tr>
</table>
</body>
</html>

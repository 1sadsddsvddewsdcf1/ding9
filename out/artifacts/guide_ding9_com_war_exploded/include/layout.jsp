<%@page contentType="text/html;charset=GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<html>
	<head>
        <title>������: ��������,һ������! ���Ź���������Ϣƽ̨  guide.ding9.com</title> 
		<META NAME="description" CONTENT="��ҳ�ؼ������й���á���ǿ����Ʒ���ıȽϹ���ƽ̨����������ʡʱ��ʡ����ʡǮ��ʡ�ĵĹ��ﻷ���������������ȶ�ң�������á�����˵���Ʒ������ȽϹ����������Ȥ��"> <META NAME="keywords" CONTENT="��ҳ�ؼ��ʱȽ� ���� ��վ �۸� �̼� ��Ʒ ��Ʒ Ʒ�� ������վ �ȽϹ��� ���߹��� �Ƚϼ۸� �̼ұȽ�  ��Ʒ���� �̼����� ding9.com ����� ������� �칫�豸 ͨѶ ���� ������Ʒ ���õ��� ��ױƷ ����">
		<META NAME="Author" CONTENT="������"> 
		<META NAME="Subject" CONTENT="������ ding9�� ding9">
		<META NAME="copyright" CONTENT="ding9.com">
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		
		<style type="text/css">
			body {
				background-color: #FFFFFF;
				margin-left: 0px;
				margin-top: 0px;
				margin-right: 0px;
				margin-bottom: 0px;
			}
		</style>
	</head>
	
		
	
	
	
	<body>
		<table border="0" align="center" bgcolor="#FFFFFF" cellpadding="0" cellspacing="0">
			<tr>
				<td colspan="2">
					<tiles:insert attribute="top"/>
				</td>
			</tr>
			<tr>
				<td valign="top">
					<tiles:insert attribute="left"/>
				</td>
				<td valign="top">
					<tiles:insert attribute="content" />
				</td>
			</tr>
			<tr>
				<td colspan="2" align="center">
					<tiles:insert attribute="bottom"/>
				</td>
			</tr>
		</table>
	</body>
</html>
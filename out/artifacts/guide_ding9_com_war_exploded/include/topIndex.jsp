<%@page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ page import="com.ding9.util.Environment"%>
<%@ page import="com.ding9.util.ProjectEnvironment"%>
<%@ page import="com.ding9.util.UrlRewriteManager"%>
<html>
<head>
<title>���Ϲ���|��Ʒ������-���űȽϹ���������-guide.ding9.com</title>
<META NAME="description" CONTENT="<logic:present name="Page_Desc"><bean:write name="Page_Desc" filter="false"/></logic:present>">
<META NAME="keywords" CONTENT="<logic:present name="Page_Keywords"><bean:write name="Page_Keywords" filter="false"/></logic:present>">
<logic:present name="META"><bean:write name="META" filter="false" /></logic:present>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/cssindex/gy.css" rel="stylesheet" type="text/css" />
<link href="/cssindex/indexfont.css" rel="stylesheet" type="text/css" />
<link href="/cssindex/indexstyle.css" rel="stylesheet" type="text/css" />
<link href="/cssindex/css.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/tecomment.js"></script>
<script type="text/javascript" src="../js/public.js"></script>
<script type="text/javascript" src="../js/CityList.js"></script>	
<SCRIPT language=JavaScript type=text/JavaScript>
<!--
function MM_reloadPage(init) {  //reloads the window if Nav4 resized
  if (init==true) with (navigator) {if ((appName=="Netscape")&&(parseInt(appVersion)==4)) {
    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}
  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();
}
MM_reloadPage(true);
function MM_callJS(jsStr) { //v2.0
  return eval(jsStr)
}
function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}
function MM_showHideLayers() { //v6.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
//-->
</SCRIPT>
</head>
<body>
<center>
<script>
var url=document.location+"";
if(url.indexOf('local')>-1){
document.write('<iframe name="ding9topIframe"  src="http://guide.ding9.local/inc/top----,10000007.html" frameborder="0" width="100%"  marginwidth="0" marginheight="0" height="130"  scrolling="no" ></iframe>');
}else{
document.write('<iframe name="ding9topIframe"  src="http://guide.ding9.com/inc/top----,10000007.html" frameborder="0" width="100%"  marginwidth="0" marginheight="0" height="130"  scrolling="no" ></iframe>');
} 
</script>
<style>
<!-- /*2015-07-24��Ϊ������Ƶ�������ͬ*/
.teH1 {
	font-size: 14px;
	font-weight: bold;
	color: #ffffff;
	text-decoration: none;
	text-align:center;
	padding-top: 3px;
}
.teH2 {
	font-size: 14px;
	font-weight: bold;
	color:#333333;
	text-decoration: none;
	text-align:center;
	padding-top: 3px;
}
#menu{	width:900px; height: 33px;background-image: url(../images/menubg_04.jpg);}

#menu_l{width:8px; float:left;}
#menu_r{width:8px; float:right;}

/* width:68px padding-top: 11px;	*/
#menu_m{width:50px;	float:left;	background-repeat: no-repeat;background-image: url(../images/menubg_m.jpg);
	height: 33px;	padding-top: 11px;	text-align:center; }
#menu_1{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_2{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_3{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_4{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_5{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_6{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_7{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_8{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_9{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_10{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_11{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_12{width:50px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_13{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_14{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_15{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_16{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_17{width:40px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}
#menu_18{width:50px; float:left; height: 33px;padding-top: 11px;background-image: url(../images/menubg_04.jpg);}


 -->	
</style>

<%-- 2014-08-27 ���Ը�Ϊ������
<div id="menu">
<div id="menu_l"><img src="/images/menubg_03.jpg" width="8" height="33"></div>
<div id="menu_1"><a href="http://guide.ding9.com" class="teH1" >��   ҳ</a></div>
<div id="menu_2"><a href="<%=Environment.getChannelMobile()%>"  class="teH1">�ֻ�ͨ��</a></div>
<div id="menu_3"><a href="<%=Environment.getChannelDigital()%>"  class="teH1">�������</a></div>
<div id="menu_4"><a href="<%=Environment.getChannelComputer()%>" class="teH1">��������</a></div>
<div id="menu_5"><a href="<%=Environment.getChannelOffice()%>" class="teH1">�칫��Ʒ</a></div>
<div id="menu_6"><a href="<%=Environment.getChannelHea()%>" class="teH1">���õ���</a></div>
<div id="menu_7"><a href="<%=Environment.getChannelBeauty()%>" class="teH1">��������</a></div>
<div id="menu_8"><a href="http://hotel.ding9.com" class="teH1">�Ƶ�����</a></div>
<div id="menu_9"><a href="http://clothing.ding9.com" class="teH1">��װ����</a></div>
<div id="menu_9"><a href="http://jingpin.ding9.com" class="teH1">��Ʒ��Ʒ</a></div>
< % - -<div id="menu_10"><a href="<%=Environment.getChannelPromotion()%>" class="teH1">�����ۿ�</a></div>- - % >
<div id="menu_12"><a href="http://search.ding9.com" class="H2"><img src="/teimages/gj.gif" width="50" height="18" border="0"></a></div>
<div id="menu_11"><a href="http://gz.shoplocal.ding9.com" class="teH1">�Ұ����</a></div>
<div id="menu_13" onMouseOver="MM_showHideLayers('Layer2','','show')" onMouseOut="MM_showHideLayers('Layer2','','hide')" vAlign=center align=middle width=72><a class="teH1">���� </a><img src="/images/arrow_022.gif" width="8" height="8" border="0"></div>
--%>
<%-- <!-- <div id="menu_1"><img src="/images/menubg_03.jpg" width="8" height="33"></div> -->
<div id="menu">
<div id="menu_1"><a href="<%=Environment.getMainServer()%>" class="teH1" >��ҳ</a></div>
<div id="menu_2"><a href="<%=Environment.getChannelMobile()%>"  class="teH1">�ֻ�</a></div>
<div id="menu_3"><a href="<%=Environment.getChannelDigital()%>"  class="teH1">����</a></div>
<div id="menu_4"><a href="<%=Environment.getChannelComputer()%>" class="teH1">����</a></div>
<div id="menu_5"><a href="<%=Environment.getChannelOffice()%>" class="teH1">�칫</a></div>
<div id="menu_6"><a href="<%=Environment.getChannelHea()%>" class="teH1">�ҵ�</a></div>
<div id="menu_7"><a href="<%=Environment.getChannelBeauty()%>" class="teH1">����</a></div>
<div id="menu_8"><a href="http://hotel.ding9.com" class="teH1">�Ƶ�</a></div>
<div id="menu_9"><a href="http://clothing.ding9.com" class="teH1">����</a></div>
<div id="menu_10"><a href="http://jingpin.ding9.com" class="teH1">��Ʒ</a></div>
<div id="menu_11"><a href="<%=Environment.getChannelPromotion()%>" class="teH1">����</a></div>
<div id="menu_12"><a href="<%=Environment.getChannelCoupon()%>" class="teH1">�Ż�ȯ</a></div>
<div id="menu_13"><a href="http://baby.ding9.com" class="teH1">ĸӤ</a></div>
<div id="menu_14"><a href="http://books.ding9.com" class="teH1">ͼ��</a></div>
<div id="menu_15"><a href="<%=Environment.getChannelMerchant()%>" class="teH1">�̼�</a></div>
<div id="menu_16"><a href="<%=Environment.getChannelSearch()%>" ><img src="/teimages/gj.gif" width="40" height="18" border="0"></a></div>
<div id="menu_17"><a href="<%=Environment.getChannelShop()%>" class="teH1">���</a></div> --%>
<div id="menu">
	<table width="100%" height="100%" style="padding-top: 11px;margin-top:4px;"><tr align="center">
<td><a href="http://guide.ding9.com" class="teH1" >��ҳ</a></td>
<td><a href="<%=Environment.getChannelMobile()%>"  class="teH1">�ֻ�</a></td>
<td><a href="<%=Environment.getChannelDigital()%>"  class="teH1">����</a></td>
<td><a href="<%=Environment.getChannelComputer()%>" class="teH1">����</a></td>
<td><a href="<%=Environment.getChannelOffice()%>" class="teH1">�칫</a></td>
<td><a href="<%=Environment.getChannelHea()%>" class="teH1">�ҵ�</a></td>
<td><a href="<%=Environment.getChannelBeauty()%>" class="teH1">����</a></td>
<td><a href="http://hotel.ding9.com" class="teH1">�Ƶ�</a></td>
<td><a href="http://clothing.ding9.com" class="teH1">����</a></td>
<td><a href="http://jingpin.ding9.com" class="teH1">��Ʒ</a></td>
<td><a href="<%=Environment.getChannelPromotion()%>" class="teH1">����</a></td>
<td><a href="<%=Environment.getChannelCoupon()%>" class="teH1">�Ż�ȯ</a></td>
<td><a href="http://baby.ding9.com" class="teH1">ĸӤ</a></td>
<td><a href="http://books.ding9.com" class="teH1">ͼ��</a></td>
<td><a href="http://merchant.ding9.com" class="teH1">�̼�</a></td>
<td><a href="http://search.ding9.com" ><img src="/teimages/gj.gif" width="50" height="18" border="0"></a></td>
<td><a href="http://gz.shoplocal.ding9.com" class="teH1">���</a></td>
</tr></table>
<%-- 
<div id="menu">
<div style="float:left;"><a href="http://guide.ding9.com" class="teH1" >��ҳ</a></div>
<div style="float:left;"><a href="<%=Environment.getChannelMobile()%>"  class="teH1">�ֻ�</a></div>
<div style="float:left;"><a href="<%=Environment.getChannelDigital()%>"  class="teH1">����</a></div>
<div style="float:left;"><a href="<%=Environment.getChannelComputer()%>" class="teH1">����</a></div>
<div style="float:left;"><a href="<%=Environment.getChannelOffice()%>" class="teH1">�칫</a></div>
<div style="float:left;"><a href="<%=Environment.getChannelHea()%>" class="teH1">�ҵ�</a></div>
<div style="float:left;"><a href="<%=Environment.getChannelBeauty()%>" class="teH1">����</a></div>
<div style="float:left;"><a href="http://hotel.ding9.com" class="teH1">�Ƶ�</a></div>
<div style="float:left;"><a href="http://clothing.ding9.com" class="teH1">����</a></div>
<div style="float:left;"><a href="http://jingpin.ding9.com" class="teH1">��Ʒ</a></div>
<div style="float:left;"><a href="<%=Environment.getChannelPromotion()%>" class="teH1">����</a></div>
<div style="float:left;"><a href="<%=Environment.getChannelCoupon()%>" class="teH1">�Ż�ȯ</a></div>
<div style="float:left;"><a href="http://baby.ding9.com" class="teH1">ĸӤ</a></div>
<div style="float:left;"><a href="http://books.ding9.com" class="teH1">ͼ��</a></div>
<div style="float:left;"><a href="http://merchant.ding9.com" class="teH1">�̼�</a></div><!--  -->
<div style="float:left;"><a href="http://search.ding9.com" ><img src="/teimages/gj.gif" width="40" height="18" border="0"></a></div>
<div style="float:left;"><a href="http://gz.shoplocal.ding9.com" class="teH1">���</a></div>
<!-- <div id="menu_r"><img src="/images/menubg_08.jpg" width="8" height="33"></div> -->
 --%>
</div><!--menu-->
<%-- 2014-08-27 <DIV id=Layer1 style="Z-INDEX: 1; WIDTH: 72px; POSITION: absolute; HEIGHT: 23px; ">
<DIV id=Layer2 onMouseOver="MM_showHideLayers('Layer2','','show')" style="Z-INDEX: 1; LEFT: 828px; VISIBILITY: hidden; WIDTH: 72px; POSITION: absolute; TOP: -2px; HEIGHT: 61px" onMouseOut="MM_showHideLayers('Layer2','','hide')">
<TABLE width="100%" border=0 cellPadding=0 cellSpacing=1 bgColor=#CCCCCC >
<TBODY>--%>
<%--
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="http://books.ding9.com" class="teH1">&nbsp;ͼ������</A></TD></TR>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="http://clothing.ding9.com" class="teH1">&nbsp;��װ����</A></TD></TR>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="http://jingpin.ding9.com" class="teH1">&nbsp;��Ʒ��Ʒ</A></TD></TR>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="http://gift.ding9.com" class="teH1">&nbsp;��Ʒ�ʻ�</A></TD></TR>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="http://outdoor.ding9.com" class="teH1">&nbsp;��������</A></TD></TR>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="http://baby.ding9.com" class="teH1">&nbsp;ĸӤ��ͯ</A></TD></TR>
--%><!--  bgColor=#F7FBFD -->
<%-- 2014-08-27
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onMouseOut="this.className='service'" bgColor=#74b920><A href="<%=Environment.getChannelCoupon()%>" class="teH1">&nbsp;�Ż�ȯ</A></TD></TR>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onMouseOut="this.className='service'" bgColor=#74b920><A href="<%=Environment.getChannelPromotion()%>" class="teH1">&nbsp;�����ۿ�</A></TD></TR>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onMouseOut="this.className='service'" bgColor=#74b920><A href="http://merchant.ding9.com" class="teH1">&nbsp;�����̼�</A></TD></TR>
< % - -<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="http://carcv.ding9.com" class="teH1" >&nbsp;���ֳ�</A></TD></TR>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="http://youhui.ding9.com" class="teH1">&nbsp;�Ż�����</A></TD></TR>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="http://www.smartclub.com.cn/sp_channel/index.asp?site=ding9" class="teH1">&nbsp;���ֽ���</A></TD></TR> - - % >
</TBODY></TABLE></DIV></DIV> 
--%>
<!--c02-->
<div id="c03">
<!--c03_l-->
<!--c03_r-->
</div>
</center>

<%@page contentType="text/html;charset=gb2312"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ page import="com.ding9.util.Environment"%>
<%@ page import="com.ding9.util.ProjectEnvironment"%>
<%@ page import="com.ding9.util.UrlRewriteManager"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/css/tefont.css" rel="stylesheet" type="text/css">
<link href="/css/te.css" rel="stylesheet" type="text/css">
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
<% String channel_id= request.getParameter("channel_id");
    if(channel_id==null || "".equals(channel_id)) channel_id="10000007";
    //如果不是7个产品频道    ，调用主站的
    if(!"6".equals(channel_id)&& !"1".equals(channel_id) && !"7".equals(channel_id) && !"15".equals(channel_id)
    && !"12".equals(channel_id) && !"8".equals(channel_id) && !"4".equals(channel_id)){
    channel_id="10000007";
    }
%>
<script>
var url=document.location+"";
if(url.indexOf('local')>-1){
document.write('<iframe name="ding9topIframe" src="http://www.ding9.local/inc/top----,'+<%=channel_id%>+'.html" frameborder="0" width="100%" marginwidth="0" marginheight="0" height="130" scrolling="no"></iframe>');
}else{
document.write('<iframe name="ding9topIframe" src="http://guide.ding9.com/inc/top----,'+<%=channel_id%>+'.html" frameborder="0" width="100%" marginwidth="0" marginheight="0" height="130" scrolling="no"></iframe>');
}
</script>
<div id="menu">
<div <%="10000007".equals(channel_id)?"id='menu_m'":"id='menu_1'"%>><a href="http://guide.ding9.com" <%="10000007".equals(channel_id)?"class='teH2'":"class='teH1'"%> >首   页</a></div>
<div <%="6".equals(channel_id)?"id='menu_m'":"id='menu_2'"%>><a href="<%=Environment.getChannelMobile()%>" <%="6".equals(channel_id)?"class='teH2'":"class='teH1'"%>>手机通信</a></div>
<div <%="1".equals(channel_id)?"id='menu_m'":"id='menu_3'"%>><a href="<%=Environment.getChannelDigital()%>" <%="1".equals(channel_id)?"class='teH2'":"class='teH1'"%>>数码电子</a></div>
<div <%="7".equals(channel_id)?"id='menu_m'":"id='menu_4'"%>><a href="<%=Environment.getChannelComputer()%>" <%="7".equals(channel_id)?"class='teH2'":"class='teH1'"%>>电脑网络</a></div>
<div <%="15".equals(channel_id)?"id='menu_m'":"id='menu_5'"%>><a href="<%=Environment.getChannelOffice()%>" <%="15".equals(channel_id)?"class='teH2'":"class='teH1'"%>>办公用品</a></div>
<div <%="12".equals(channel_id)?"id='menu_m'":"id='menu_6'"%>><a href="<%=Environment.getChannelHea()%>" <%="12".equals(channel_id)?"class='teH2'":"class='teH1'"%>>家用电器</a></div>
<div <%="8".equals(channel_id)?"id='menu_m'":"id='menu_7'"%>><a href="<%=Environment.getChannelBeauty()%>" <%="8".equals(channel_id)?"class='teH2'":"class='teH1'"%>>美容美体</a></div>
<div id="menu_8"><A href="http://merchant.ding9.com" class="teH1">&nbsp;顶九商家</A></div>
<div <%="5".equals(channel_id)?"id='menu_m'":"id='menu_9'"%>><a href="http://clothing.ding9.com" class="teH1">服装服饰</a></div>
<div <%="9".equals(channel_id)?"id='menu_m'":"id='menu_10'"%>><a href="http://jingpin.ding9.com" class="teH1">精品饰品</a></div>
<div id="menu_12"><a href="http://search.ding9.com" class="teH1">搜索频道</a></div>
<div id="menu_11"><a href="http://gz.shoplocal.ding9.com" class="teH1">我爱逛街</a></div>
<div id="menu_13"><!-- onMouseOver="MM_showHideLayers('Layer2','','show')" onMouseOut="MM_showHideLayers('Layer2','','hide')" vAlign="center" align="middle" width="72"><a class="teH1">更多 </a><img src="/images/arrow_022.gif" width="8" height="8" border="0"/ --><A href="http://eshop.ding9.com" class="teH1">顶九商城</A></div>
</div><!--menu-->
<DIV id="Layer1" style="Z-INDEX:1;WIDTH:72px;POSITION:absolute;HEIGHT:23px;">
<!--<DIV id=Layer2 onMouseOver="MM_showHideLayers('Layer2','','show')" style="Z-INDEX:1;LEFT:828px;VISIBILITY:hidden;WIDTH:72px;POSITION:absolute;TOP:-2px;HEIGHT:61px" onMouseOut="MM_showHideLayers('Layer2','','hide')">
<TABLE width="100%" cellPadding="0" cellSpacing="1" bgColor="#CCCCCC">
<TBODY>
<TR><TD height="25" class="service" onMouseOver="this.className='service-blank'" onMouseOut="this.className='service'" bgColor="#74b920"><A href="%=Environment.getChannelPromotion()%>" class="teH1">&nbsp;促销折扣</A></TD></TR>
<TR><TD height="25" class="service" onMouseOver="this.className='service-blank'" onMouseOut="this.className='service'" bgColor="#74b920"><A href="http://merchant.ding9.com" class="teH1">&nbsp;顶九商家</A></TD></TR>
<TR><TD height="25" class="service" onMouseOver="this.className='service-blank'" onMouseOut="this.className='service'" bgColor="#74b920"><A href="http://www.5ucom.com" class="teH1">&nbsp;管理资料</A></TD></TR>
</TBODY></TABLE></DIV>--></DIV><!--c02-->
<div id="c03">
<!--c03_l-->
<!--c03_r-->
</div>
</center>

<%@page contentType="text/html;charset=GBK"%>
<%@ page import="com.ding9.util.UrlRewriteManager"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/tld/ding9.tld" prefix="ding9"%>

<html>
	<head>
	<title>
		<logic:present name="Page_Title">
			<bean:write name="Page_Title" filter="false" />
		</logic:present>
	</title>
	<META NAME="description" CONTENT="<logic:present name="Page_Desc"><bean:write name="Page_Desc" filter="false"/></logic:present>">
	<META NAME="keywords" CONTENT="<logic:present name="Page_Keywords"><bean:write name="Page_Keywords" filter="false"/></logic:present>">
	<logic:present name="META">
		<bean:write name="META" filter="false" />
	</logic:present>

		<link href=/css/font.css " rel="stylesheet" type="text/css">
		<link href="/css/css.css" rel="stylesheet" type="text/css">
		<script type="text/javascript" src="/js/comment.js"></script>

		<script type="text/javascript" src="../js/domove.js"></script>
		<style type="text/css">



</style>


		<script language="javascript">
var show_word="输入关键字进行搜索";
function showSearch(obj,type){
	if(type){
		if(obj.value=="")
			obj.value=show_word;
		obj.style.color='gray';
	}else{
		if("www.paipai.com"==location.hostname){
			var objAD=document.getElementById("ADTAG");
			if(obj.id=="KeyWord_foot")
				objAD.value="321.1.2";
			else objAD.value="321.1.1";
		}
		if(obj.value==show_word)
			obj.value="";
		obj.style.color='#000000';
	}
}



function searchform_onsubmit() {
   
	if(document.all.key.item(0).value==''|| document.all.key.item(0).value=="输入关键字进行搜索"){
		alert('请输入查询关键字');
		return false;
	}
	
	
	var sel_prso_id_one = document.all.sel_prso_id_one.item(0).value;
	if (sel_prso_id_one == "") {	//所有类别
		document.searchform.action="http://search.ding9.com/search.do";
	}
	if (sel_prso_id_one == "1") {	//数码电子
		document.searchform.action="http://digital.ding9.com/search.do";
	}
	if (sel_prso_id_one == "4") {	//成人用品
		document.searchform.action="http://love.ding9.com/search.do";
	}
	if (sel_prso_id_one == "6") {	//手机/通讯
		document.searchform.action="http://mobile.ding9.com/search.do";
	}
	if (sel_prso_id_one == "7") {	//电脑/网络
		document.searchform.action="http://computer.ding9.com/search.do";
	}
	if (sel_prso_id_one == "8") {	//美容美体
		document.searchform.action="http://beauty.ding9.com/search.do";
	}
	if (sel_prso_id_one == "12") {	//家用电器
		document.searchform.action="http://hea.ding9.com/search.do";
	}
	if (sel_prso_id_one == "15") {	//办公用品
		document.searchform.action="http://office.ding9.com/search.do";
	}
	return true;
}


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





</script>
		<STYLE>
.findInto {
	BORDER-RIGHT: #808080 1px solid; BORDER-TOP: #808080 1px solid; BORDER-LEFT: #808080 1px solid; WIDTH: 240px; COLOR: gray; BORDER-BOTTOM: #808080 1px solid; HEIGHT: 16px
}
</STYLE>


	</head>
	<body>
		<div id="top">
			<div id="top_1">
				<img src="/images/log03.gif" width="13" height="13">
				<a href="<%=UrlRewriteManager.dynamic2static("/switch.do?msg=help")%>" target="_blank" class="H1">
					帮助
				</a>
			</div>
			<div id="top_2">
				<img src="/images/log02.gif" width="13" height="13">
				<span class="H1">
					<a href="/login.html" class="H1" target="_blank">
						商家登录&nbsp;&nbsp;
					</a>
					<span class="H1">
						<a href="/login.html" class="H1" target="_blank">
							注册
						</a>
					</span>
			</div>
			<!-- <div id="top_3"><img src="/images/log01.gif" width="13" height="13"><span class="H1"> 用户登录&nbsp;&nbsp;注册</a></span></div> -->
		</div>
		<div id="c01">
			<div id="c01_l">
				<a href="http://guide.ding9.com">
					<img src="/images/logo.gif" width="192" height="108" border="0">
				</a>
			</div>
			<div id="c01_m1">
				<img src="/images/top001.gif" width="33" height="108">
			</div>
			<div id="c01_m2">
				<table width="100%" border="0" cellspacing="0" cellpadding="0">
					<tr>
						<td align="center">
							<table width="310" border="0" cellpadding="0" cellspacing="0" id="secTable1">
								<tr>
									<td width="50" class="sel03" onClick="secBoard1(0)">
										商品
									</td>
									<td width="50" class="sel04" onClick="">
										商家
									</td>
									<td width="50" class="sel04" onClick="">
										优惠
									</td>
									<td width="50" class="sel04" onClick="">
										促销
									</td>
									<td width="50" class="sel04" onClick="">
										资讯
									</td>
									<td width="50" class="sel04" onClick="">
										评论
									</td>
								</tr>
							</table>
						</td>
					</tr>
				</table>
				<table width="85%" border="0" cellspacing="0" cellpadding="0" id="mainTable1">
					<tbody style="display:block;">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<FORM id=searchForm name="searchform" method=post onsubmit="return searchform_onsubmit()" action="http://search.ding9.com/search.do" target=_blank>
										<td width="82%" height="32">


											<INPUT class="H4" size="54" type="text" id=KeyWord onblur=showSearch(this,1) onfocus=showSearch(this) value=输入关键字进行搜索 name=key>

											<select name="sel_prso_id_one" class="H1">

												<option selected>
													所有类别
												</option>
												<option value="1">
													数码/电子
												</option>

												<option value="4">
													成人用品
												</option>
												<option value="6">
													手机/通讯
												</option>
												<option value="7">
													电脑/网络
												</option>
												<option value="8">
													美容美体
												</option>
												<option value="12">
													家用电器
												</option>
												<option value="15">
													办公用品
												</option>
											</select>
										</td>
										<td width="18%" align="left">

											<INPUT onclick="" type=image src="/images/s001.gif" name=image width="103" height="22" border="0">

										</td>

										</form>
									</tr>



									<tr>
										<td height="19" colspan="2" class="H1c">
											热门搜索:
											<logic:present name="keyList">
												<logic:iterate id="key" name="keyList" offset="0" indexId="seq">
													<bean:define id="kw" name="key" type="java.lang.String" />
													<A target="_blank" href='<%=com.ding9.util.Environment.getChannelSearch()+UrlRewriteManager.dynamic2static("/search.do?key="+kw)%>' class="H1">
														<bean:write name="key" />
													</A>
												</logic:iterate>
											</logic:present>
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody>
					<tbody style="display:none;">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="82%" height="32">
											<input name="textfield" type="text" class="H4" value="输入关键字进行搜索" size="40">
											<select name="select" class="H1">
												<option>
													所在省份
												</option>
											</select>
											<select name="select2" class="H1">
												<option>
													所在城市
												</option>
											</select>
										</td>
										<td width="18%">
											<a href="#">
												<img src="/images/s002.gif" width="103" height="22" border="0">
											</a>
										</td>
									</tr>
									<tr>
										<td height="19" colspan="2" class="H1c">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody>
					<tbody style="display:none;">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="82%" height="32">
											<input name="textfield" type="text" class="H4" value="输入关键字进行搜索" size="68">
										</td>
										<td width="18%">
											<a href="#">
												<img src="/images/s003.gif" width="103" height="22" border="0">
											</a>
										</td>
									</tr>
									<tr>
										<td height="19" colspan="2" class="H1c">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody>
					<tbody style="display:none;">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="82%" height="32">
											<input name="textfield" type="text" class="H4" value="输入关键字进行搜索" size="68">
										</td>
										<td width="18%">
											<a href="#">
												<img src="/images/s004.gif" width="103" height="22" border="0">
											</a>
										</td>
									</tr>
									<tr>
										<td height="19" colspan="2" class="H1c">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody>
					<tbody style="display:none;">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="82%" height="32">
											<input name="textfield" type="text" class="H4" value="输入关键字进行搜索" size="68">
										</td>
										<td width="18%">
											<a href="#">
												<img src="/images/s005.gif" width="103" height="22" border="0">
											</a>
										</td>
									</tr>
									<tr>
										<td height="19" colspan="2" class="H1c">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody>
					<tbody style="display:none;">
						<tr>
							<td>
								<table width="100%" border="0" cellspacing="0" cellpadding="0">
									<tr>
										<td width="82%" height="32">
											<input name="textfield" type="text" class="H4" value="输入关键字进行搜索" size="54">
											<select name="select" class="H1">
												<option>
													所在类别
												</option>
											</select>
										</td>
										<td width="18%">
											<a href="#">
												<img src="/images/s006.gif" width="103" height="22" border="0">
											</a>
										</td>
									</tr>
									<tr>
										<td height="19" colspan="2" class="H1c">
											&nbsp;
										</td>
									</tr>
								</table>
							</td>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="c01_r">
				<img src="/images/top003.gif" width="49" height="108">
			</div>
		</div>

		<div id="menu">
			<div id="menu_l">
				<img src="/images/menu/menu001.gif" width="8" height="26">
			</div>


			<center>
				<div class="H1" id="menu_m">
					<a target="_blank" class="H1" href="<%=UrlRewriteManager.dynamic2static("/index.do")%>">
						首 页
					</a>
				</div>
				<div id="menu_2">
					<a href="<%=com.ding9.util.Environment.getChannelMobile()%>" class="H1">
						手机通信
					</a>
				</div>
				<div id="menu_3">
					<a href="<%=com.ding9.util.Environment.getChannelDigital()%>" class="H1">
						数码电子
					</a>
				</div>
				<div id="menu_4">
					<a href="<%=com.ding9.util.Environment.getChannelComputer()%>" class="H1">
						电脑网络
					</a>
				</div>
				<div id="menu_5">
					<a href="<%=com.ding9.util.Environment.getChannelOffice()%>" class="H1">
						办公用品
					</a>
				</div>
				<div id="menu_6">
					<a href="<%=com.ding9.util.Environment.getChannelHea()%>" class="H1">
						家用电器
					</a>
				</div>
				<div id="menu_7">
					<a href="<%=com.ding9.util.Environment.getChannelBeauty()%>" class="H1">
						美容美体
					</a>
				</div>
				<div id="menu_8">
					<a href="<%=com.ding9.util.Environment.getChannelLove()%>" class="H1">
						成人用品
					</a>
				</div>
				<div class="H1" id="menu_9">
					<a href="<%=com.ding9.util.Environment.getChannelCoupon()%>" class="H1">
						优惠券
					</a>
				</div>
				<div id="menu_10">
					<a href="<%=com.ding9.util.Environment.getChannelPromotion()%>" class="H1">
						促销折扣
					</a>
				</div>




				<div id="menu_12">
					<a href="<%=com.ding9.util.Environment.getChannelShop()%>" class="H2">
						<img src="/images/gj.gif" width="50" height="18" border="0">
					</a>
				</div>
				<div id="menu_11">
					<a href="http://carcv.ding9.com" class="H1">
						二手车
					</a>
				</div>
				<div id="menu_13" onMouseOver="MM_showHideLayers('Layer2','','show')" onmouseout="MM_showHideLayers('Layer2','','hide')" vAlign=center align=middle width=72>

					<a class="H1">
						更多
					</a>
					<img src="/images/arrow_022.gif" width="8" height="8" border="0">
				</div>
				<div id="menu_r">
					<img src="/images/menu/menu004.gif" width="8" height="26">
				</div>

			</center>

			<DIV id=Layer1 style="Z-INDEX: 1; WIDTH: 72px; POSITION: absolute; HEIGHT: 23px; ">
				<DIV id=Layer2 onMouseOver="MM_showHideLayers('Layer2','','show')" style="Z-INDEX: 1; LEFT: 820px; VISIBILITY: hidden; WIDTH: 72px; POSITION: absolute; TOP: -2px; HEIGHT: 61px" onmouseout="MM_showHideLayers('Layer2','','hide')">
					<TABLE width="100%" border=0 cellPadding=0 cellSpacing=1 bgColor=#CCCCCC>
						<TBODY>
							<TR>
								<TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD>
									<A href="<%=com.ding9.util.Environment.getChannelMerchant()%>" target="_blank" class="H1">
										&nbsp;顶九商家
									</A>
								</TD>
							</TR>
							<TR>
								<TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD>
									<A href="<%=com.ding9.util.Environment.getChannelYouhui()%>" target="_blank" class="H1">
										&nbsp;优惠在线
									</A>
								</TD>
							</TR>
							<TR>
								<TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD>
									<A target="_blank" href="http://www.smartclub.com.cn/sp_channel/index.asp?site=ding9" class="H1">
										&nbsp;积分奖励
									</A>
								</TD>
							</TR>
						</TBODY>
					</TABLE>
				</DIV>
			</div>
			<!--menu-->
	</body>
</html>


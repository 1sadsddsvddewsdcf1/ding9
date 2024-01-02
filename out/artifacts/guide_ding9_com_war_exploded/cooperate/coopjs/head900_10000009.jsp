<%@page contentType="text/html;charset=gbk" %><%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ page import="com.ding9.util.Environment"%>
<%@ page import="com.ding9.util.ProjectEnvironment"%><head>
<head>
<title>顶九网: 购物搜索,一个顶九! 顶九购物搜索信息平台  guide.ding9.com</title> <META NAME="description" CONTENT="首页关键内容中国最好、最强、产品最多的比较购物平台，让您享受省时、省力、省钱、省心的购物环境，真正做到货比多家，购买到最好、最便宜的商品，体验比较购物的无限乐趣。"> <META NAME="keywords" CONTENT="首页关键词比较 购物 网站 价格 商家 商品 产品 品牌 购物网站 比较购物 在线购物 比较价格 商家比较  产品评价 商家评价 ding9.com 计算机 数码电子 办公设备 通讯 汽车 成人用品 家用电器 化妆品 音像"><META NAME="Author" CONTENT="顶九网"> <META NAME="Subject" CONTENT="顶九网 ding9网 ding9 顶九 ding9wang  比较 购物 省钱 便宜 商家 指南"><META NAME="Robots" CONTENT="all"><META NAME="copyright" CONTENT="ding9.com">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="css3.0/tefont.css" rel="stylesheet" type="text/css">
<link href="css3.0/te.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/tecomment.js"></script>
<script type="text/javascript" src="js/public.js"></script>
<script type="text/javascript" src="js/CityList.js"></script>
<script language="javascript">
var show_word="输入关键字进行搜索";
function showSearch(obj,type){
	if(type){
		if(obj.value=="")
			obj.value=show_word;
		obj.style.color='gray';
	}else{		
		if(obj.value==show_word)
			obj.value="";
		obj.style.color='#000000';
	}
}

function searchform_onsubmit() {
	if(trim(document.searchform.key.value)=='' || document.searchform.key.value=='输入关键字进行搜索'){
		alert('请输入查询关键字');
		return false;
	}
	var sel_prso_id_one = document.searchform.prso_id_one.value;
	if (sel_prso_id_one == "") {	//所有类别
		document.searchform.action="<%=ProjectEnvironment.getChannelDomainName("0")%>/search.do";
	}
	if (sel_prso_id_one == "1") {	//数码电子
		document.searchform.action="<%=ProjectEnvironment.getChannelDomainName("1")%>/search.do";
	}
	if (sel_prso_id_one == "4") {	//成人用品
		document.searchform.action="<%=ProjectEnvironment.getChannelDomainName("4")%>/search.do";
	}
	if (sel_prso_id_one == "6") {	//手机/通讯
		document.searchform.action="<%=ProjectEnvironment.getChannelDomainName("6")%>/search.do";
	}
	if (sel_prso_id_one == "7") {	//电脑/网络
		document.searchform.action="<%=ProjectEnvironment.getChannelDomainName("7")%>/search.do";
	}
	if (sel_prso_id_one == "8") {	//美容美体
		document.searchform.action="<%=ProjectEnvironment.getChannelDomainName("8")%>/search.do";
	}
	if (sel_prso_id_one == "12") {	//家用电器
		document.searchform.action="<%=ProjectEnvironment.getChannelDomainName("12")%>/search.do";
	}
	if (sel_prso_id_one == "15") {	//办公用品
		document.searchform.action="<%=ProjectEnvironment.getChannelDomainName("15")%>/search.do";
	}
	return true;
}


function searchmerchant_onsubmit() {
	if(trim(document.searchmerchant.key.value)=='' || document.searchmerchant.key.value=='输入关键字进行搜索'){
		alert('请输入查询关键字');
		return false;
	}

	document.searchmerchant.action="<%=Environment.getChannelMerchant()%>/member/merchant-list.do";
	return true;
}

function srccomment(obj,strtype)
{
	//alert(document.searchcomment.select);
	if(trim(obj.key.value)=='' || obj.key.value=='输入关键字进行搜索'){
		alert('请输入查询关键字');
		return false;
	}
	
	obj.action="<%=Environment.getChannelSearch()%>/" + strtype + ".do?q=" + obj.key.value + "&cid=" + document.searchcomment.select.value;
	return true;
}

function other(obj,strtype)
{
	if(trim(obj.key.value)=='' || obj.key.value=='输入关键字进行搜索'){
		alert('请输入查询关键字');
		return false;
	}
	
	obj.action="<%=Environment.getChannelSearch()%>/" + strtype + ".do?q=" + obj.key.value;
	return true;
}
  </script>
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
<div id="top">
<div id="top_1"><img src="/teimages/log03.gif" width="13" height="13"><a href="http://guide.ding9.com/switch----,help.htm"  target="_blank" class="teH1"> 帮助</a></div>
<div id="top_2"><img src="/teimages/log02.gif" width="13" height="13"><span class="teH1"><a href="http://guide.ding9.com/login.html" target="_blank" class="teH1"> 商家登录</a>/<a href="http://guide.ding9.com/login.html" target="_blank" class="teH1">注册</a></span></div>
<!-- div id="top_3"><img src="/teimages/log01.gif" width="13" height="13"><span class="teH1"><a href="#" class="teH1"> 用户登录</a>/<a href="#" class="teH1">注册</a></span></div-->
</div><!--top-->

<div id="top001">
<div id="top001_l"><a href="http://guide.ding9.com"><img src="/teimages/logo.gif" width="192" height="108" border="0"></a></div>
<div id="top001_m1"><img src="/teimages/top001.gif" width="33" height="108"></div>
<div id="top001_m2">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center"><table width="310" border="0" cellpadding="0" cellspacing="0" id="tesecTable1">
        <tr>
          <td width="50" class="tesel03" onClick="tesecBoard1(0)">商品</td>          
          <td width="50" class="tesel04" onClick="tesecBoard1(1)">商家</td>          
          <td width="50" class="tesel04" onClick="tesecBoard1(2)">优惠</td>          
          <td width="50" class="tesel04" onClick="tesecBoard1(3)">促销</td>          
          <td width="50" class="tesel04" onClick="tesecBoard1(4)">资讯</td>          
          <td width="50" class="tesel04" onClick="tesecBoard1(5)">评论</td>
        </tr>
      </table></td>
    </tr>
  </table>
  <table width="85%" border="0" cellspacing="0" cellpadding="0" id="temainTable1">
    <tbody  style="display:block;">
	<tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <form name="searchform" action="<%=ProjectEnvironment.getChannelDomainName("0")%>/search.do" method="post" onsubmit="return searchform_onsubmit()" target="_blank" >
        <tr>
          <td width="82%" height="32"><input name="key" type="text" class="teH4" onblur=showSearch(this,1) onfocus=showSearch(this) value="输入关键字进行搜索" size="54">
              <select name="prso_id_one"  class="teH1" >
                      <option selected >所有类别</option>
                      <option value="1" >数码/电子</option>
                      <option value="4">成人用品</option>
                      <option value="6">手机/通讯</option>
                      <option value="7" >电脑/网络</option>
                      <option value="8">美容美体</option>
                      <option value="12">家用电器</option>
                      <option value="15">办公用品</option>
                  </select>        </td>
          <td width="18%"><input type="image" src="/teimages/s001.gif" width="103" height="22" border="0"></td>
        </tr>      
        <tr>
          <td height="19" colspan="2" class="teH1c">热门搜索:&nbsp;<logic:present name="key_word"><logic:iterate name="key_word" id="keyword" offset="0" indexId="index"><bean:write name="keyword" filter="false"/></logic:iterate></logic:present></td>
          </tr>   </form> 
      </table></td>
    </tr></tbody>
	
	
	 <tbody  style="display:none;">
	<tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <form method=post name='searchmerchant' method="post" onsubmit="return searchmerchant_onsubmit()" target="_blank">
        <tr>
          <td width="82%" height="32">
          
          <input name="key" type="text" class="teH4" onblur=showSearch(this,1) onfocus=showSearch(this) value="输入关键字进行搜索" size="40">
								<input type="hidden" name="selectp">
              <select name="province"  onChange="Javascript:FUN_PROVINCE_CITY(this.value);" class=teH1>
										<option value="0" selected>所在省份</option>
										
											<option value="01|0101-东城区,0102-西城区,0103-崇文区,0104-宣武区,0105-朝阳区,0106-海淀区,0107-丰台区,0108-石景山," >
												北京
											</option>
										
											<option value="02|0201-罗湖,0202-福田,0203-南山,0204-盐田,0205-宝安,0206-龙岗," >
												深圳
											</option>
										
											<option value="03|0301-宝山,0302-金山,0303-南市,0304-长宁,0305-静安,0306-青浦,0307-崇明,0308-卢湾,0309-松江,0310-奉贤,0311-浦东,0312-杨浦,0313-虹口,0314-普陀,0315-闸北,0316-黄浦,0317-闵行,0318-徐汇,0319-嘉定,0320-南汇," >
												上海
											</option>
										
											<option value="04|0401-渝中,0402-江北,0403-沙坪坝,0404-南岸,0405-九龙坡,0406-大渡口," >
												重庆
											</option>
										
											<option value="05|0501-和平,0502-河北,0503-河西,0504-河东,0505-南开,0506-红桥,0507-塘沽,0508-汉沽,0509-大港,0510-东丽,0511-西青,0512-津南,0513-北辰,0514-武清,0515-滨海," >
												天津
											</option>
										
											<option value="06|0601-广州,0602-珠海,0603-中山,0604-佛山,0605-东莞,0606-清远,0607-肇庆,0608-阳江,0609-湛江,0610-韶关,0611-惠州,0612-河源,0613-汕尾,0614-汕头,0615-梅州," >
												广东
											</option>
										
											<option value="07|0701-石家庄,0702-唐山,0703-秦皇岛,0704-邯郸,0705-邢台,0706-张家口,0707-承德,0708-廊坊,0709-沧州,0710-保定,0711-衡水," >
												河北
											</option>
										
											<option value="08|0801-太原,0802-大同,0803-阳泉,0804-朔州,0805-长治,0806-临汾,0807-晋城," >
												山西
											</option>
										
											<option value="09|0901-呼和浩特,0902-包头,0903-乌海,0904-临河,0905-东胜,0906-集宁,0907-锡林浩特,0908-通辽,0909-赤峰,0910-海拉尔,0911-乌兰浩特," >
												内蒙古
											</option>
										
											<option value="10|1001-沈阳,1002-大连,1003-鞍山,1004-锦州,1005-丹东,1006-盘锦,1007-铁岭,1008-抚顺,1009-营口,1010-辽阳,1011-阜新,1012-本溪,1013-朝阳,1014-葫芦岛," >
												辽宁
											</option>
										
											<option value="11|1101-长春,1102-吉林,1103-四平,1104-辽源,1105-通化,1106-白山,1107-松原,1108-白城,1109-延边," >
												吉林
											</option>
										
											<option value="12|1201-哈尔滨,1202-齐齐哈尔,1203-牡丹江,1204-佳木斯,1205-大庆,1206-伊春,1207-黑河,1208-鸡西,1209-鹤岗,1210-双鸭山,1211-七台河,1212-绥化,1213-大兴安岭," >
												黑龙江
											</option>
										
											<option value="13|1301-南京,1302-苏州,1303-无锡,1304-常州,1305-镇江,1306-连云港,1307-扬州,1308-徐州,1309-南通,1310-盐城,1311-淮阴,1312-泰州,1313-宿迁," >
												江苏
											</option>
										
											<option value="14|1401-杭州,1402-湖州,1403-丽水,1404-温州,1405-绍兴,1406-舟山,1407-嘉兴,1408-金华,1409-台州,1410-衢州,1411-宁波," >
												浙江
											</option>
										
											<option value="15|1501-合肥,1502-芜湖,1503-蚌埠,1504-滁州,1505-安庆,1506-六安,1507-黄山,1508-宣城,1509-淮南,1510-宿州,1511-马鞍山,1512-铜陵,1513-淮北,1514-阜阳,1515-池州,1516-巢湖,1517-亳州," >
												安徽
											</option>
										
											<option value="16|1601-福州,1602-厦门,1603-泉州,1604-漳州,1605-龙岩,1606-南平,1607-宁德,1608-莆田,1609-三明," >
												福建
											</option>
										
											<option value="17|1701-南昌,1702-景德镇,1703-九江,1704-萍乡,1705-新余,1706-鹰潭,1707-赣州,1708-宜春,1709-吉安,1710-上饶,1711-抚州," >
												江西
											</option>
										
											<option value="18|1801-济南,1802-青岛,1803-淄博,1804-德州,1805-烟台,1806-潍坊,1807-济宁,1808-泰安,1809-临沂,1810-菏泽,1811-威海,1812-枣庄,1813-日照,1814-莱芜,1815-聊城,1816-滨州,1817-东营," >
												山东
											</option>
										
											<option value="19|1901-郑州,1902-开封,1903-洛阳,1904-平顶山,1905-安阳,1906-鹤壁,1907-新乡,1908-焦作,1909-濮阳,1910-许昌,1911-漯河,1912-三门峡,1913-南阳,1914-商丘,1915-周口,1916-驻马店,1917-信阳,1918-济源," >
												河南
											</option>
										
											<option value="20|2001-武汉,2002-黄石,2003-十堰,2004-荆州,2005-宜昌,2006-襄樊,2007-鄂州,2008-荆门,2009-孝感,2010-黄冈,2011-咸宁,2012-恩施,2013-随州,2014-仙桃,2015-天门,2016-潜江,2017-神农架," >
												湖北
											</option>
										
											<option value="21|2101-长沙,2102-株州,2103-湘潭,2104-衡阳,2105-邵阳,2106-岳阳,2107-常德,2108-郴州,2109-益阳,2110-永州,2111-怀化,2112-娄底,2113-湘西," >
												湖南
											</option>
										
											<option value="22|2201-南宁,2202-柳州,2203-桂林,2204-梧州,2205-北海,2206-防城港,2207-钦州,2208-贵港,2209-玉林,2210-贺州,2211-百色,2212-河池," >
												广西
											</option>
										
											<option value="23|2301-海口,2302-三亚,2303-通什,2304-琼海,2305-琼山,2306-文昌,2307-万宁,2308-东方,2309-儋州," >
												海南
											</option>
										
											<option value="24|2401-成都,2402-自贡,2403-攀枝花,2404-泸州,2405-德阳,2406-绵阳,2407-广元,2408-遂宁,2409-内江,2410-乐山,2411-南充,2412-宜宾,2413-广安,2414-达川,2415-巴中,2416-雅安,2417-眉山,2418-阿坝,2419-甘孜,2420-凉山," >
												四川
											</option>
										
											<option value="25|2501-贵阳,2502-六盘水,2503-遵义,2504-铜仁,2505-毕节,2506-安顺,2507-黔西南,2508-黔东南,2509-黔南," >
												贵州
											</option>
										
											<option value="26|2601-昆明,2602-东川,2603-曲靖,2604-玉溪,2605-昭通,2606-思茅,2607-临沧,2608-保山,2609-丽江,2610-文山,2611-红河,2612-西双版纳,2613-楚雄,2614-大理,2615-德宏,2616-怒江,2617-迪庆," >
												云南
											</option>
										
											<option value="27|2701-拉萨,2702-那曲,2703-昌都,2704-山南,2705-日喀则,2706-阿里,2707-林芝," >
												西藏
											</option>
										
											<option value="28|2801-西安,2802-铜川,2803-宝鸡,2804-咸阳,2805-渭南,2806-延安,2807-汉中,2808-榆林,2809-商洛,2810-安康," >
												陕西
											</option>
										
											<option value="29|2901-兰州,2902-金昌,2903-白银,2904-天水,2905-嘉峪关,2906-定西,2907-平凉,2908-庆阳,2909-陇南,2910-武威,2911-张掖,2912-酒泉,2913-甘南,2914-临夏," >
												甘肃
											</option>
										
											<option value="30|3001-西宁,3002-海东,3003-海北,3004-黄南,3005-海南,3006-果洛,3007-玉树,3008-海西," >
												青海
											</option>
										
											<option value="31|3101-银川,3102-石嘴山,3103-银南,3104-固原," >
												宁夏
											</option>
										
											<option value="32|3201-乌鲁木齐,3202-克拉玛依,3203-石河子,3204-吐鲁番,3205-哈密,3206-和田,3207-阿克苏,3208-喀什,3209-克孜勒苏,3210-巴音郭楞,3211-昌吉,3212-博尔塔拉,3213-伊犁," >
												新疆
											</option>
										
											<option value="33|" >
												香港
											</option>
										
											<option value="34|" >
												澳门
											</option>
										
											<option value="35|" >
												台湾
											</option>
										
									</select>
              <select name="selectc" class=teH1>
									</select>
									<SCRIPT LANGUAGE="JAVASCRIPT">
									FUN_PROVINCE_CITY(document.all.province.value);
									</SCRIPT></td>
          <td width="18%"><input name="image" type="image" src="/teimages/s002.gif" width="103" height="22" border="0" onclick="return searchmerchant_onsubmit()"></td>
        </tr></form>
      </table></td>
    </tr></tbody>
		 <tbody  style="display:none;">
	<tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <form name="searchcheapcard" action="<%=ProjectEnvironment.getChannelDomainName("0")%>/search.do" method="post" onsubmit="return other(this,'cheapcard')" target="_blank" >
        <tr>
          <td width="82%" height="32"><input name="key" type="text" class="teH4" onblur=showSearch(this,1) onfocus=showSearch(this) value="输入关键字进行搜索" size="68"></td>
          <td width="18%"><input type="image" src="/teimages/s003.gif" width="103" height="22" border="0"></td>
        </tr></form> 
      </table></td>
    </tr></tbody>
	
	
  	 <tbody  style="display:none;">
	<tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <form name="searchpromotion" action="<%=ProjectEnvironment.getChannelDomainName("0")%>/search.do" method="post" onsubmit="return other(this,'promotion')" target="_blank" >
        <tr>
          <td width="82%" height="32"><input name="key" type="text" class="teH4" onblur=showSearch(this,1) onfocus=showSearch(this) value="输入关键字进行搜索" size="68"></td>
          <td width="18%"><input type="image" src="/teimages/s004.gif" width="103" height="22" border="0"></td>
        </tr></form> 
      </table></td>
    </tr></tbody>
	
	
  	 <tbody  style="display:none;">
	<tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <form name="searcharticle" action="<%=ProjectEnvironment.getChannelDomainName("0")%>/search.do" method="post" onsubmit="return other(this,'article')" target="_blank" >
        <tr>
          <td width="82%" height="32"><input name="key" type="text" class="teH4" onblur=showSearch(this,1) onfocus=showSearch(this) value="输入关键字进行搜索" size="68"></td>
          <td width="18%"><input type="image" src="/teimages/s005.gif" width="103" height="22" border="0"></td>
        </tr></form> 
      </table></td>
    </tr></tbody>
	
	
  	 <tbody  style="display:none;">
	<tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
      <form name="searchcomment" action="<%=ProjectEnvironment.getChannelDomainName("0")%>/search.do" method="post" onsubmit="return srccomment(this,'comment')" target="_blank" >
        <tr>
          <td width="82%" height="32"><input name="key" type="text" class="teH4" onblur=showSearch(this,1) onfocus=showSearch(this) value="输入关键字进行搜索" size="54">
              <select name="select"  class="teH1" >
                      <option selected >所有类别</option>
                      <option value="1" >数码/电子</option>
                      <option value="4">成人用品</option>
                      <option value="6">手机/通讯</option>
                      <option value="7" >电脑/网络</option>
                      <option value="8">美容美体</option>
                      <option value="12">家用电器</option>
                      <option value="15">办公用品</option>
                  </select>        </td>
          <td width="18%"><input type="image" src="/teimages/s006.gif" width="103" height="22" border="0"></td>
        </tr></form> 
      </table></td>
    </tr></tbody>
	
	
  
	
	
  </table>
  </div>
<!--top001m2-->
<div id="top001_r"><img src="teimages/top003.gif" width="49" height="108"></div>
</div><!--top001-->

<div id="menu">
<div id="menu_l"><img src="teimages/menu001.gif" width="8" height="26"></div>
<div  id="menu_2"><a href="http://guide.ding9.com" class="teH1"  target="_top">首   页</a></div>
<div class="teH1" id="menu_1"><a href="http://mobile.ding9.com" class="teH1" target="_top">手机通信</a></div>
<div id="menu_3"><a href="http://digital.ding9.com" class="teH1" target="_top">数码电子</a></div>
<div id="menu_4"><a href="http://computer.ding9.com" class="teH1" target="_top">电脑网络</a></div>
<div id="menu_5"><a href="http://office.ding9.com" class="teH1" target="_top">办公用品</a></div>
<div id="menu_6"><a href="http://hea.ding9.com" class="teH1" target="_top">家用电器</a></div>
<div id="menu_7"><a href="http://beauty.ding9.com" class="teH1" target="_top">美容美体</a></div>
<div id="menu_8"><a href="http://love.ding9.com" class="teH1" target="_top">成人用品</a></div>
<div class="teH1" id="menu_9"><a  href="http://coupon.ding9.com" class="teH1" target="_top">优惠券</a></div>
<div id="menu_10"><a href="http://promotion.ding9.com" class="teH1" target="_top">促销折扣</a></div>
<div id="menu_12"><a href="http://gz.shoplocal.ding9.com" class="H2" target="_top"><img src="teimages/gj.gif" width="50" height="18" border="0"></a></div>
<div id="menu_m"><a href="http://carcv.ding9.com" class="teH1" target="_top">二手车</a></div>
<div id="menu_13" onMouseOver="MM_showHideLayers('Layer2','','show')" 
    onmouseout="MM_showHideLayers('Layer2','','hide')" vAlign=center 
    align=middle width=72><a class="teH1">更多 </a><img src="teimages/arrow_022.gif" width="8" height="8" border="0"></div>
<div id="menu_r"><img src="teimages/menu004.gif" width="8" height="26"></div>


</div><!--menu-->
<DIV id=Layer1 
      style="Z-INDEX: 1; WIDTH: 72px; POSITION: absolute; HEIGHT: 23px; ">
      <DIV id=Layer2 onMouseOver="MM_showHideLayers('Layer2','','show')" 
      style="Z-INDEX: 1; LEFT: 828px; VISIBILITY: hidden; WIDTH: 72px; POSITION: absolute; TOP: -102px; HEIGHT: 61px" 
      onmouseout="MM_showHideLayers('Layer2','','hide')">
      <TABLE width="100%" 
        border=0 cellPadding=0 cellSpacing=1 bgColor=#CCCCCC >
        <TBODY>
        <TR>
          <TD height="25" class=service onMouseOver="this.className='service-blank'" 
          onmouseout="this.className='service'" bgColor=#F7FBFD><A 
            href="http://merchant.ding9.com" class="teH1" target="_top">&nbsp;顶九商家</A></TD>
        </TR>
        <TR>
          <TD height="25" class=service onMouseOver="this.className='service-blank'" 
          onmouseout="this.className='service'" bgColor=#F7FBFD><A 
            href="http://youhui.ding9.com" class="teH1" target="_top">&nbsp;优惠在线</A></TD>
        </TR>
        <TR>
          <TD height="25" class=service onMouseOver="this.className='service-blank'" 
          onmouseout="this.className='service'" bgColor=#F7FBFD><A 
            href="http://www.smartclub.com.cn/sp_channel/index.asp?site=ding9" class="teH1" target="_top">&nbsp;积分奖励</A></TD>
        </TR>
  </TBODY></TABLE></DIV></DIV>
<!--c02-->
<div id="c03">
  <!--c03_l-->
  <!--c03_r-->
</div>
</center>
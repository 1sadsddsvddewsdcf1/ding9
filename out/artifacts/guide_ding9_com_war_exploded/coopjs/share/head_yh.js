document.writeln("<!DOCTYPE HTML PUBLIC \"-\/\/W3C\/\/DTD HTML 4.01 Transitional\/\/EN\">");
document.writeln("<html>");
document.writeln("<head>");
document.writeln("<meta http-equiv=\"Content-Type\" content=\"text\/html; charset=gb2312\">");
document.writeln("<title>顶九网 搜索购物 一个顶九<\/title>");
document.writeln("<head>");
document.writeln("<title>顶九网: 购物搜索,一个顶九! 顶九购物搜索信息平台  guide.ding9.com<\/title> <META NAME=\"description\" CONTENT=\"首页关键内容中国最好、最强、产品最多的比较购物平台，让您享受省时、省力、省钱、省心的购物环境，真正做到货比多家，购买到最好、最便宜的商品，体验比较购物的无限乐趣。\"> <META NAME=\"keywords\" CONTENT=\"首页关键词比较 购物 网站 价格 商家 商品 产品 品牌 购物网站 比较购物 在线购物 比较价格 商家比较  产品评价 商家评价 ding9.com 计算机 数码电子 办公设备 通讯 汽车 成人用品 家用电器 化妆品 音像\"><META NAME=\"Author\" CONTENT=\"顶九网\"> <META NAME=\"Subject\" CONTENT=\"顶九网 ding9网 ding9 顶九 ding9wang  比较 购物 省钱 便宜 商家 指南\"><META NAME=\"Robots\" CONTENT=\"all\"><META NAME=\"copyright\" CONTENT=\"ding9.com\">");
document.writeln("<meta http-equiv=\"Content-Type\" content=\"text\/html; charset=gb2312\" \/>");
document.writeln("");
document.writeln("");
document.writeln("<link href=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/css3.0\/tefont.css\" rel=\"stylesheet\" type=\"text\/css\">");
document.writeln("<link href=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/css3.0\/te.css\" rel=\"stylesheet\" type=\"text\/css\">");
document.writeln("<script type=\"text\/javascript\" src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/js\/tecomment.js\"><\/script>");
document.writeln("<script type=\"text\/javascript\" src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/js\/CityList.js\"><\/script>");
document.writeln("<script language=\"javascript\">");
document.writeln("var show_word=\"输入关键字进行搜索\";");
document.writeln("function showSearch(obj,type){");
document.writeln("	if(type){");
document.writeln("		if(obj.value==\"\")");
document.writeln("			obj.value=show_word;");
document.writeln("		obj.style.color=\'gray\';");
document.writeln("	}else{		");
document.writeln("		if(obj.value==show_word)");
document.writeln("			obj.value=\"\";");
document.writeln("		obj.style.color=\'#000000\';");
document.writeln("	}");
document.writeln("}");
document.writeln("");
document.writeln("function searchform_onsubmit() {");
document.writeln("	if(trim(document.searchform.key.value)==\'\' || document.searchform.key.value==\"输入关键字进行搜索\" ){");
document.writeln("		alert(\'请输入查询关键字\');");
document.writeln("		return false;");
document.writeln("	}");
document.writeln("	var sel_prso_id_one = document.searchform.prso_id_one.value;");
document.writeln("	if (sel_prso_id_one == \"\") {	\/\/所有类别");
document.writeln("		document.searchform.action=\"http:\/\/search.ding9.com\/search.do\";");
document.writeln("	}");
document.writeln("	if (sel_prso_id_one == \"1\") {	\/\/数码电子");
document.writeln("		document.searchform.action=\"http:\/\/digital.ding9.com\/search.do\";");
document.writeln("	}");
document.writeln("	if (sel_prso_id_one == \"4\") {	\/\/成人用品");
document.writeln("		document.searchform.action=\"http:\/\/love.ding9.com\/search.do\";");
document.writeln("	}");
document.writeln("	if (sel_prso_id_one == \"6\") {	\/\/手机\/通讯");
document.writeln("		document.searchform.action=\"http:\/\/mobile.ding9.com\/search.do\";");
document.writeln("	}");
document.writeln("	if (sel_prso_id_one == \"7\") {	\/\/电脑\/网络");
document.writeln("		document.searchform.action=\"http:\/\/computer.ding9.com\/search.do\";");
document.writeln("	}");
document.writeln("	if (sel_prso_id_one == \"8\") {	\/\/美容美体");
document.writeln("		document.searchform.action=\"http:\/\/beauty.ding9.com\/search.do\";");
document.writeln("	}");
document.writeln("	if (sel_prso_id_one == \"12\") {	\/\/家用电器");
document.writeln("		document.searchform.action=\"http:\/\/hea.ding9.com\/search.do\";");
document.writeln("	}");
document.writeln("	if (sel_prso_id_one == \"15\") {	\/\/办公用品");
document.writeln("		document.searchform.action=\"http:\/\/office.ding9.com\/search.do\";");
document.writeln("	}");
document.writeln("	return true;");
document.writeln("}");
document.writeln("function trim(str){");
document.writeln(" return str.replace(\/(^\\s*)|(\\s*$)\/g, \"\");");
document.writeln("}");
document.writeln("function searchmerchant_onsubmit() {");
document.writeln("	if(trim(document.searchmerchant.key.value)==\'\' || document.searchmerchant.key.value==\'输入关键字进行搜索\'){");
document.writeln("		alert(\'请输入查询关键字\');");
document.writeln("		return false;");
document.writeln("	}");
document.writeln("");
document.writeln("	document.searchmerchant.action=\"http:\/\/merchant.ding9.com\/member\/merchant-list.do\";");
document.writeln("	return true;");
document.writeln("}");
document.writeln("");
document.writeln("function srccomment(obj,strtype)");
document.writeln("{");
document.writeln("	\/\/alert(document.searchcomment.select);");
document.writeln("	if(trim(obj.key.value)==\'\' || obj.key.value==\'输入关键字进行搜索\'){");
document.writeln("		alert(\'请输入查询关键字\');");
document.writeln("		return false;");
document.writeln("	}");
document.writeln("	");
document.writeln("	obj.action=\"http:\/\/search.ding9.com\/\" + strtype + \".do?q=\" + obj.key.value + \"&cid=\" + document.searchcomment.select.value;");
document.writeln("	return true;");
document.writeln("}");
document.writeln("");
document.writeln("function other(obj,strtype)");
document.writeln("{");
document.writeln("	if(trim(obj.key.value)==\'\' || obj.key.value==\'输入关键字进行搜索\'){");
document.writeln("		alert(\'请输入查询关键字\');");
document.writeln("		return false;");
document.writeln("	}");
document.writeln("	");
document.writeln("	obj.action=\"http:\/\/search.ding9.com\/\" + strtype + \".do?q=\" + obj.key.value;");
document.writeln("	return true;");
document.writeln("}");
document.writeln("  <\/script>");
document.writeln("<SCRIPT language=JavaScript type=text\/JavaScript>");
document.writeln("<!--");
document.writeln("function MM_reloadPage(init) {  \/\/reloads the window if Nav4 resized");
document.writeln("  if (init==true) with (navigator) {if ((appName==\"Netscape\")&&(parseInt(appVersion)==4)) {");
document.writeln("    document.MM_pgW=innerWidth; document.MM_pgH=innerHeight; onresize=MM_reloadPage; }}");
document.writeln("  else if (innerWidth!=document.MM_pgW || innerHeight!=document.MM_pgH) location.reload();");
document.writeln("}");
document.writeln("MM_reloadPage(true);");
document.writeln("");
document.writeln("function MM_callJS(jsStr) { \/\/v2.0");
document.writeln("  return eval(jsStr)");
document.writeln("}");
document.writeln("");
document.writeln("function MM_findObj(n, d) { \/\/v4.01");
document.writeln("  var p,i,x;  if(!d) d=document; if((p=n.indexOf(\"?\"))>0&&parent.frames.length) {");
document.writeln("    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}");
document.writeln("  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];");
document.writeln("  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);");
document.writeln("  if(!x && d.getElementById) x=d.getElementById(n); return x;");
document.writeln("}");
document.writeln("");
document.writeln("function MM_showHideLayers() { \/\/v6.0");
document.writeln("  var i,p,v,obj,args=MM_showHideLayers.arguments;");
document.writeln("  for (i=0; i<(args.length-2); i+=3) if ((obj=MM_findObj(args[i]))!=null) { v=args[i+2];");
document.writeln("    if (obj.style) { obj=obj.style; v=(v==\'show\')?\'visible\':(v==\'hide\')?\'hidden\':v; }");
document.writeln("    obj.visibility=v; }");
document.writeln("}");
document.writeln("\/\/-->");
document.writeln("<\/SCRIPT>");
document.writeln("");
document.writeln("");
document.writeln("");
document.writeln("<\/head>");
document.writeln("");
document.writeln("<body>");
document.writeln("<center>");
document.writeln("<div id=\"top01\">");
document.writeln("<div id=\"top01_1\"><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/log03.gif\" width=\"13\" height=\"13\"><a href=\"http:\/\/guide.ding9.com\/switch----,help.htm\"  target=\"_blank\" class=\"teH1\"> 帮助<\/a><\/div>");
document.writeln("<div id=\"top01_2\"><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/log02.gif\" width=\"13\" height=\"13\"><span class=\"teH1\"><a href=\"http:\/\/merchant.ding9.com\/login.html\" target=\"_blank\" class=\"teH1\"> 商家登录<\/a>\/<a href=\"http:\/\/merchant.ding9.com\/register.html\" target=\"_blank\" class=\"teH1\">注册<\/a><\/span><\/div>");
document.writeln("<!-- div id=\"top01_3\"><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/log01.gif\" width=\"13\" height=\"13\"><span class=\"teH1\"><a href=\"#\" class=\"teH1\"> 用户登录<\/a>\/<a href=\"#\" class=\"teH1\">注册<\/a><\/span><\/div-->");
document.writeln("<\/div><!--top-->");
document.writeln("");
document.writeln("<div id=\"top002\">");
document.writeln("<div id=\"top002_l\"><a href=\"http:\/\/guide.ding9.com\" target=\"_blank\"><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/logo.gif\" width=\"192\" height=\"108\" border=\"0\"><\/a><\/div>");
document.writeln("<div id=\"top002_m1\"><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/top001.gif\" width=\"33\" height=\"108\"><\/div>");
document.writeln("<div id=\"top002_m2\">");
document.writeln("  <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" >");
document.writeln("    <tr>");
document.writeln("      <td align=\"center\"><table width=\"310\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\" id=\"tesecTable1\">");
document.writeln("        <tr>");
document.writeln("          <td width=\"50\" class=\"tesel03\" onClick=\"tesecBoard1(0)\">商品<\/td>          ");
document.writeln("          <td width=\"50\" class=\"tesel04\" onClick=\"tesecBoard1(1)\">商家<\/td>          ");
document.writeln("          <td width=\"50\" class=\"tesel04\" onClick=\"tesecBoard1(2)\">优惠<\/td>          ");
document.writeln("          <td width=\"50\" class=\"tesel04\" onClick=\"tesecBoard1(3)\">促销<\/td>          ");
document.writeln("          <td width=\"50\" class=\"tesel04\" onClick=\"tesecBoard1(4)\">资讯<\/td>          ");
document.writeln("          <td width=\"50\" class=\"tesel04\" onClick=\"tesecBoard1(5)\">评论<\/td>");
document.writeln("        <\/tr>");
document.writeln("      <\/table><\/td>");
document.writeln("    <\/tr>");
document.writeln("  <\/table>");
document.writeln("  <table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\" id=\"temainTable1\">");
document.writeln("    <tbody  style=\"display:block;\">");
document.writeln("	<tr>");
document.writeln("      <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
document.writeln("      <form name=\"searchform\" action=\"http:\/\/search.ding9.com\/search.do\" method=\"post\" onSubmit=\"return searchform_onsubmit()\" target=\"_blank\" >");
document.writeln("        <tr>");
document.writeln("          <td width=\"82%\" height=\"32\">");
document.writeln("    	  <input name=\"key\" type=\"text\" class=\"teH4\" onblur=showSearch(this,1) onfocus=showSearch(this) value=\"输入关键字进行搜索\" size=\"46\">");
document.writeln("              <select name=\"prso_id_one\"  class=\"teH1\" >");
document.writeln("                      <option selected>所有类别<\/option>");
document.writeln("                      <option value=\"1\" >数码\/电子<\/option>");
document.writeln("                      <option value=\"4\">成人用品<\/option>");
document.writeln("                      <option value=\"6\">手机\/通讯<\/option>");
document.writeln("                      <option value=\"7\">电脑\/网络<\/option>");
document.writeln("                      <option value=\"8\">美容美体<\/option>");
document.writeln("                      <option value=\"12\">家用电器<\/option>");
document.writeln("                      <option value=\"15\">办公用品<\/option>");
document.writeln("                  <\/select>          <\/td>");
document.writeln("          <td width=\"18%\"><input type=\"image\" src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/s001.gif\" width=\"103\" height=\"22\" border=\"0\"><\/td>");
document.writeln("        <\/tr>");
document.writeln("        <tr>");
document.writeln("          <td height=\"19\" colspan=\"2\" class=\"teH1c\">热门搜索:&nbsp;<a target=\"_blank\" href=\"http:\/\/search.ding9.com\/search----,诺基亚.htm\"><span class=\"teH1\">诺基亚<\/span><\/a> <a target=\"_blank\" href=\"http:\/\/search.ding9.com\/search----,索尼爱立信.htm\"><span class=\"teH1\">索尼爱立信<\/span><\/a> <a target=\"_blank\" href=\"http:\/\/search.ding9.com\/search----,三星.htm\"><span class=\"teH1\">三星<\/span><\/a> <a target=\"_blank\" href=\"http:\/\/search.ding9.com\/search----,苹果.htm\"><span class=\"teH1\">苹果<\/span><\/a> <a target=\"_blank\" href=\"http:\/\/search.ding9.com\/search----,索尼.htm\"><span class=\"teH1\">索尼<\/span><\/a> <a target=\"_blank\" href=\"http:\/\/search.ding9.com\/search----,兰蔻.htm\"><span class=\"teH1\">兰蔻<\/span><\/a> <a target=\"_blank\" href=\"http:\/\/search.ding9.com\/search----,剃须刀.htm\"><span class=\"teH1\">剃须刀<\/span><\/a> <a target=\"_blank\" href=\"http:\/\/search.ding9.com\/search----,美容.htm\"><span class=\"teH1\">美容<\/span><\/a><\/td>");
document.writeln("          <\/tr>");
document.writeln("            <\/form> ");
document.writeln("      <\/table><\/td>");
document.writeln("    <\/tr><\/tbody>");
document.writeln("	");
document.writeln("	");
document.writeln("	 <tbody  style=\"display:none;\">");
document.writeln("	<tr>");
document.writeln("      <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
document.writeln("       <form method=post name=\'searchmerchant\' method=\"post\" onsubmit=\"return searchmerchant_onsubmit()\" target=\"_blank\">");
document.writeln("        <tr>");
document.writeln("          <td width=\"82%\" height=\"32\"> <input name=\"key\" type=\"text\" class=\"teH4\" onblur=showSearch(this,1) onfocus=showSearch(this) value=\"输入关键字进行搜索\" size=\"30\">");
document.writeln("								<input type=\"hidden\" name=\"selectp\">");
document.writeln("              <select name=\"province\"  onChange=\"Javascript:FUN_PROVINCE_CITY(this.value);\" class=teH1>");
document.writeln("										<option value=\"0\" selected>所在省份<\/option>										");
document.writeln("											<option value=\"01|0101-东城区,0102-西城区,0103-崇文区,0104-宣武区,0105-朝阳区,0106-海淀区,0107-丰台区,0108-石景山,\" >");
document.writeln("												北京");
document.writeln("											<\/option>										");
document.writeln("											<option value=\"02|0201-罗湖,0202-福田,0203-南山,0204-盐田,0205-宝安,0206-龙岗,\" >");
document.writeln("												深圳");
document.writeln("											<\/option>										");
document.writeln("											<option value=\"03|0301-宝山,0302-金山,0303-南市,0304-长宁,0305-静安,0306-青浦,0307-崇明,0308-卢湾,0309-松江,0310-奉贤,0311-浦东,0312-杨浦,0313-虹口,0314-普陀,0315-闸北,0316-黄浦,0317-闵行,0318-徐汇,0319-嘉定,0320-南汇,\" >");
document.writeln("												上海");
document.writeln("											<\/option>										");
document.writeln("											<option value=\"04|0401-渝中,0402-江北,0403-沙坪坝,0404-南岸,0405-九龙坡,0406-大渡口,\" >");
document.writeln("												重庆");
document.writeln("											<\/option>										");
document.writeln("											<option value=\"05|0501-和平,0502-河北,0503-河西,0504-河东,0505-南开,0506-红桥,0507-塘沽,0508-汉沽,0509-大港,0510-东丽,0511-西青,0512-津南,0513-北辰,0514-武清,0515-滨海,\" >");
document.writeln("												天津");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"06|0601-广州,0602-珠海,0603-中山,0604-佛山,0605-东莞,0606-清远,0607-肇庆,0608-阳江,0609-湛江,0610-韶关,0611-惠州,0612-河源,0613-汕尾,0614-汕头,0615-梅州,\" >");
document.writeln("												广东");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"07|0701-石家庄,0702-唐山,0703-秦皇岛,0704-邯郸,0705-邢台,0706-张家口,0707-承德,0708-廊坊,0709-沧州,0710-保定,0711-衡水,\" >");
document.writeln("												河北");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"08|0801-太原,0802-大同,0803-阳泉,0804-朔州,0805-长治,0806-临汾,0807-晋城,\" >");
document.writeln("												山西");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"09|0901-呼和浩特,0902-包头,0903-乌海,0904-临河,0905-东胜,0906-集宁,0907-锡林浩特,0908-通辽,0909-赤峰,0910-海拉尔,0911-乌兰浩特,\" >");
document.writeln("												内蒙古");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"10|1001-沈阳,1002-大连,1003-鞍山,1004-锦州,1005-丹东,1006-盘锦,1007-铁岭,1008-抚顺,1009-营口,1010-辽阳,1011-阜新,1012-本溪,1013-朝阳,1014-葫芦岛,\" >");
document.writeln("												辽宁");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"11|1101-长春,1102-吉林,1103-四平,1104-辽源,1105-通化,1106-白山,1107-松原,1108-白城,1109-延边,\" >");
document.writeln("												吉林");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"12|1201-哈尔滨,1202-齐齐哈尔,1203-牡丹江,1204-佳木斯,1205-大庆,1206-伊春,1207-黑河,1208-鸡西,1209-鹤岗,1210-双鸭山,1211-七台河,1212-绥化,1213-大兴安岭,\" >");
document.writeln("												黑龙江");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"13|1301-南京,1302-苏州,1303-无锡,1304-常州,1305-镇江,1306-连云港,1307-扬州,1308-徐州,1309-南通,1310-盐城,1311-淮阴,1312-泰州,1313-宿迁,\" >");
document.writeln("												江苏");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"14|1401-杭州,1402-湖州,1403-丽水,1404-温州,1405-绍兴,1406-舟山,1407-嘉兴,1408-金华,1409-台州,1410-衢州,1411-宁波,\" >");
document.writeln("												浙江");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"15|1501-合肥,1502-芜湖,1503-蚌埠,1504-滁州,1505-安庆,1506-六安,1507-黄山,1508-宣城,1509-淮南,1510-宿州,1511-马鞍山,1512-铜陵,1513-淮北,1514-阜阳,1515-池州,1516-巢湖,1517-亳州,\" >");
document.writeln("												安徽");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"16|1601-福州,1602-厦门,1603-泉州,1604-漳州,1605-龙岩,1606-南平,1607-宁德,1608-莆田,1609-三明,\" >");
document.writeln("												福建");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"17|1701-南昌,1702-景德镇,1703-九江,1704-萍乡,1705-新余,1706-鹰潭,1707-赣州,1708-宜春,1709-吉安,1710-上饶,1711-抚州,\" >");
document.writeln("												江西");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"18|1801-济南,1802-青岛,1803-淄博,1804-德州,1805-烟台,1806-潍坊,1807-济宁,1808-泰安,1809-临沂,1810-菏泽,1811-威海,1812-枣庄,1813-日照,1814-莱芜,1815-聊城,1816-滨州,1817-东营,\" >");
document.writeln("												山东");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"19|1901-郑州,1902-开封,1903-洛阳,1904-平顶山,1905-安阳,1906-鹤壁,1907-新乡,1908-焦作,1909-濮阳,1910-许昌,1911-漯河,1912-三门峡,1913-南阳,1914-商丘,1915-周口,1916-驻马店,1917-信阳,1918-济源,\" >");
document.writeln("												河南");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"20|2001-武汉,2002-黄石,2003-十堰,2004-荆州,2005-宜昌,2006-襄樊,2007-鄂州,2008-荆门,2009-孝感,2010-黄冈,2011-咸宁,2012-恩施,2013-随州,2014-仙桃,2015-天门,2016-潜江,2017-神农架,\" >");
document.writeln("												湖北");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"21|2101-长沙,2102-株州,2103-湘潭,2104-衡阳,2105-邵阳,2106-岳阳,2107-常德,2108-郴州,2109-益阳,2110-永州,2111-怀化,2112-娄底,2113-湘西,\" >");
document.writeln("												湖南");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"22|2201-南宁,2202-柳州,2203-桂林,2204-梧州,2205-北海,2206-防城港,2207-钦州,2208-贵港,2209-玉林,2210-贺州,2211-百色,2212-河池,\" >");
document.writeln("												广西");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"23|2301-海口,2302-三亚,2303-通什,2304-琼海,2305-琼山,2306-文昌,2307-万宁,2308-东方,2309-儋州,\" >");
document.writeln("												海南");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"24|2401-成都,2402-自贡,2403-攀枝花,2404-泸州,2405-德阳,2406-绵阳,2407-广元,2408-遂宁,2409-内江,2410-乐山,2411-南充,2412-宜宾,2413-广安,2414-达川,2415-巴中,2416-雅安,2417-眉山,2418-阿坝,2419-甘孜,2420-凉山,\" >");
document.writeln("												四川");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"25|2501-贵阳,2502-六盘水,2503-遵义,2504-铜仁,2505-毕节,2506-安顺,2507-黔西南,2508-黔东南,2509-黔南,\" >");
document.writeln("												贵州");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"26|2601-昆明,2602-东川,2603-曲靖,2604-玉溪,2605-昭通,2606-思茅,2607-临沧,2608-保山,2609-丽江,2610-文山,2611-红河,2612-西双版纳,2613-楚雄,2614-大理,2615-德宏,2616-怒江,2617-迪庆,\" >");
document.writeln("												云南");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"27|2701-拉萨,2702-那曲,2703-昌都,2704-山南,2705-日喀则,2706-阿里,2707-林芝,\" >");
document.writeln("												西藏");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"28|2801-西安,2802-铜川,2803-宝鸡,2804-咸阳,2805-渭南,2806-延安,2807-汉中,2808-榆林,2809-商洛,2810-安康,\" >");
document.writeln("												陕西");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"29|2901-兰州,2902-金昌,2903-白银,2904-天水,2905-嘉峪关,2906-定西,2907-平凉,2908-庆阳,2909-陇南,2910-武威,2911-张掖,2912-酒泉,2913-甘南,2914-临夏,\" >");
document.writeln("												甘肃");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"30|3001-西宁,3002-海东,3003-海北,3004-黄南,3005-海南,3006-果洛,3007-玉树,3008-海西,\" >");
document.writeln("												青海");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"31|3101-银川,3102-石嘴山,3103-银南,3104-固原,\" >");
document.writeln("												宁夏");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"32|3201-乌鲁木齐,3202-克拉玛依,3203-石河子,3204-吐鲁番,3205-哈密,3206-和田,3207-阿克苏,3208-喀什,3209-克孜勒苏,3210-巴音郭楞,3211-昌吉,3212-博尔塔拉,3213-伊犁,\" >");
document.writeln("												新疆");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"33|\" >");
document.writeln("												香港");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"34|\" >");
document.writeln("												澳门");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("											<option value=\"35|\" >");
document.writeln("												台湾");
document.writeln("											<\/option>");
document.writeln("										");
document.writeln("				  <\/select>");
document.writeln("              <select name=\"selectc\" class=teH1>");
document.writeln("				  <\/select>");
document.writeln("									<SCRIPT LANGUAGE=\"JAVASCRIPT\">");
document.writeln("									FUN_PROVINCE_CITY(document.all.province.value);");
document.writeln("									<\/SCRIPT><\/td>");
document.writeln("          <td width=\"18%\"><input type=\"image\" src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/s002.gif\" width=\"103\" height=\"22\" border=\"0\"><\/td>");
document.writeln("        <\/tr>");
document.writeln("        <tr>");
document.writeln("          <td height=\"19\" colspan=\"2\" class=\"H1c\"><span class=\"teH1c\">热门搜索:&nbsp;<A href=\"http:\/\/merchant.ding9.com\/member\/merchant-list.do?key=MP3\" target=\"_blank\" class=\"teH1\">MP3<\/A> <A href=\"http:\/\/merchant.ding9.com\/member\/merchant-list.do?key=数码\" target=\"_blank\" class=\"teH1\">数码<\/A> <A href=\"http:\/\/merchant.ding9.com\/member\/merchant-list.do?key=IT\" target=\"_blank\" class=\"teH1\">IT<\/A> <A href=\"http:\/\/merchant.ding9.com\/member\/merchant-list.do?key=手机\" target=\"_blank\" class=\"teH1\">手机<\/A> <A href=\"http:\/\/merchant.ding9.com\/member\/merchant-list.do?key=通讯\" target=\"_blank\" class=\"teH1\">通讯<\/A> <A href=\"http:\/\/merchant.ding9.com\/member\/merchant-list.do?key=移动\" target=\"_blank\" class=\"teH1\">移动<\/A><\/span><\/td>");
document.writeln("          <\/tr><\/form>");
document.writeln("      <\/table><\/td>");
document.writeln("    <\/tr><\/tbody>");
document.writeln("		 <tbody  style=\"display:none;\">");
document.writeln("	<tr>");
document.writeln("      <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
document.writeln("      <form name=\"searchcheapcard\" action=\"http:\/\/search.ding9.com\/search.do\" method=\"post\" onSubmit=\"return other(this,\'cheapcard\')\" target=\"_blank\" >");
document.writeln("        <tr>");
document.writeln("          <td width=\"82%\" height=\"32\"><input name=\"key\" type=\"text\" class=\"teH4\" onblur=showSearch(this,1) onfocus=showSearch(this) value=\"输入关键字进行搜索\" size=\"60\"><\/td>");
document.writeln("          <td width=\"18%\"><input type=\"image\" src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/s003.gif\" width=\"103\" height=\"22\" border=\"0\"><\/td>");
document.writeln("        <\/tr>");
document.writeln("        <tr>");
document.writeln("          <td height=\"19\" colspan=\"2\" class=\"H1c\"><span class=\"teH1c\">热门搜索:&nbsp;<A href=\"http:\/\/search.ding9.com\/cheapcard.do?q=手机\" target=\"_blank\" class=\"teH1\">手机<\/A> <A href=\"http:\/\/search.ding9.com\/cheapcard.do?q=数码\" target=\"_blank\" class=\"teH1\">数码<\/A> <A href=\"http:\/\/search.ding9.com\/cheapcard.do?q=化妆\" target=\"_blank\" class=\"teH1\">化妆<\/A> <A href=\"http:\/\/search.ding9.com\/cheapcard.do?q=电脑\" target=\"_blank\" class=\"teH1\">电脑<\/A> <A href=\"http:\/\/search.ding9.com\/cheapcard.do?q=成人\" target=\"_blank\" class=\"teH1\">成人<\/A> <A href=\"http:\/\/search.ding9.com\/cheapcard.do?q=诺基亚\" target=\"_blank\" class=\"teH1\">诺基亚<\/A> <A href=\"http:\/\/search.ding9.com\/cheapcard.do?q=耳机\" target=\"_blank\" class=\"teH1\">耳机<\/A> <A href=\"http:\/\/search.ding9.com\/cheapcard.do?q=优惠券\" target=\"_blank\" class=\"teH1\">优惠券<\/A> <A href=\"http:\/\/search.ding9.com\/cheapcard.do?q=现金券\" target=\"_blank\" class=\"teH1\">现金券<\/A><\/span><\/td>");
document.writeln("          <\/tr><\/form>");
document.writeln("      <\/table><\/td>");
document.writeln("    <\/tr><\/tbody>");
document.writeln("	");
document.writeln("	");
document.writeln("  	 <tbody  style=\"display:none;\">");
document.writeln("	<tr>");
document.writeln("      <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
document.writeln("      <form name=\"searchpromotion\" action=\"http:\/\/search.ding9.com\/search.do\" method=\"post\" onSubmit=\"return other(this,\'promotion\')\" target=\"_blank\" >");
document.writeln("        <tr>");
document.writeln("          <td width=\"82%\" height=\"32\"><input name=\"key\" type=\"text\" class=\"teH4\" onblur=showSearch(this,1) onfocus=showSearch(this) value=\"输入关键字进行搜索\" size=\"60\"><\/td>");
document.writeln("          <td width=\"18%\"><input type=\"image\" src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/s004.gif\" width=\"103\" height=\"22\" border=\"0\"><\/td>");
document.writeln("        <\/tr>");
document.writeln("        <tr>");
document.writeln("          <td height=\"19\" colspan=\"2\" class=\"H1c\"><span class=\"teH1c\">热门搜索:&nbsp;<A href=\"http:\/\/search.ding9.com\/promotion.do?q=促销\" target=\"_blank\" class=\"teH1\">促销<\/A> <A href=\"http:\/\/search.ding9.com\/promotion.do?q=硬盘\" target=\"_blank\" class=\"teH1\">硬盘<\/A> <A href=\"http:\/\/search.ding9.com\/promotion.do?q=护理\" target=\"_blank\" class=\"teH1\">护理<\/A> <A href=\"http:\/\/search.ding9.com\/promotion.do?q=纤体\" target=\"_blank\" class=\"teH1\">纤体<\/A> <A href=\"http:\/\/search.ding9.com\/promotion.do?q=优惠\" target=\"_blank\" class=\"teH1\">优惠<\/A> <A href=\"http:\/\/search.ding9.com\/promotion.do?q=数码\" target=\"_blank\" class=\"teH1\">数码<\/A> <A href=\"http:\/\/search.ding9.com\/promotion.do?q=手机\" target=\"_blank\" class=\"teH1\">手机<\/A> <A href=\"http:\/\/search.ding9.com\/promotion.do?q=化妆品\" target=\"_blank\" class=\"teH1\">化妆品<\/A><\/span><\/td>");
document.writeln("          <\/tr><\/form>");
document.writeln("      <\/table><\/td>");
document.writeln("    <\/tr><\/tbody>");
document.writeln("	");
document.writeln("	");
document.writeln("  	 <tbody  style=\"display:none;\">");
document.writeln("	<tr>");
document.writeln("      <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
document.writeln("      <form name=\"searcharticle\" action=\"http:\/\/search.ding9.com\/search.do\" method=\"post\" onSubmit=\"return other(this,\'article\')\" target=\"_blank\" >");
document.writeln("        <tr>");
document.writeln("          <td width=\"82%\" height=\"32\"><input name=\"key\" type=\"text\" class=\"teH4\" onblur=showSearch(this,1) onfocus=showSearch(this) value=\"输入关键字进行搜索\" size=\"60\"><\/td>");
document.writeln("          <td width=\"18%\"><input type=\"image\" src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/s005.gif\" width=\"103\" height=\"22\" border=\"0\"><\/td>");
document.writeln("        <\/tr>");
document.writeln("        <tr>");
document.writeln("          <td height=\"19\" colspan=\"2\" class=\"H1c\"><span class=\"teH1c\">热门搜索:&nbsp;<A href=\"http:\/\/search.ding9.com\/article.do?q=手机\" target=\"_blank\" class=\"teH1\">手机<\/A> <A href=\"http:\/\/search.ding9.com\/article.do?q=笔记本\" target=\"_blank\" class=\"teH1\">笔记本<\/A> <A href=\"http:\/\/search.ding9.com\/article.do?q=美白\" target=\"_blank\" class=\"teH1\">美白<\/A> <A href=\"http:\/\/search.ding9.com\/article.do?q=数码相机\" target=\"_blank\" class=\"teH1\">数码相机<\/A> <A href=\"http:\/\/search.ding9.com\/article.do?q=MP3\" target=\"_blank\" class=\"teH1\">MP3<\/A><\/span><\/td>");
document.writeln("          <\/tr><\/form>");
document.writeln("      <\/table><\/td>");
document.writeln("    <\/tr><\/tbody>");
document.writeln("	");
document.writeln("	");
document.writeln("  	 <tbody  style=\"display:none;\">");
document.writeln("	<tr>");
document.writeln("      <td><table width=\"100%\" border=\"0\" cellspacing=\"0\" cellpadding=\"0\">");
document.writeln("       <form name=\"searchcomment\" action=\"http:\/\/search.ding9.com\/search.do\" method=\"post\" onsubmit=\"return srccomment(this,\'comment\')\" target=\"_blank\" >");
document.writeln("        <tr>");
document.writeln("          <td width=\"82%\" height=\"32\"><input name=\"key\" type=\"text\" class=\"teH4\" onblur=showSearch(this,1) onfocus=showSearch(this) value=\"输入关键字进行搜索\" size=\"46\">");
document.writeln("              <select name=\"select\"  class=\"teH1\" >");
document.writeln("                      <option selected>所有类别<\/option>");
document.writeln("                      <option value=\"1\" >数码\/电子<\/option>");
document.writeln("                      <option value=\"4\">成人用品<\/option>");
document.writeln("                      <option value=\"6\">手机\/通讯<\/option>");
document.writeln("                      <option value=\"7\" >电脑\/网络<\/option>");
document.writeln("                      <option value=\"8\">美容美体<\/option>");
document.writeln("                      <option value=\"12\">家用电器<\/option>");
document.writeln("                      <option value=\"15\">办公用品<\/option>");
document.writeln("                  <\/select>      <\/td>");
document.writeln("          <td width=\"18%\"><input type=\"image\" src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/s006.gif\" width=\"103\" height=\"22\" border=\"0\"><\/td>");
document.writeln("        <\/tr>");
document.writeln("        <tr>");
document.writeln("          <td height=\"19\" colspan=\"2\" class=\"H1c\"><span class=\"teH1c\">热门搜索:&nbsp;<A href=\"http:\/\/search.ding9.com\/comment.do?q=N73\" target=\"_blank\" class=\"teH1\">N73<\/A> <A href=\"http:\/\/search.ding9.com\/comment.do?q=摩托罗拉\" target=\"_blank\" class=\"teH1\">摩托罗拉<\/A> <A href=\"http:\/\/search.ding9.com\/comment.do?q=PDA\" target=\"_blank\" class=\"teH1\">PDA<\/A> <A href=\"http:\/\/search.ding9.com\/comment.do?q=丰胸\" target=\"_blank\" class=\"teH1\">丰胸<\/A> <A href=\"http:\/\/search.ding9.com\/comment.do?q=彩妆\" target=\"_blank\" class=\"teH1\">彩妆<\/A><\/span><\/td>");
document.writeln("          <\/tr>");
document.writeln("      <\/table><\/td>");
document.writeln("    <\/tr><\/tbody>");
document.writeln("	");
document.writeln("	");
document.writeln("  ");
document.writeln("	");
document.writeln("	");
document.writeln("  <\/table>");
document.writeln("  <\/div>");
document.writeln("<!--c01m2-->");
document.writeln("<div id=\"top002_r\"><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/top003.gif\" width=\"49\" height=\"108\"><\/div>");
document.writeln("<\/div><!--c01-->");
document.writeln("");
document.writeln("<div id=\"menu01\">");
document.writeln("<div id=\"menu01_l\"><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/menu\/menu001.gif\" width=\"8\" height=\"26\"><\/div>");
document.writeln("<div id=\"menu01_1\"><a href=\"http:\/\/guide.ding9.com\" target=\"_top\" class=\"teH1\">首   页<\/a><\/div>");
document.writeln("<div id=\"menu01_2\"><a href=\"http:\/\/mobile.ding9.com\" target=\"_top\" class=\"teH1\">手机通信<\/a><\/div>");
document.writeln("<div id=\"menu01_3\"><a href=\"http:\/\/digital.ding9.com\" target=\"_top\" class=\"teH1\">数码电子<\/a><\/div>");
document.writeln("<div id=\"menu01_4\"><a href=\"http:\/\/computer.ding9.com\" target=\"_top\" class=\"teH1\">电脑网络<\/a><\/div>");
document.writeln("<div id=\"menu01_5\"><a href=\"http:\/\/office.ding9.com\" target=\"_top\" class=\"teH1\">办公用品<\/a><\/div>");
document.writeln("<div id=\"menu01_6\"><a href=\"http:\/\/hea.ding9.com\" target=\"_top\" class=\"teH1\">家用电器<\/a><\/div>");
document.writeln("<div id=\"menu01_7\"><a href=\"http:\/\/beauty.ding9.com\" target=\"_top\" class=\"teH1\">美容美体<\/a><\/div>");
document.writeln("<div id=\"menu01_8\"><a href=\"http:\/\/love.ding9.com\" target=\"_top\" class=\"teH1\">成人用品<\/a><\/div>");
document.writeln("<div class=\"teH1\" id=\"menu01_m\"><a class=\"teH1\">优惠在线<\/a><\/div>");
document.writeln("<div id=\"menu_12\"><a href=\"http:\/\/search.ding9.com\" class=\"H2\" target=\"_top\"><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/gj.gif\" width=\"50\" height=\"18\" border=\"0\"><\/a><\/div>");
document.writeln("<div id=\"menu01_13\" onMouseOver=\"MM_showHideLayers(\'Layer2\',\'\',\'show\')\" ");
document.writeln("    onmouseout=\"MM_showHideLayers(\'Layer2\',\'\',\'hide\')\" vAlign=center ");
document.writeln("    align=middle width=61><a class=\"teH1\">更多 <\/a><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/arrow_022.gif\" width=\"8\" height=\"8\" border=\"0\"><\/div>");
document.writeln("<div id=\"menu_r\"><img src=\"http:\/\/guide.ding9.com\/cooperate\/coopjs\/teimages\/menu\/menu004.gif\" width=\"8\" height=\"26\"><\/div>");
document.writeln("");
document.writeln("");
document.writeln("<\/div><!--menu-->");
document.writeln("<DIV id=Layer1 ");
document.writeln("      style=\"Z-INDEX: 1; WIDTH: 72px; POSITION: absolute; HEIGHT: 23px; \">");
document.writeln("  <DIV id=Layer2 onMouseOver=\"MM_showHideLayers(\'Layer2\',\'\',\'show\')\" ");
document.writeln("      style=\"Z-INDEX: 1; LEFT: 758px; VISIBILITY: hidden; WIDTH: 72px; POSITION: absolute; TOP: -2px; HEIGHT: 61px\" ");
document.writeln("      onmouseout=\"MM_showHideLayers(\'Layer2\',\'\',\'hide\')\">");
document.writeln("    <TABLE width=\"100%\" ");
document.writeln("        border=0 cellPadding=0 cellSpacing=1 bgColor=#CCCCCC >");
document.writeln("      <TBODY>");
document.writeln("        <TR>");
document.writeln("          <TD height=\"25\" class=service onMouseOver=\"this.className=\'service-blank\'\" ");
document.writeln("          onmouseout=\"this.className=\'service\'\" bgColor=#F7FBFD><A ");
document.writeln("            href=\"http:\/\/gz.shoplocal.ding9.com\" target=\"_blank\" class=\"teH2\">&nbsp;我爱逛街<\/A><\/TD><\/TR>");
document.writeln("");
document.writeln("	<TR>");
document.writeln("        <TD height=\"25\" class=service onMouseOver=\"this.className=\'service-blank\'\" ");
document.writeln("          onmouseout=\"this.className=\'service\'\" bgColor=#F7FBFD><a ");
document.writeln("		  href=\"http:\/\/promotion.ding9.com\" target=\"_blank\" class=\"teH1\">&nbsp;促销折扣<\/a><\/TD>");
document.writeln("        <\/TR>");
document.writeln("");
document.writeln("        <TR>");
document.writeln("          <TD height=\"25\" class=service onMouseOver=\"this.className=\'service-blank\'\" ");
document.writeln("          onmouseout=\"this.className=\'service\'\" bgColor=#F7FBFD><A ");
document.writeln("            href=\"http:\/\/carcv.ding9.com\" target=\"_blank\" class=\"teH1\">&nbsp;二手车<\/A><\/TD><\/TR>");
document.writeln("");
document.writeln("	<TR>");
document.writeln("        <TD height=\"25\" class=service onMouseOver=\"this.className=\'service-blank\'\" ");
document.writeln("          onmouseout=\"this.className=\'service\'\" bgColor=#F7FBFD><A ");
document.writeln("            href=\"http:\/\/merchant.ding9.com\" target=\"_blank\" class=\"teH1\">&nbsp;顶九商家<\/A><\/TD>");
document.writeln("        <\/TR>");
document.writeln("");
document.writeln("        <TR>");
document.writeln("          <TD height=\"25\" class=service onMouseOver=\"this.className=\'service-blank\'\" ");
document.writeln("          onmouseout=\"this.className=\'service\'\" bgColor=#F7FBFD><A ");
document.writeln("            href=\"http:\/\/coupon.ding9.com\" class=\"teH1\">&nbsp;优惠券<\/A><\/TD><\/TR>");
document.writeln("          <TR>");
document.writeln("	<TD height=\"25\" class=service onMouseOver=\"this.className=\'service-blank\'\" ");
document.writeln("          onmouseout=\"this.className=\'service\'\" bgColor=#F7FBFD><A ");
document.writeln("            href=\"http:\/\/www.smartclub.com.cn\/sp_channel\/index.asp?site=ding9\" target=\"_blank\" class=\"teH1\">&nbsp;积分奖励<\/A><\/TD>");
document.writeln("        <\/TR>");
document.writeln("");
document.writeln("  <\/TBODY>");
document.writeln("    <\/TABLE>");
document.writeln("  <\/DIV>");
document.writeln("<\/DIV>");
document.writeln("<!--c02-->");
document.writeln("<div id=\"c03\">");
document.writeln("  <!--c03_l-->");
document.writeln("  <!--c03_r-->");
document.writeln("<\/div>");
document.writeln("<!--c03-->");
document.writeln("");
document.writeln("<\/body>");
document.writeln("<\/html>");
document.writeln("")
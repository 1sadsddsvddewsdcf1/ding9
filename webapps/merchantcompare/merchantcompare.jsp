<%@page contentType="text/html;charset=gbk" import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ page import="com.ding9.util.UrlRewriteManager,com.ding9.util.Environment"%>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>



<head>
<title>顶九网: 购物搜索,一个顶九! 顶九购物搜索信息平台  guide.ding9.com</title> <META NAME="description" CONTENT="首页关键内容中国最好、最强、产品最多的比较购物平台，让您享受省时、省力、省钱、省心的购物环境，真正做到货比多家，购买到最好、最便宜的商品，体验比较购物的无限乐趣。"> <META NAME="keywords" CONTENT="首页关键词比较 购物 网站 价格 商家 商品 产品 品牌 购物网站 比较购物 在线购物 比较价格 商家比较  产品评价 商家评价 ding9.com 计算机 数码电子 办公设备 通讯 汽车 成人用品 家用电器 化妆品 音像"><META NAME="Author" CONTENT="顶九网"> <META NAME="Subject" CONTENT="顶九网 ding9网 ding9 顶九 ding9wang  比较 购物 省钱 便宜 商家 指南"><META NAME="Robots" CONTENT="all"><META NAME="copyright" CONTENT="ding9.com">
<meta http-equiv="Content-Type" content="text/html; charset=gbk" />
<link href="../css/_cm_tefont.css" rel="stylesheet" type="text/css">
<link href="../css/_cm_te.css" rel="stylesheet" type="text/css">
<link href="../css/_cm_fzfont.css" rel="stylesheet" type="text/css">
<link href="../css/_cm_fz.css" rel="stylesheet" type="text/css">
<link href="../css/_cm_nav.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="../js/fzcomment.js"></script>
<script type="text/javascript" src="../js/tecomment.js"></script>


<style type="text/css">
<!--
.input11 {font-family: verdana;background-color: #EEEEEE;border-bottom: #FFFFFF 1px solid;border-left: #CCCCCC 1px solid;border-right: #FFFFFF 1px solid;border-top: #CCCCCC 1px solid;font-size: 12px;
}
.input11 {font-family: verdana;background-color: #EEEEEE;border-bottom: #FFFFFF 1px solid;border-left: #CCCCCC 1px solid;border-right: #FFFFFF 1px solid;border-top: #CCCCCC 1px solid;font-size: 12px;
}
.input111 {font-family: verdana;background-color: #EEEEEE;border-bottom: #FFFFFF 1px solid;border-left: #CCCCCC 1px solid;border-right: #FFFFFF 1px solid;border-top: #CCCCCC 1px solid;font-size: 12px;
}
.input111 {font-family: verdana;background-color: #EEEEEE;border-bottom: #FFFFFF 1px solid;border-left: #CCCCCC 1px solid;border-right: #FFFFFF 1px solid;border-top: #CCCCCC 1px solid;font-size: 12px;
}
-->
</style>


<script language="javascript">

  function pay(fm) {
  fm.submit();
  }

  </script>



</head>

<body>
<center>
<div id="top">
<div id="top_1"><img src="teimages/log03.gif" width="13" height="13"><a href="#" class="teH1"> 帮助</a></div>
<div id="top_2"><img src="teimages/log02.gif" width="13" height="13"><span class="teH1"><a href="#" class="teH1"> 商家登录</a>/<a href="#" class="teH1">注册</a></span></div>
<div id="top_3"><img src="teimages/log01.gif" width="13" height="13"><span class="teH1"><a href="#" class="teH1"> 用户登录</a>/<a href="#" class="teH1">注册</a></span></div>
</div><!--top-->

<div id="top001">
<div id="top001_l"><a href="http://guide.ding9.com"><img src="teimages/logo.gif" width="192" height="108" border="0"></a></div>
<div id="top001_m1"><img src="teimages/top001.gif" width="33" height="108"></div>
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
        <tr>
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="输入关键字进行搜索" size="54">
              <select name="select" class="teH1">
                <option>所在类别</option>
              </select>          </td>
          <td width="18%"><a href="#"><img src="teimages/s001.gif" width="103" height="22" border="0"></a></td>
        </tr>
        <tr>
          <td height="19" colspan="2" class="teH1c">热门搜索:&nbsp;<a href="#" class="teH1">诺基亚</a> <a href="#" class="teH1">索尼爱立信</a> <a href="#" class="teH1">三星</a> <a href="#" class="teH1">苹果</a> <a href="#" class="teH1">索尼</a> <a href="#" class="teH1">兰蔻</a> <a href="#" class="teH1">剃须刀</a> <a href="#" class="teH1">美容</a></td>
          </tr>
      </table></td>
    </tr></tbody>


   <tbody  style="display:none;">
  <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="输入关键字进行搜索" size="40">
              <select name="select" class="teH1">
                <option>所在省份</option>
              </select>
              <select name="select2" class="teH1">
                <option>所在城市</option>
                    </select></td>
          <td width="18%"><a href="#"><img src="teimages/s002.gif" width="103" height="22" border="0"></a></td>
        </tr>
        <tr>
          <td height="19" colspan="2" class="teH1c">&nbsp;</td>
          </tr>
      </table></td>
    </tr></tbody>
     <tbody  style="display:none;">
  <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="输入关键字进行搜索" size="68"></td>
          <td width="18%"><a href="#"><img src="teimages/s003.gif" width="103" height="22" border="0"></a></td>
        </tr>
        <tr>
          <td height="19" colspan="2" class="teH1c">&nbsp;</td>
          </tr>
      </table></td>
    </tr></tbody>


     <tbody  style="display:none;">
  <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="输入关键字进行搜索" size="68"></td>
          <td width="18%"><a href="#"><img src="teimages/s004.gif" width="103" height="22" border="0"></a></td>
        </tr>
        <tr>
          <td height="19" colspan="2" class="teH1c">&nbsp;</td>
          </tr>
      </table></td>
    </tr></tbody>


     <tbody  style="display:none;">
  <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="82%" height="32"><input name="textfield3" type="text" class="teH4" value="输入关键字进行搜索" size="68"></td>
          <td width="18%"><a href="#"><img src="teimages/s005.gif" width="103" height="22" border="0"></a></td>
        </tr>
        <tr>
          <td height="19" colspan="2" class="teH1c">&nbsp;</td>
          </tr>
      </table></td>
    </tr></tbody>


     <tbody  style="display:none;">
  <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="输入关键字进行搜索" size="54">
              <select name="select" class="teH1">
                <option>所在类别</option>
              </select>          </td>
          <td width="18%"><a href="#"><img src="teimages/s006.gif" width="103" height="22" border="0"></a></td>
        </tr>
        <tr>
          <td height="19" colspan="2" class="teH1c">&nbsp;</td>
          </tr>
      </table></td>
    </tr></tbody>





  </table>
  </div>
<!--top001m2-->
<div id="top001_r"><img src="teimages/top003.gif" width="49" height="108"></div>
</div><!--top001-->

<div id="menu">
<div id="menu_l"><img src="teimages/menu001.gif" width="8" height="26"></div>
<div class="teH1" id="menu_m">首   页</div>
<div id="menu_2"><a href="#" class="teH1">手机通信</a></div>
<div id="menu_3"><a href="#" class="teH1">数码电子</a></div>
<div id="menu_4"><a href="#" class="teH1">电脑网络</a></div>
<div id="menu_5"><a href="#" class="teH1">办公用品</a></div>
<div id="menu_6"><a href="#" class="teH1">家用电器</a></div>
<div id="menu_7"><a href="#" class="teH1">美容美体</a></div>
<div id="menu_8"><a href="#" class="teH1">优惠券</a></div>
<div id="menu_9"><a href="#" class="teH1">服装服饰</a></div>
<div id="menu_10"><a href="#" class="teH1">精品饰品</a></div>
<div id="menu_12"><a href="#" class="H2"></a><a href="#"><img src="teimages/gj.gif" width="50" height="18" border="0"></a></div>
<div id="menu_11"><a href="#" class="teH1">二手车</a></div>
<div id="menu_13" onMouseOver="MM_showHideLayers('Layer2','','show')"
    onmouseout="MM_showHideLayers('Layer2','','hide')" vAlign=center
    align=middle width=72><a class="teH1">更多 </a><img src="teimages/arrow_022.gif" width="8" height="8" border="0"></div>
<div id="menu_r"><img src="teimages/menu004.gif" width="8" height="26"></div>


</div><!--menu-->
<DIV id=Layer1
      style="Z-INDEX: 1; WIDTH: 72px; POSITION: absolute; HEIGHT: 23px; ">
      <DIV id=Layer2 onMouseOver="MM_showHideLayers('Layer2','','show')"
      style="Z-INDEX: 1; LEFT: 828px; VISIBILITY: hidden; WIDTH: 72px; POSITION: absolute; TOP: -2px; HEIGHT: 61px"
      onmouseout="MM_showHideLayers('Layer2','','hide')">
      <TABLE width="100%"
        border=0 cellPadding=0 cellSpacing=1 bgColor=#CCCCCC >
        <TBODY>
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="#" class="teH1">&nbsp;促销折扣</A></TD></TR>
        <TR>
          <TD height="25" class=service onMouseOver="this.className='service-blank'"
          onmouseout="this.className='service'" bgColor=#F7FBFD><A
            href="#" class="teH1">&nbsp;顶九商家</A></TD>
        </TR>
<%--
        <TR>
          <TD height="25" class=service onMouseOver="this.className='service-blank'"
          onmouseout="this.className='service'" bgColor=#F7FBFD><A
            href="#" class="teH1">&nbsp;优惠在线</A></TD>
        </TR>
--%>
        <TR>
          <TD height="25" class=service onMouseOver="this.className='service-blank'"
          onmouseout="this.className='service'" bgColor=#F7FBFD><A
            href="#" class="teH1">&nbsp;积分奖励</A></TD>
        </TR>
  </TBODY></TABLE></DIV></DIV>

<div id="fz001">
<div id="fz001_l"><a href="#"><img src="../images/fz/ad/20061112231107.gif" border="0"></a>
  <span class="fzH1"><a href="#" class="fzH1">首页</a> >　<a href="#" class="fzH1">手机通信</a> > <a href="#" class="fzH1">手机</a> > 诺基亚 </span>
<div id="fz009">
<div id="fz009_l"><a href="#"><img src="../images/fz/ad/sp.gif" width="94" height="126" border="0"></a><br>
  <br>
  <img src="../images/fz/4_20.gif" width="24" height="25"><A href="#" class="fzH5c">放大</A><img src="../images/fz/4_20_1.gif" width="23" height="25"><A href="#" class="fzH5c">收藏</A></div>
<!--fz009_l-->
<div id="fz009_r">
<div class="fz100_12"><span class="fzH1">摩托 E1000</span></div>
<div id="fz010">
<div id="fz010_l">
<div class="fzd005">
                            <ul>
                              <Li class="fzH1"><span class="fzH1c">品&nbsp;&nbsp;&nbsp;&nbsp;牌：</span>摩托<br />
                              </Li>
                              <Li class="fzH1"><span class="fzH1c">上市时间：</span>2006&nbsp;&nbsp;<span class="fzH1c">网络制式：</span>GSM<br />
                              </Li>
                              <li class="fzH1"><span class="fzH1c">价格范围：</span><span class="H6">￥1450.00</span> 元起，来自 <span class="H6">5</span> 个商家 <br />
                              </li>
                              <li class="fzH1"><span class="fzH1c">产品描述：</span>高精晰液晶电视凌驾于世的非凡视觉体验*数字新头脑+ 芯片，缔造非凡的精晰画质表现*色彩自然 3D色彩管理系统*层次生动 自然边缘优化系统*线条流畅   数字动画斜方向修正系统*画质纯净 3D数字梳状滤波.&nbsp;&nbsp;<a href="#" class="fzH6">更多...</a></li>
                          </ul>
              </div>

</div><!--fz010_l-->
<div id="fz010_r"><span class="fzH1">产品星级：<img src="../images/ss/sj5.gif" width="65" height="12" /><br />
  <br />
用户评论（<a href="#" class="fzH6">10</a>）<br />
<br />
<a href="#" class="fzH8c">发表评论</a></span></div>
<!--fz010_r-->
</div><!--fz010-->
</div><!--fz009_r-->
</div><!--fz009-->

<div class="fz100_4">
  <table height="23"  border="0"  cellpadding="0"  cellspacing="0"  id="fzsecTable">
    <tr>
      <td  width="80" height="23" align="center" valign="middle"  class="fz2"  onclick="fzsecBoard(0)">国内商家</td>
      <td  width="80" align="center" valign="middle"  class="fz1"  onclick="fzsecBoard(1)">产品详情</td>
      <td  width="80" align="center"  class="fz1"  onclick="fzsecBoard(2)">产品点评</td>
      <td  width="80" align="center"  class="fz1"  onclick="fzsecBoard(3)">相关资讯</td>
      <td  width="80" align="center"  class="fz1"  onclick="fzsecBoard(4)">促销信息</td>
    </tr>
  </table>
</div>
<!--fz100_4-->
    <div class="fz100_13">
    <div id="fz011">
    <div id="fz011_l"><span class="fzH1">共有<span class="fzH6c">10</span>个商家销售 摩托 E1000</span></div>
    <div id="fz011_m">
<html:form method="post" styleId="f1" action="/merchantcompare/merchantcompare.do">
<span class="fzH1">支付方式：
        <select name="payment" class="fzH1" onchange="pay(this.form);">
          <option value="0">不限... </option>
            <c:forEach items="${payment}"  var="item" begin="0" step="1" varStatus="var">
                    <option value="${item}" <c:if test="${item==mcForm.payment}"><c:out value="selected" /></c:if>/>${item}</option>
            </c:forEach>
        </select>

</span>
</html:form>

        </div>
     <div id="fz011_r"> <a href="http://merchant.ding9.com/login.html" class="fzH6">发布我的商品</a></div>
    </div><!--fz011--></div><!--fz100_13-->
     <div class="fz100_14"><span class="fzH1c">【商家详细介绍】</span></div>
     <div id="fz012">
       <div id="fz012_2"><span class="fzH1">商家/Logo</span></div>
     <div id="fz012_3"><span class="fzH1">信用度 </span><a href="merchantcompare.do?sort=203"><img src="../images/ss/4_37.gif" alt="按信用度从低到高排序" width="13" height="15" border="0"></a><a href="merchantcompare.do?sort=204"><img src="../images/ss/4_39.gif" alt="按信用度从高到低排序" width="13" height="15" border="0"></a></div>
     <div id="fz012_4">

<html:form method="post" styleId="f2" action="/merchantcompare/merchantcompare.do">


        <select name="area" class="fzH1" onchange="pay(this.form);">
          <option value="0">商家所在地</option>
            <c:forEach items="${area}"  var="item" begin="0" step="1" varStatus="var">
                    <option value="${item}" <c:if test="${item==mcForm.area}"><c:out value="selected" /></c:if>/>${item}</option>
            </c:forEach>
        </select>
        </html:form>



     </div>
     <div id="fz012_5"><span class="fzH1">联系方式</span></div>
     <div id="fz012_6"><span class="fzH1">价格</span><span class="fzH1"> </span><a href="merchantcompare.do?sort=201"><img src="../images/ss/4_37.gif" alt="按价格从低到高排序" width="13" height="15" border="0"></a><a href="merchantcompare.do?sort=202"><img src="../images/ss/4_39.gif" alt="按价格从高到低排序" width="13" height="15" border="0"></a></div>
     </div><!--fz012-->

    <div class="fzd007">
    <ul>

<logic:present name="mpList">
<logic:iterate name="mpList" id="prod_info" indexId="index">
<bean:define id="Lprma_id" name='prod_info' property="prmaId" type="java.lang.Integer"/>

    <li>
         <span class="n2">
            <a  href="http://merchant.ding9.local/member/merchant----,44835.htm" class="fzH8c">
            <logic:notEqual value="" name="prod_info" property="mesh_logo">
            <img  alt="商家名称:<bean:write name="prod_info" property="mesh_logo"/>，商家电话" src="<bean:write name="prod_info" property="mesh_logo"/>"  width="111" height="43" border="0">
            <img  alt="<bean:write name="prod_info" filter="false" property="merc_com_name"/>" src="<bean:write name="prod_info" filter="false" property="product_pic"/>"  width="111" height="43" border="0">
            </logic:notEqual>

            <logic:equal value="" name="prod_info" property="mesh_logo">
          <span class="fzH1"><bean:write name="prod_info" filter="false" property="merc_com_name"/></span>
            </logic:equal>


            </a>
            </span><span class="n3"><img src="../images/ss/happy.gif" width="24" height="23" /><BR>
               <a href="http://merchant.ding9.local/member/merchant-talk----,44835----,.htm" class="fzH6" >(<bean:write name="prod_info" filter="false" property="comments_cnt"/>条评论)</a></span><span class="n4"><span class="fzH1"><bean:write name="prod_info" filter="false" property="merc_province"/>·<bean:write name="prod_info" filter="false" property="merc_city"/></span></span><span class="n5"><A
                                href="http://merchant.ding9.local/member/merchant-info----,44835.htm"
                                target=_blank><IMG height=16
                                alt=086-010-58730268
                                src="../images/ss/phone.gif"
                                width=14 border=0></A> <A
                                href="http://merchant.ding9.local/member/merchant-info----,44835.htm"
                                target=_blank><IMG height=16 alt=8IT001@163.com
                                src="../images/ss/email.gif"
                                width=14 border=0></A></span><span class="n6"><span class="fzH1c"><bean:write name="prod_info" filter="false" property="meprPrice"/></span></span><span class="n7"><A
                                href="http://office.ding9.local/click/merchant-click.do?merc_id=44835&amp;prma_id=3640"
                                target=_blank><img src="../images/ss/4_49.gif" width="85" height="28" border="0" />
           </A>
        </span>
    </li>

</logic:iterate>
</logic:present>

    </ul>
    <div class="fz100_15"><a href="#" class="fzH8c">点击查看全部 <span class="fzH6c">25</span> 个商家报价(￥2000.00-￥3000.00)</a></div>
    </div><!--fzd007--> 

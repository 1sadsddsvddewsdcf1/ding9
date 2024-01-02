<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<html>
<head>
<title>顶九网: 购物搜索,一个顶九! 顶九购物搜索信息平台  guide.ding9.com</title> <META NAME="description" CONTENT="首页关键内容中国最好、最强、产品最多的比较购物平台，让您享受省时、省力、省钱、省心的购物环境，真正做到货比多家，购买到最好、最便宜的商品，体验比较购物的无限乐趣。"> <META NAME="keywords" CONTENT="首页关键词比较 购物 网站 价格 商家 商品 产品 品牌 购物网站 比较购物 在线购物 比较价格 商家比较  产品评价 商家评价 ding9.com 计算机 数码电子 办公设备 通讯 汽车 成人用品 家用电器 化妆品 音像"><META NAME="Author" CONTENT="顶九网"> <META NAME="Subject" CONTENT="顶九网 ding9网 ding9 顶九 ding9wang  比较 购物 省钱 便宜 商家 指南"><META NAME="Robots" CONTENT="all"><META NAME="copyright" CONTENT="ding9.com">
<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
<link href="/css/font.css" rel="stylesheet" type="text/css">
<link href="/css/css.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/comment.js"></script>
<script type="text/javascript" src="js/domove.js"></script>
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
<div class="div12">
<ul>
<li><a href="<c:url value="/switch.do?msg=search"/>" class="H6c">首页</a></li>
<li><a href="<c:url value="/switch.do?msg=sservice"/>" class="H6c">服务介绍</a></li>
<li><a href="<c:url value="/switch.do?msg=squestion"/>" class="H6c">常见问题</a></li>
<li><a href="<c:url value="/media.do"/>" class="H6c" target="_blank">媒体报道</a></li>
<li><a href="<c:url value="/switch.do?msg=spricecenter"/>" class="H5c">代理中心</a></li>
<li><a href="<c:url value="/switch.do?msg=scontact"/>" class="H6c">联系我们</a></li>
<li><a href="<c:url value="/switch.do?msg=spricequery"/>" class="H6c">竞价查询</a></li>
</ul>
</div><!--div12-->
<br>
<div class="con900"><!--s001-->
<div class="s001">
<div class="s002"><span class="f02l">加盟代理</span></div>
<div class="s004"><span class="f02">欢迎您加盟顶九代理，和我们一起发展</span><br>
  <span class="H1">只要您的企业具备法人资格，您就可成为顶九推广服务的代理商。 请在下表的 “代理业务”中说明您有意代理的产品，如</span><span class="H2">商品竞价排名</span><span class="H1">、</span><span class="H2">文字广告竞价排名</span><span class="H1">等产品。与互联网同步，与时代同步，与顶九同步，您就是专业搜索引擎时代的百万富翁！谢谢与我们联系。<br>
  <br>
  </span>
  <TABLE class=f14
      style="PADDING-RIGHT: 0px; PADDING-LEFT: 20px; PADDING-BOTTOM: 0px; PADDING-TOP: 4px"
      cellSpacing=1 cellPadding=0 width="70%" align=center bgColor=#cccccc
      border=0>
    <FORM    method=post encType=text/plain>
      <TBODY>
        <TR>
          <TD width=151 bgColor=#f0f0f0 class="H1">代理业务：</TD>
          <TD width="465" bgColor=#ffffff class="H1"><INPUT name=Product disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">公司名称：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Company disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">联系人：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Contact disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">电话：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Tel disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">传真：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Fax disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">通讯地址：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Addr disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">邮编：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Postcode disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">E-mail：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Email disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">网址：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Website disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">主要业务地区：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Area disabled></TD>
        </TR>
        <TR>
          <TD bgColor=#f0f0f0 class="H1">现主营业务：</TD>
          <TD bgColor=#ffffff class="H1"><INPUT name=Mission disabled></TD>
        </TR>
        <TR>
          <TD vAlign=top bgColor=#f0f0f0 class="H1">推广此项业务的计划：</TD>
          <TD vAlign=top bgColor=#ffffff class="H1"><TEXTAREA name=Plan rows=5 wrap=VIRTUAL cols=24 disabled></TEXTAREA></TD>
        </TR>
        <TR>
          <TD height=35 colSpan=2 align=middle class="H1"><INPUT type=submit value="确 定" name=submit onclick="javascript:alert('抱歉，该功能暂时不能使用')">
              <INPUT type=reset value="清 除" name=reset disabled></TD>
        </TR>
      </FORM>
    </TABLE>
</div>
</div><!--s001-->


<div class="s001">
<div class="s002"><span class="f02l"> 区域政策</span></div>
<div class="s004"><span class="f02">1、名词解释</span><span class="H1"><br>
  1.1 区域政策―顶九公司针对不同区域的顶九推广服务代理商采取的限制跨区域销售、禁止争抢客户、鼓励代理商发展本地客户的政策；<br>
  1.2 封闭区域--只允许本地代理商销售顶九推广服务的区域，每月月底顶九公司更新封闭区域名单<br>
  1.3 未封闭区域--允许全国代理商销售顶九推广服务的区域。<br>
  <br>
  </span><span class="f02">2、政策规定</span><span class="H1"><br>
  代理商只允许在本地或未封闭区域销售顶九推广服务，如在异地封闭区域进行销售，顶九公司将进行处罚。 <br>
  <br>
  </span><span class="f02">3、违规认定依据</span><span class="H1"><br>
  代理商为客户提交顶九推广服务时，以广告客户注册地作为区域认定依据，如广告客户注册地属异地封闭区域，则判定该代理违规。<br>
  <br>
  </span><span class="f02">4、违规处罚措施</span><span class="H1"><br>
  4.1 每发现一次违规，直接从预付款中扣除1000元，如预付款金额不足则封闭其代理帐号，直至缴足罚款方给予开通，并在代理中心公布违规信息；<br>
  4.2 除以上措施，顶九公司有权根据具体情况决定是否撤销违规客户订单、释放订单占用广告位置资源。针对情节严重、影响恶劣的违规行为，顶九公司保留加重处罚措施直至取消其代理资格的权利。 </span></div>
</div>


</div>


</center>
    </body>
</html>

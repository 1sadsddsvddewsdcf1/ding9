<%@page contentType="text/html;charset=gbk" import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>
<%@ page import="com.ding9.util.UrlRewriteManager,com.ding9.util.Environment"%>

<%@ taglib uri="http://java.sun.com/jstl/core" prefix="c" %>



<head>
<title>������: ��������,һ������! ���Ź���������Ϣƽ̨  guide.ding9.com</title> <META NAME="description" CONTENT="��ҳ�ؼ������й���á���ǿ����Ʒ���ıȽϹ���ƽ̨����������ʡʱ��ʡ����ʡǮ��ʡ�ĵĹ��ﻷ���������������ȶ�ң�������á�����˵���Ʒ������ȽϹ����������Ȥ��"> <META NAME="keywords" CONTENT="��ҳ�ؼ��ʱȽ� ���� ��վ �۸� �̼� ��Ʒ ��Ʒ Ʒ�� ������վ �ȽϹ��� ���߹��� �Ƚϼ۸� �̼ұȽ�  ��Ʒ���� �̼����� ding9.com ����� ������� �칫�豸 ͨѶ ���� ������Ʒ ���õ��� ��ױƷ ����"><META NAME="Author" CONTENT="������"> <META NAME="Subject" CONTENT="������ ding9�� ding9 ���� ding9wang  �Ƚ� ���� ʡǮ ���� �̼� ָ��"><META NAME="Robots" CONTENT="all"><META NAME="copyright" CONTENT="ding9.com">
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
<div id="top_1"><img src="teimages/log03.gif" width="13" height="13"><a href="#" class="teH1"> ����</a></div>
<div id="top_2"><img src="teimages/log02.gif" width="13" height="13"><span class="teH1"><a href="#" class="teH1"> �̼ҵ�¼</a>/<a href="#" class="teH1">ע��</a></span></div>
<div id="top_3"><img src="teimages/log01.gif" width="13" height="13"><span class="teH1"><a href="#" class="teH1"> �û���¼</a>/<a href="#" class="teH1">ע��</a></span></div>
</div><!--top-->

<div id="top001">
<div id="top001_l"><a href="http://guide.ding9.com"><img src="teimages/logo.gif" width="192" height="108" border="0"></a></div>
<div id="top001_m1"><img src="teimages/top001.gif" width="33" height="108"></div>
<div id="top001_m2">
  <table width="100%" border="0" cellspacing="0" cellpadding="0" >
    <tr>
      <td align="center"><table width="310" border="0" cellpadding="0" cellspacing="0" id="tesecTable1">
        <tr>
          <td width="50" class="tesel03" onClick="tesecBoard1(0)">��Ʒ</td>
          <td width="50" class="tesel04" onClick="tesecBoard1(1)">�̼�</td>
          <td width="50" class="tesel04" onClick="tesecBoard1(2)">�Ż�</td>
          <td width="50" class="tesel04" onClick="tesecBoard1(3)">����</td>
          <td width="50" class="tesel04" onClick="tesecBoard1(4)">��Ѷ</td>
          <td width="50" class="tesel04" onClick="tesecBoard1(5)">����</td>
        </tr>
      </table></td>
    </tr>
  </table>
  <table width="85%" border="0" cellspacing="0" cellpadding="0" id="temainTable1">
    <tbody  style="display:block;">
  <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="����ؼ��ֽ�������" size="54">
              <select name="select" class="teH1">
                <option>�������</option>
              </select>          </td>
          <td width="18%"><a href="#"><img src="teimages/s001.gif" width="103" height="22" border="0"></a></td>
        </tr>
        <tr>
          <td height="19" colspan="2" class="teH1c">��������:&nbsp;<a href="#" class="teH1">ŵ����</a> <a href="#" class="teH1">���ᰮ����</a> <a href="#" class="teH1">����</a> <a href="#" class="teH1">ƻ��</a> <a href="#" class="teH1">����</a> <a href="#" class="teH1">��ޢ</a> <a href="#" class="teH1">���뵶</a> <a href="#" class="teH1">����</a></td>
          </tr>
      </table></td>
    </tr></tbody>


   <tbody  style="display:none;">
  <tr>
      <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
        <tr>
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="����ؼ��ֽ�������" size="40">
              <select name="select" class="teH1">
                <option>����ʡ��</option>
              </select>
              <select name="select2" class="teH1">
                <option>���ڳ���</option>
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
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="����ؼ��ֽ�������" size="68"></td>
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
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="����ؼ��ֽ�������" size="68"></td>
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
          <td width="82%" height="32"><input name="textfield3" type="text" class="teH4" value="����ؼ��ֽ�������" size="68"></td>
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
          <td width="82%" height="32"><input name="textfield" type="text" class="teH4" value="����ؼ��ֽ�������" size="54">
              <select name="select" class="teH1">
                <option>�������</option>
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
<div class="teH1" id="menu_m">��   ҳ</div>
<div id="menu_2"><a href="#" class="teH1">�ֻ�ͨ��</a></div>
<div id="menu_3"><a href="#" class="teH1">�������</a></div>
<div id="menu_4"><a href="#" class="teH1">��������</a></div>
<div id="menu_5"><a href="#" class="teH1">�칫��Ʒ</a></div>
<div id="menu_6"><a href="#" class="teH1">���õ���</a></div>
<div id="menu_7"><a href="#" class="teH1">��������</a></div>
<div id="menu_8"><a href="#" class="teH1">�Ż�ȯ</a></div>
<div id="menu_9"><a href="#" class="teH1">��װ����</a></div>
<div id="menu_10"><a href="#" class="teH1">��Ʒ��Ʒ</a></div>
<div id="menu_12"><a href="#" class="H2"></a><a href="#"><img src="teimages/gj.gif" width="50" height="18" border="0"></a></div>
<div id="menu_11"><a href="#" class="teH1">���ֳ�</a></div>
<div id="menu_13" onMouseOver="MM_showHideLayers('Layer2','','show')"
    onmouseout="MM_showHideLayers('Layer2','','hide')" vAlign=center
    align=middle width=72><a class="teH1">���� </a><img src="teimages/arrow_022.gif" width="8" height="8" border="0"></div>
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
<TR><TD height="25" class=service onMouseOver="this.className='service-blank'" onmouseout="this.className='service'" bgColor=#F7FBFD><A href="#" class="teH1">&nbsp;�����ۿ�</A></TD></TR>
        <TR>
          <TD height="25" class=service onMouseOver="this.className='service-blank'"
          onmouseout="this.className='service'" bgColor=#F7FBFD><A
            href="#" class="teH1">&nbsp;�����̼�</A></TD>
        </TR>
<%--
        <TR>
          <TD height="25" class=service onMouseOver="this.className='service-blank'"
          onmouseout="this.className='service'" bgColor=#F7FBFD><A
            href="#" class="teH1">&nbsp;�Ż�����</A></TD>
        </TR>
--%>
        <TR>
          <TD height="25" class=service onMouseOver="this.className='service-blank'"
          onmouseout="this.className='service'" bgColor=#F7FBFD><A
            href="#" class="teH1">&nbsp;���ֽ���</A></TD>
        </TR>
  </TBODY></TABLE></DIV></DIV>

<div id="fz001">
<div id="fz001_l"><a href="#"><img src="../images/fz/ad/20061112231107.gif" border="0"></a>
  <span class="fzH1"><a href="#" class="fzH1">��ҳ</a> >��<a href="#" class="fzH1">�ֻ�ͨ��</a> > <a href="#" class="fzH1">�ֻ�</a> > ŵ���� </span>
<div id="fz009">
<div id="fz009_l"><a href="#"><img src="../images/fz/ad/sp.gif" width="94" height="126" border="0"></a><br>
  <br>
  <img src="../images/fz/4_20.gif" width="24" height="25"><A href="#" class="fzH5c">�Ŵ�</A><img src="../images/fz/4_20_1.gif" width="23" height="25"><A href="#" class="fzH5c">�ղ�</A></div>
<!--fz009_l-->
<div id="fz009_r">
<div class="fz100_12"><span class="fzH1">Ħ�� E1000</span></div>
<div id="fz010">
<div id="fz010_l">
<div class="fzd005">
                            <ul>
                              <Li class="fzH1"><span class="fzH1c">Ʒ&nbsp;&nbsp;&nbsp;&nbsp;�ƣ�</span>Ħ��<br />
                              </Li>
                              <Li class="fzH1"><span class="fzH1c">����ʱ�䣺</span>2006&nbsp;&nbsp;<span class="fzH1c">������ʽ��</span>GSM<br />
                              </Li>
                              <li class="fzH1"><span class="fzH1c">�۸�Χ��</span><span class="H6">��1450.00</span> Ԫ������ <span class="H6">5</span> ���̼� <br />
                              </li>
                              <li class="fzH1"><span class="fzH1c">��Ʒ������</span>�߾���Һ��������������ķǷ��Ӿ�����*������ͷ��+ оƬ������Ƿ��ľ������ʱ���*ɫ����Ȼ 3Dɫ�ʹ���ϵͳ*������� ��Ȼ��Ե�Ż�ϵͳ*��������   ���ֶ���б��������ϵͳ*���ʴ��� 3D������״�˲�.&nbsp;&nbsp;<a href="#" class="fzH6">����...</a></li>
                          </ul>
              </div>

</div><!--fz010_l-->
<div id="fz010_r"><span class="fzH1">��Ʒ�Ǽ���<img src="../images/ss/sj5.gif" width="65" height="12" /><br />
  <br />
�û����ۣ�<a href="#" class="fzH6">10</a>��<br />
<br />
<a href="#" class="fzH8c">��������</a></span></div>
<!--fz010_r-->
</div><!--fz010-->
</div><!--fz009_r-->
</div><!--fz009-->

<div class="fz100_4">
  <table height="23"  border="0"  cellpadding="0"  cellspacing="0"  id="fzsecTable">
    <tr>
      <td  width="80" height="23" align="center" valign="middle"  class="fz2"  onclick="fzsecBoard(0)">�����̼�</td>
      <td  width="80" align="center" valign="middle"  class="fz1"  onclick="fzsecBoard(1)">��Ʒ����</td>
      <td  width="80" align="center"  class="fz1"  onclick="fzsecBoard(2)">��Ʒ����</td>
      <td  width="80" align="center"  class="fz1"  onclick="fzsecBoard(3)">�����Ѷ</td>
      <td  width="80" align="center"  class="fz1"  onclick="fzsecBoard(4)">������Ϣ</td>
    </tr>
  </table>
</div>
<!--fz100_4-->
    <div class="fz100_13">
    <div id="fz011">
    <div id="fz011_l"><span class="fzH1">����<span class="fzH6c">10</span>���̼����� Ħ�� E1000</span></div>
    <div id="fz011_m">
<html:form method="post" styleId="f1" action="/merchantcompare/merchantcompare.do">
<span class="fzH1">֧����ʽ��
        <select name="payment" class="fzH1" onchange="pay(this.form);">
          <option value="0">����... </option>
            <c:forEach items="${payment}"  var="item" begin="0" step="1" varStatus="var">
                    <option value="${item}" <c:if test="${item==mcForm.payment}"><c:out value="selected" /></c:if>/>${item}</option>
            </c:forEach>
        </select>

</span>
</html:form>

        </div>
     <div id="fz011_r"> <a href="http://merchant.ding9.com/login.html" class="fzH6">�����ҵ���Ʒ</a></div>
    </div><!--fz011--></div><!--fz100_13-->
     <div class="fz100_14"><span class="fzH1c">���̼���ϸ���ܡ�</span></div>
     <div id="fz012">
       <div id="fz012_2"><span class="fzH1">�̼�/Logo</span></div>
     <div id="fz012_3"><span class="fzH1">���ö� </span><a href="merchantcompare.do?sort=203"><img src="../images/ss/4_37.gif" alt="�����öȴӵ͵�������" width="13" height="15" border="0"></a><a href="merchantcompare.do?sort=204"><img src="../images/ss/4_39.gif" alt="�����öȴӸߵ�������" width="13" height="15" border="0"></a></div>
     <div id="fz012_4">

<html:form method="post" styleId="f2" action="/merchantcompare/merchantcompare.do">


        <select name="area" class="fzH1" onchange="pay(this.form);">
          <option value="0">�̼����ڵ�</option>
            <c:forEach items="${area}"  var="item" begin="0" step="1" varStatus="var">
                    <option value="${item}" <c:if test="${item==mcForm.area}"><c:out value="selected" /></c:if>/>${item}</option>
            </c:forEach>
        </select>
        </html:form>



     </div>
     <div id="fz012_5"><span class="fzH1">��ϵ��ʽ</span></div>
     <div id="fz012_6"><span class="fzH1">�۸�</span><span class="fzH1"> </span><a href="merchantcompare.do?sort=201"><img src="../images/ss/4_37.gif" alt="���۸�ӵ͵�������" width="13" height="15" border="0"></a><a href="merchantcompare.do?sort=202"><img src="../images/ss/4_39.gif" alt="���۸�Ӹߵ�������" width="13" height="15" border="0"></a></div>
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
            <img  alt="�̼�����:<bean:write name="prod_info" property="mesh_logo"/>���̼ҵ绰" src="<bean:write name="prod_info" property="mesh_logo"/>"  width="111" height="43" border="0">
            <img  alt="<bean:write name="prod_info" filter="false" property="merc_com_name"/>" src="<bean:write name="prod_info" filter="false" property="product_pic"/>"  width="111" height="43" border="0">
            </logic:notEqual>

            <logic:equal value="" name="prod_info" property="mesh_logo">
          <span class="fzH1"><bean:write name="prod_info" filter="false" property="merc_com_name"/></span>
            </logic:equal>


            </a>
            </span><span class="n3"><img src="../images/ss/happy.gif" width="24" height="23" /><BR>
               <a href="http://merchant.ding9.local/member/merchant-talk----,44835----,.htm" class="fzH6" >(<bean:write name="prod_info" filter="false" property="comments_cnt"/>������)</a></span><span class="n4"><span class="fzH1"><bean:write name="prod_info" filter="false" property="merc_province"/>��<bean:write name="prod_info" filter="false" property="merc_city"/></span></span><span class="n5"><A
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
    <div class="fz100_15"><a href="#" class="fzH8c">����鿴ȫ�� <span class="fzH6c">25</span> ���̼ұ���(��2000.00-��3000.00)</a></div>
    </div><!--fzd007--> 

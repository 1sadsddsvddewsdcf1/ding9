<%@page contentType="text/html;charset=gbk"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html"%>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean"%>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic"%>
<%@ taglib uri="/WEB-INF/c.tld" prefix="c"%>
<!--fz100_4-->
<a name="remark"></a><c:set var="items" value="${productlist}"/><c:choose><c:when test="${paracount>0}">
<div class="fz100_14"><span class="fzH5c">【产品参数】<span class="fzH1">（由顶九网和易比网联合提供）</span></span></div>
<table width="100%" border="0" cellspacing="0" cellpadding="0">
<tr>
<td height="46" valign="top"><a href="#"></a>
<TABLE width="700" height="26" cellPadding="0" cellSpacing="1" bgcolor="#E7E7E7">
<TBODY>
<c:forEach items="${ppara}" var="info" begin="0" step="1" varStatus="var">
<c:choose>
<c:when test="${info.Param_value.trim()!=''}">
<TR bgColor="#ffffff">
<TD width="23%" height=26 align="right" class="fzH1" ><c:out value="${info.Param_name}"/>&nbsp;&nbsp;</TD>
<TD width="77%" bgcolor="#ffffff" class="fzH1">&nbsp;&nbsp;<c:out value="${info.Param_value}"/> </TD>
</TR>
</c:when>
<c:otherwise></c:otherwise>
</c:choose>
</c:forEach>
</TBODY>
</TABLE></td>
</tr>
</table>
</c:when>
<c:otherwise></c:otherwise>
</c:choose>
<div class="fz100_14"><span class="fzH5c">【产品描述】</span></div>
<div class="fz100"><a class="fzH1"><c:out value="${items[0].prma_remark}"/> </a></div>

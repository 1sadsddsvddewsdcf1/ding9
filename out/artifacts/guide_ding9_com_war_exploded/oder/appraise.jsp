<%@page contentType="text/html;charset=GBK" import="java.util.*"%>
<%@ taglib uri="/WEB-INF/struts-html.tld" prefix="html" %>
<%@ taglib uri="/WEB-INF/struts-bean.tld" prefix="bean" %>
<%@ taglib uri="/WEB-INF/struts-logic.tld" prefix="logic" %>

<logic:present name="url">
  <bean:define id="url" name="url" type="String" />
</logic:present>
<logic:present name="msg">
<script language='javascript'>
  alert('验证码错误！');
  location.href='<%=url%>#AddContent';
</script>
</logic:present>
<script language='javascript'>
  alert('发表评论成功..');
  location.href='<%=url%>';
</script>
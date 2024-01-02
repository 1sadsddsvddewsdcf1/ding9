<%@page contentType="text/html;charset=GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<%@ page import="com.ding9.util.UrlRewriteManager" %>

<html>
<%response.sendRedirect(UrlRewriteManager.dynamic2static("/index.do"));%>
</html>
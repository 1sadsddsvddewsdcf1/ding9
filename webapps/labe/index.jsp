<%@page contentType="text/html;charset=GBK"%>
<%@ taglib uri="http://struts.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib uri="http://struts.apache.org/tags-bean" prefix="bean" %>
<%@ taglib uri="http://struts.apache.org/tags-html" prefix="html" %>
<%@ taglib uri="http://struts.apache.org/tags-logic" prefix="logic" %>

<tiles:insert definition="layout">
	<tiles:put name="content" value="/media/default.do?synt_id=3"></tiles:put>
</tiles:insert>
<?xml version="1.0" encoding="gb2312"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/dsp/result/domain/domain-listing/store-offers">
<xsl:param name="Keyword" />
<xsl:param name="Category" />
<xsl:param name="Mainword" />
<xsl:param name="TotalNum" />

<table width="98%" border="0" cellpadding="3" cellspacing="1" bgcolor="#CCCCCC">
<TR>
<TD height="18" colspan="2" background="images/sony-2_5.jpg" align="left"><font color="#AB0000">  �����ƷԼ��<xsl:value-of select="$TotalNum"/>���̼ҡ�</font></TD>

<TD height="18" colspan="2" background="images/sony-2_5.jpg" align="right"><strong>����</strong>: 
<a><xsl:attribute name="href">../frame/ShoppingSearch.asp?mainword=<xsl:value-of select="$Mainword"/>&amp;sort=name&amp;tp=1</xsl:attribute>������</a> | <a><xsl:attribute name="href">../frame/ShoppingSearch.asp?mainword=<xsl:value-of select="$Mainword"/>&amp;sort=price&amp;tp=1</xsl:attribute>���۸�</a> | </TD>
</TR>
<tr align="center"> 
  <td height="18" background="images/sony-2_5.jpg"><font color="#AB0000">�����̼�����</font></td>
  <td height="18" background="images/sony-2_5.jpg"><font color="#AB0000">�鿴��Ʒ��ϸ</font></td>
  <td height="18" background="images/sony-2_5.jpg"><font color="#AB0000">���</font></td>
  <td height="18" background="images/sony-2_5.jpg"><font color="#990000">�۸�(��Ԫ) 
    </font></td>
</tr>
<xsl:for-each select="store-offer">
<tr align="center" bgcolor="#FFFFFF"> 
  <td width="22%" height="50" align="center"><a target="_blank"><xsl:attribute name="onclick">javascript:ReachLog('<xsl:value-of select="offer-url"/>')</xsl:attribute><xsl:attribute name="href"><xsl:value-of select="offer-url"/></xsl:attribute><img border="0"><xsl:attribute name="src"><xsl:value-of select="store-logo"/></xsl:attribute></img></a></td>
  <td width="22%" height="50"><a target="_blank"><xsl:attribute name="onclick">javascript:ReachLog('<xsl:value-of select="offer-url"/>')</xsl:attribute><xsl:attribute name="href"><xsl:value-of select="offer-url"/></xsl:attribute><img border="0"><xsl:attribute name="src"><xsl:value-of select="images/ckxq.gif"/></xsl:attribute></img></a></td>
  <td width="14%" height="50"><script language="javascript">StockWrite("<xsl:value-of select="in-stock"/>");</script></td>
  <td width="17%" height="50"><a target="_blank"><xsl:attribute name="onclick">javascript:ReachLog('<xsl:value-of select="offer-url"/>')</xsl:attribute><xsl:attribute name="href"><xsl:value-of select="offer-url"/></xsl:attribute><strong><font color="#AB0000" size="3">$<xsl:value-of select="offer-price"/> </font></strong></a></td>
</tr>	
</xsl:for-each>
</table>
</xsl:template>  
</xsl:stylesheet>
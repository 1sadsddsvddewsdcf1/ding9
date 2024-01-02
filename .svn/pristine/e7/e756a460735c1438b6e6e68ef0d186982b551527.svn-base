<%@page contentType="text/html;charset=gb2312"%>
<%@ page import="java.lang.*"%>
<%@ page import="java.io.*"%>
<%@ page import="java.sql.*"%>

<%@ page import="java.util.*,java.text.SimpleDateFormat"%>
<%@ page import="javax.servlet.http.Cookie"%>

<%

  String keyword= "Global Hotel Search";

  String shoppingFrom =request.getParameter("ShoppingFrom");
  shoppingFrom=(shoppingFrom==null)?"100":shoppingFrom;

  Cookie cookie=new Cookie("ShoppingFrom", shoppingFrom);
  cookie.setDomain(".ding9.com");
  cookie.setPath("/");
  cookie.setMaxAge(3600);
  response.addCookie(cookie);
  response.getWriter().flush();
  response.getWriter().close();
	
  String domain[]={"http://totalhotelguide.com/","http://101hotel.ding9.com/"};
  Random r=new Random();
  int num=(int) (Math.random()*2);

%>

<HTML>
<HEAD>
<TITLE><%=keyword%>- Compare Hotel Prices from all major reservation sites</TITLE>
<META http-equiv=Content-Type content="text/html; charset=gb2312>

<META content="MSHTML 6.00.2900.3020" name=GENERATOR>
<meta name="KEYWORDS" content="Hotel search, hotel reservation,compare hotel prices,book hotel room">

</HEAD>
<BODY bgColor=#ffffff leftMargin=0 topMargin=4 MARGINHEIGHT="0" MARGINWIDTH="0">

<TABLE cellSpacing=0 cellPadding=0 width=100% align=center valign=top border=0 height=94>
<TR><td align=center><img src="images/ding9_logo.gif">
</td>
<TD width=728 align=center valign="top" height="94">
		<script type="text/javascript"><!--
		google_ad_client = "pub-2083833315482406";
		/* 728x90, 创建于 08-2-25 */
		google_ad_slot = "1799078305";
		google_ad_width = 728;
		google_ad_height = 90;
		//-->
		</script>
		<script type="text/javascript"
		src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
		</script>
</TD></TR></TABLE>

<TABLE cellSpacing=0 cellPadding=0 width=100% align=center border=0>
<TR><TD vAlign=top align=center bgColor=#ffffff width=988>
		<TABLE cellSpacing=0 cellPadding=0 width=100% align=center border=0>
			<TR><TD vAlign=middle align=center bgColor=#ffffff width=988 height=45> 
                <table width="988" height="45" border="0" cellpadding="0" cellspacing="0">
                <TR><TD background="images/sony-2_5_45h.JPG" align=left  height="44">
				    <font size=3><b>&nbsp;&nbsp;&nbsp;&nbsp; 顶九全球酒店搜索：</b></font>
				    </TD></TR>
				<TR>
				<TD width="988">
				 	<font size=2> &nbsp;&nbsp;欢迎使用顶九酒店搜索，点击下面结果里的<img src="images/select_cs.gif">按钮到相关酒店预订网站即可。<br>&nbsp;&nbsp;如果下面没有出现搜索结果和 “选择”按钮，请点击下面结果里的城市名称重新选择酒店进行价格比较。<br>&nbsp;&nbsp;请耐心等待页面完全显示,数据loading 
				 	</font>
				   </TD>

				   </TR>
				   </table>
   			</TD></TR>
			   
			<%
			String hotelname = "";
			if(!"".equals(hotelname)){
				hotelname="";
			}

	Class.forName("com.microsoft.jdbc.sqlserver.SQLServerDriver").newInstance();
	String url="jdbc:microsoft:sqlserver://ww10.empiredatatech.com;DatabaseName=jjwiecom";
	String user="jjwie6675";
	String password="iecom7034";
	Connection conn = DriverManager.getConnection(url,user,password);
	
	Statement stmt=conn.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE,ResultSet.CONCUR_UPDATABLE);

	String sql="select top 1 hotel_name from tbl_hotel order by newid()";
	
	ResultSet rs=stmt.executeQuery(sql);
	while(rs.next()){
		hotelname=rs.getString("hotel_name").toString().trim();
	}
	

		rs.close();
		stmt.close();
		conn.close();
		
		String name=hotelname.replace(" ", "_");

		//time
				//BeginTime = date()+1
				//EndTime = date()+ 4
		Calendar calendar2=Calendar.getInstance();
        Calendar calendar4=Calendar.getInstance();
        calendar2.add(Calendar.DATE,1);
        calendar4.add(Calendar.DATE,4);

		String BeginTime=new SimpleDateFormat("yyyy-MM-dd").format(calendar2.getTime());
		String EndTime=new SimpleDateFormat("yyyy-MM-dd").format(calendar4.getTime());

		%>
	
			<TR><TD align=center width="100%" height="1000">
			    <table cellpadding="0" cellspacing="0" border="0" width="100%">
			    <tr><td width="100%">
			    <iframe src="http://2hotel.ding9.com/Hotel.aspx?fileName=<%=name%>&languageCode=CS&currencyCode=CNY&checkin=<%=BeginTime%>&checkout=<%=EndTime%>&pageFrom=SearchResults&tabId=0" frameborder="0" scrolling="no" width="988" height="1000"></iframe></td></tr>
			   	</table>
			</TD></TR>
		</TABLE>
	</TD>
	</TR>

</TABLE><BR><BR>
<center><script language="javascript" src="http://count47.51yes.com/click.aspx?id=474758704&logo=1"></script></center>
</BODY>
</HTML>



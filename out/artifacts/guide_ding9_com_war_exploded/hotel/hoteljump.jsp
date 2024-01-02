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

<%response.sendRedirect("domain[num]");%>




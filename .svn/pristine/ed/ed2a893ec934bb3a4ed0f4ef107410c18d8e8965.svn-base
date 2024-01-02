package com.ding9.filter;

import java.io.IOException;
import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletResponse;

public class RedirectFilter
  extends HttpServlet
  implements Filter
{
  public void init(FilterConfig arg0) throws ServletException
  {}
  
  public void doFilter(ServletRequest arg0, ServletResponse response, FilterChain arg2) throws ServletException, IOException
  {
    HttpServletResponse req = (HttpServletResponse)response;
    req.sendRedirect("http://www.ding9.com/index.html");
  }
}

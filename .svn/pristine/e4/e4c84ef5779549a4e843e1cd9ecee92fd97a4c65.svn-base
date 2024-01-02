package com.ding9.tohtml;

import java.io.File;
import java.io.IOException;
import java.io.PrintStream;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;

public class HtmlCreatorServlet extends HttpServlet
{
  private static final long serialVersionUID = 1L;
  private Logger log = Logger.getLogger(HtmlCreatorServlet.class);
  
  public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
  {
    doPost(request, response);
  }
  
  public void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException
  {
    String realPath = request.getSession().getServletContext().getRealPath(
      "/");
    String htmlTools = getHtmlFileTools(request);
    String htmlName = getHtmlFileName(request);
    
    String cachFileName = realPath + File.separator + htmlName;
    htmlTools = realPath + File.separator + htmlTools;
    System.err.println("cachFileName = " + cachFileName);
    








    boolean load = false;
    
    String uri = request.getRequestURI();
    System.err.println("uri=" + uri);
    String action = "/product/product-info.do?";
    uri = uri.substring(0, uri.length() - 4);
    String[] urls = uri.replaceAll("-", "/").split("/");
    StringBuffer actionUrl = new StringBuffer();
    actionUrl.append(action);
    actionUrl.append("prma_id=");
    actionUrl.append(urls[4]);
    actionUrl.append("&prso_id_one=");
    actionUrl.append(urls[2]);
    actionUrl.append("&prso_name_one_en=");
    actionUrl.append(urls[1]);
    String templatePath = null;
    
    if (urls.length <= 5) {
      templatePath = actionUrl.toString();
      System.err.println("请求地址是： " + actionUrl.toString());
    }
    if (urls.length > 5) {
      if ((urls[5] != null) && (urls[5].equals("comment"))) {
        actionUrl.append("&type=");
        actionUrl.append(urls[5]);
        this.log.debug("HtmlCreatorServlet get uri = " + actionUrl);


      }
      else if ((urls[5] != null) && (urls[5].equals("promotion"))) {
        actionUrl.append("&type=");
        actionUrl.append(urls[5]);
        this.log.debug("HtmlCreatorServlet get uri = " + actionUrl);


      }
      else if (((urls[5] != null) && (urls[5].equals("merchant"))) || 
        (urls[5].equals("ppara"))) {
        actionUrl.append("&type=");
        actionUrl.append(urls[5]);
        this.log.debug("HtmlCreatorServlet get uri = " + actionUrl);
      }
    }
    
    templatePath = actionUrl.toString();
    

    if (!load)
    {




















      System.err.println("HtmlCreatorServlet RequestDispatcher = " + templatePath);
      response.setContentType("text/html;   charset=GBK");
      response.setCharacterEncoding("GBK");
      request.setCharacterEncoding("GBK");
      RequestDispatcher dispatcher = getServletContext()
        .getRequestDispatcher(templatePath);
      dispatcher.include(request, response);







    }
    else
    {







      RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/" + htmlName);
      dispatcher.include(request, response);
    }
  }
  
  private String getHtmlFileName(HttpServletRequest request) throws ServletException, IOException
  {
    String uri = request.getRequestURI();
    String contextPath = request.getContextPath();
    if ((contextPath != null) && (contextPath.length() > 0)) {
      uri = uri.substring(contextPath.length());
    }
    uri = uri.substring(1, uri.length() - 4);
    uri = uri + ".html";
    uri = "TO_HTML/" + uri;
    return uri;
  }
  
  public String getHtmlFileTools(HttpServletRequest request) {
    String uri = request.getRequestURI();
    
    String[] URL = uri.substring(1).split("/");
    
    String htmlFileTools = "TO_HTML/" + URL[0];
    
    return htmlFileTools;
  }
  
  public void init()
    throws ServletException
  {}
}

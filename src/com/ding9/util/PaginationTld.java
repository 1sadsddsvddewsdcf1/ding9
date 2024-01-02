package com.ding9.util;

import java.io.IOException;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.PageContext;
import javax.servlet.jsp.tagext.TagSupport;

public class PaginationTld
  extends TagSupport
{
  private static final long serialVersionUID = -408620748834056498L;
  private int currentPage = 1;
  private int pageCount;
  private String backgroundClass = "H1";
  private String highlightClass = "H1";
  private String url;
  private PageContext pageContext = null;
  
  public void setPageContext(PageContext pageContext) {
    this.pageContext = pageContext;
  }
  
  public int getPageCount() {
    return this.pageCount;
  }
  
  public void setPageCount(int page) {
    this.pageCount = page;
  }
  
  public int getCurrentPage() {
    return this.currentPage;
  }
  
  public void setCurrentPage(int page) {
    this.currentPage = page;
  }
  
  public String getUrl() {
    return this.url;
  }
  
  public void setUrl(String url) {
    this.url = url;
  }
  
  public String getBackgroundClass() {
    return this.backgroundClass;
  }
  
  public void setBackgroundClass(String backgroundClass) {
    this.backgroundClass = backgroundClass;
  }
  
  public String getHighlightClass() {
    return this.highlightClass;
  }
  
  public void setHighlightClass(String highlightClass) {
    this.highlightClass = highlightClass;
  }
  
  private static int getBeginIndex(int num) {
    if (num <= 0) {
      return 0;
    }
    int decimal = num / 10;
    int surplus = num % 10;
    
    if (surplus > 0) {
      return decimal * 10 + 1;
    }
    return num - 10 + 1;
  }
  
  private static int getEndIndex(int num)
  {
    if (num <= 0) {
      return 0;
    }
    int decimal = num / 10;
    int surplus = num % 10;
    if (surplus > 0) {
      return decimal * 10 + 10;
    }
    return num;
  }
  
  public int doEndTag()
    throws JspException
  {
    JspWriter out = this.pageContext.getOut();
    HttpServletResponse response = (HttpServletResponse)this.pageContext.getResponse();
    try {
      out.print(SplitPage(this.currentPage, this.pageCount, this.url, response));
    } catch (IOException e) {
      e.printStackTrace();
    }
    return super.doEndTag();
  }
  


  private String SplitPage(int currentPage, int pageCount, String url, HttpServletResponse response)
  {
    if (currentPage > pageCount) {
      currentPage = pageCount;
    }
    
    StringBuffer number_page = new StringBuffer();
    if (pageCount == 1) {
      return "";
    }
    
    int beginIndex = getBeginIndex(currentPage);
    int endIndex = getEndIndex(currentPage);
    if (pageCount < endIndex) {
      endIndex = pageCount;
    }
    for (int i = beginIndex; i <= endIndex; i++) {
      if (i == currentPage) {
        number_page.append("<font color='" + this.highlightClass + "'>" + i + "</font> ");
      } else {
        number_page.append("<a href='" + response.encodeURL(new StringBuilder(String.valueOf(url)).append(i).toString()) + "'><span class='" + this.backgroundClass + "'>[" + i + "]</span></a> ");
      }
    }
    
    if (currentPage > 0) {
      if (currentPage != 1) {
        String pre_page = " <a href='" + response.encodeURL(new StringBuilder(String.valueOf(url)).append(currentPage - 1).toString()) + "'><span class='" + this.backgroundClass + "'>[上一页]</span></a> ";
        number_page.insert(0, "&nbsp;&nbsp;");
        number_page.insert(0, pre_page);
      }
      if (currentPage != pageCount) {
        String next_page = " <a href='" + response.encodeURL(new StringBuilder(String.valueOf(url)).append(currentPage + 1).toString()) + "'><span class='" + this.backgroundClass + "'>[下一页]</span></a> ";
        number_page.append("&nbsp;&nbsp;");
        number_page.append(next_page);
      }
    }
    if (!number_page.equals("")) {
      number_page.insert(0, "<span class='H1'>");
      number_page.append("</span>");
    }
    
    StringBuffer skip_page = new StringBuffer();
    if (pageCount > 1) {
      skip_page.append("&nbsp;&nbsp;&nbsp;&nbsp;");
      skip_page.append("<span class='H1'>跳到</span>");
      if (currentPage > 0) {
        skip_page.append("<input name='currentPage' type='text' class='H7' size='3' onKeyPress=\"Javascript:if(window.event.keyCode==13){var currentPage=this.value;document.location.href='" + response.encodeURL(url) + "'+currentPage+'/';return false;}\" value='" + currentPage + "'/>");
      } else {
        skip_page.append("<input name='currentPage' type='text' class='H7' size='3' onKeyPress=\"Javascript:if(window.event.keyCode==13){var currentPage=this.value;document.location.href='" + response.encodeURL(url) + "'+currentPage+'/';return false;}\" value=''/>");
      }
      skip_page.append("<span class='" + this.backgroundClass + "'>页</span>");
      skip_page.append("<input class='form' style='HEIGHT: 19px' type='button' value='Go' name='go' onClick=\"Javascript:var currentPage=document.all.currentPage.value;document.location.href='" + response.encodeURL(url) + "'+currentPage+'/';\"/>");
      number_page.append(skip_page);
    }
    
    return number_page.toString();
  }
}

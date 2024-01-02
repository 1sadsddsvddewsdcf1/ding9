package com.filter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MyRequestProcessor extends org.apache.struts.action.RequestProcessor
{
  protected boolean processPreprocess(HttpServletRequest request, HttpServletResponse response)
  {
    try
    {
      request.setCharacterEncoding("gbk");
    } catch (Exception e) {
      e.printStackTrace();
    }
    return true;
  }
}

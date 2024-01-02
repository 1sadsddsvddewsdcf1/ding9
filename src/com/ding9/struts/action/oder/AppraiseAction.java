package com.ding9.struts.action.oder;

import com.ding9.dao.message.MessageDaoImpl;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.util.CookieUtil;
import com.ding9.util.validate.ValidateCode;
import java.io.IOException;
import java.io.PrintStream;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;
import org.dom4j.Document;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;









public class AppraiseAction
  extends DispatchAction
{
  private List res = null;
  private static final Log logger = LogFactory.getLog(AppraiseAction.class);
  
  public ActionForward unspecified(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
  {
    AppraiseForm ad = (AppraiseForm)form;
    String url = "/product/product-info.do?type=comment&prma_id=" + ad.getPrma_id();
    
    try
    {
      int uesr_id = 0;
      Cookie cookie = CookieUtil.findCookie(request, "SSOUserId");
      if (cookie != null) {
        String[] arr = cookie.getValue().split(":");
        uesr_id = Integer.parseInt(arr[0]);
      }
      


      boolean isVerified = false;
      isVerified = ValidateCode.verifyValidateCode(request, ad.getChk());
      
      response.setCharacterEncoding("gb2312");
      PrintWriter out = null;
      try
      {
        out = response.getWriter();
      } catch (IOException localIOException) {}
      out.print("<script language=javascript>");
      if (!isVerified) {
        out.print("alert('验证码错误!');");
        out.print("window.history.go(-1);");
        out.print("</script>");
        return null;
      }
      


      MessageDaoImpl dao = new MessageDaoImpl();
      int i = dao.insertAppraise(ad.getPrma_id(), ad.getTitle(), ad.getAdvantage(), ad.getDisadvantage(), ad.getContent(), ad.getProduct_level(), uesr_id);
    }
    catch (Exception e)
    {
      int i;
      





      logger.warn("AppraiseAction:ParseException-->" + e.getMessage());
    }
    

    request.setAttribute("url", url);
    return mapping.findForward("appraise");
  }
  








































  public ActionForward upcount(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
  {
    response.setCharacterEncoding("UTF-8");
    response.setContentType("text/xml");
    response.setHeader("Cache-Control", "no-cache");
    Document document = DocumentHelper.createDocument();
    Element root = document.addElement("ruleid");
    Element ruledesc = null;
    Map map = new HashMap();
    
    AppraiseForm ad = (AppraiseForm)form;
    
    try
    {
      IDBAccess dba = null;
      dba = new DBAccessDefaultlImpl();
      String sqlstr = "";
      sqlstr = " update comments_on_product co set co.userful_count=nvl(userful_count,0)+1  where id = " + 
        ad.getComment_id() + " and rownum=1 ";
      System.out.println(" sqlstr ::" + sqlstr);
      int rs = dba.modifyData(sqlstr.toString());
      System.out.println("rs:" + rs);
      

      dba.closeConnection();
      if (rs > 0)
      {




        map.put("result", "");
      } else {
        map.put("result", Integer.valueOf(1));
      }
    } catch (Exception e) {
      logger.warn("AppraiseAction:ParseException-->" + e.getMessage());
    }
    


    String result = "1";
    if ((map.get("result") != null) && (!map.get("result").toString().equals(""))) {
      result = map.get("result").toString();
    } else {
      result = "1";
    }
    ruledesc = root.addElement("result");
    ruledesc.setText(result);
    PrintWriter out = null;
    try {
      out = response.getWriter();
    }
    catch (IOException e) {
      e.printStackTrace();
    }
    String s = root.asXML();
    out.write(s);
    out.close();
    return null;
  }
}

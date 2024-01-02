package com.ding9.struts.action.oder;

import com.ding9.dao.message.MessageDaoImpl;
import com.ding9.util.CookieUtil;
import java.util.List;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;










public class MessageRestoreAction
  extends Action
{
  private List res = null;
  private static final Log logger = LogFactory.getLog(MessageRestoreAction.class);
  
  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception { MessageRestoreForm ad = (MessageRestoreForm)form;
    

    int uesr_id = 0;
    Cookie cookie = CookieUtil.findCookie(request, "SSOUserId");
    if (cookie != null) {
      String[] arr = cookie.getValue().split(":");
      uesr_id = Integer.parseInt(arr[0]);
    }
    

    String url = "/product/product-info.do?type=comment&prma_id=" + ad.getPrma_id();
    try {
      MessageDaoImpl dao = new MessageDaoImpl();
      if (ad.getComment_id() > 0) {
        int i = dao.insertProductComent(ad.getComment_id(), ad.getRe_content(), uesr_id);

      }
      


    }
    catch (Exception e)
    {


      logger.warn("AppraiseAction:ParseException-->" + e.getMessage());
    }
    

    request.setAttribute("url", url);
    return mapping.findForward("appraise");
  }
}

package com.ding9.struts.action.advclick;

import com.ding9.click.client.IAccessLogApi;
import com.ding9.click.client.impl.AccessLogApi;
import com.ding9.click.util.ConfigManager;
import com.ding9.dao.advertisement.AdvertisementDaoImpl;
import com.ding9.multipleentity.AdPlaceAdvertisement;
import com.ding9.util.Environment;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;




public class AdvClickAction
  extends Action
{
  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
  {
    String url = "";
    AdvClickForm clickForm = (AdvClickForm)form;
    
    IAccessLogApi access = new AccessLogApi();
    AdvertisementDaoImpl mdao = new AdvertisementDaoImpl();
    AdPlaceAdvertisement adv = null;
    try
    {
      adv = mdao.getAdvsByAdadId(clickForm.getAdad_id());
      String requeststr = request.getQueryString();
      if (adv != null) {
        int i = access.addVipAdvAccessLogInfo(0, Integer.parseInt(ConfigManager.getProperty("VIPADV_ID")), clickForm.getAdad_id(), "webadvclick", mdao.getIsFuFei(clickForm.getAdad_id()), request, response);
        
        if (requeststr.indexOf("?") > 0) {
          url = requeststr.substring(requeststr.indexOf("&adv_url=") + 9, requeststr.length());
        } else {
          url = clickForm.getAdv_url() == null ? "" : clickForm.getAdv_url();
        }
        if (!url.startsWith("http://")) {
          url = "http://" + url;
        }
        response.sendRedirect(url);
      }
      else {
        url = Environment.getDomainName().trim();
        if (!url.startsWith("http://")) {
          url = "http://" + url;
        }
        response.sendRedirect(url);
      }
    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    
    return null;
  }
}

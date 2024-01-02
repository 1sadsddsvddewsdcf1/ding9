package com.ding9.struts.action.click;

import com.ding9.click.client.IAccessLogApi;
import com.ding9.click.client.impl.AccessLogApi;
import com.ding9.dao.merchant.MerchantDaoImpl;
import com.ding9.entity.merchant.Merchant;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.util.CommSyn;
import com.ding9.util.Environment;
import com.ding9.util.UrlRewriteManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class MerchantClickAction
  extends Action
{
  final Log log = LogFactory.getLog(MerchantClickAction.class);
  


  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
  {
    long begintime = System.currentTimeMillis();
    String url = "";
    int linktype = 0;
    int status = 0;
    CommSyn syn = new CommSyn();
    MerchantClickForm clickForm = (MerchantClickForm)form;
    try {
      url = clickForm.getUrl();
      
      url = UrlRewriteManager.decodeURL(url);
      syn.setUrl(url);
      status = syn.doSyn();
      linktype = 1;
    }
    catch (Exception ex) {
      url = "";
      //2014-03-29 增加调试信息
      //System.err.println("MerchantClickAction,error,date="+new java.util.Date()+",host="+request.getServerName()
    //		  +","+request.getQueryString()+",url="+url);
      //ex.printStackTrace();
    }
    if (status != 200) {
        System.err.println("MerchantClickAction,error,date="+new java.util.Date()+",host="+request.getProtocol()+"://"
        		+request.getServerName()+"/"+request.getRequestURI()
        		  +"?"+request.getQueryString()+",url="+url+","+request.getRemoteAddr()+","+request.getRemoteHost()
        		  +","+request.getHeader("user-agent"));
     IDBAccess dba = null;
      dba = new DBAccessDefaultlImpl();
      String sqlstr = "";
      sqlstr = " update merchant_product  set mepr_tmp = 1,mepr_yn = 0,up_time = sysdate,mepr_yn_reason = '商品URL打不开'  where merc_id = " + 
      
        clickForm.getMerc_id() + 
        " and prma_id=" + clickForm.getPrma_id() + " and rownum=1 ";
      dba.modifyData(sqlstr.toString());
      dba.closeConnection();
    }
    

    IAccessLogApi access = new AccessLogApi();
    MerchantDaoImpl mdao = new MerchantDaoImpl();
    Merchant mc = null;
    try {
      mc = mdao.getMerchantInfo(clickForm.getMerc_id());

    }
    catch (Exception e)
    {
      e.printStackTrace();
    }
    
    try
    {
      if (status != 200) {
        url = mc.getMerc_url().trim();
        syn.setUrl(url);
        status = syn.doSyn();
        linktype = 2;
      }
    } catch (Exception ex) {
      url = "";
      linktype = 2;
    }
    this.log.warn("stats22=" + status);
    try
    {
      if (status != 200)
      {
        url = "http://www.ding9.com/";
        

        linktype = 3;
      }
    } catch (Exception ex) {
      url = Environment.getDomainName().trim();
      linktype = 3;
    }
    
    request.setAttribute("url", url);
    request.setAttribute("linktype", Integer.valueOf(linktype));
    request.setAttribute("merchantinfo", mc);
    
    return mapping.findForward("merchantclick");
  }
}

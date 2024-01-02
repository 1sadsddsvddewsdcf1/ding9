package com.ding9.struts.action.pinglun;

import com.ding9.click.client.IAccessLogApi;
import com.ding9.click.client.impl.AccessLogApi;
import com.ding9.click.util.ConfigManager;
import com.ding9.dao.advertisement.AdvertisementDao;
import com.ding9.dao.advertisement.AdvertisementDaoImpl;
import com.ding9.dao.article.ArticleDao;
import com.ding9.dao.article.ArticleDaoImpl;
import com.ding9.dao.indexkey.IndexKeyDao;
import com.ding9.dao.indexkey.IndexKeyDaoImpl;
import com.ding9.multipleentity.AdPlaceAdvertisement;
import com.ding9.search.searcher.support.result.CommentResult;
import com.ding9.search.server.SearchService;
import com.ding9.search.service.ISearchService;
import com.ding9.struts.form.pinglun.IndexForm;
import com.ding9.util.KeywordsOptimizeFactory;
import com.ding9.util.ProjectEnvironment;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;



public class IndexAction
  extends Action
{
  private static final Log log = LogFactory.getLog(IndexAction.class);
  
  long lasttime = System.currentTimeMillis();
  
  ISearchService service = new SearchService();
  



  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    long a = System.currentTimeMillis();
    

    String title = KeywordsOptimizeFactory.getInstance().getKeopTitle(203, 
      null);
    String desc = KeywordsOptimizeFactory.getInstance().getKeopDescription(
      203, null);
    String keywords = KeywordsOptimizeFactory.getInstance()
      .getKeopKeyWords(203, null);
    
    request.setAttribute("Page_Title", title);
    request.setAttribute("Page_Desc", desc);
    request.setAttribute("Page_Keywords", keywords);
    request.setAttribute("META", ProjectEnvironment.getMETA());
    

    IndexForm frm = (IndexForm)form;
    long begintime = System.currentTimeMillis();
    

    IndexKeyDao keydao = new IndexKeyDaoImpl();
    List keyList = null;
    if ((keyList == null) || 
      (System.currentTimeMillis() - this.lasttime > 3600000L)) {
      keyList = keydao.queryKey(1000007);
    }
    try {
      if (log.isWarnEnabled()) {
        log.warn("(关键字)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    request.setAttribute("keyList", keyList);
    

    ArticleDao articledao = new ArticleDaoImpl();
    List article46 = articledao.query(46, 7);
    List article47 = articledao.query(47, 7);
    
    request.setAttribute("article47", article47);
    request.setAttribute("article46", article46);
    


    AdvertisementDao addao = new AdvertisementDaoImpl();
    String adv_68_395 = null;
    String adv_68_396 = null;
    if ((adv_68_395 == null) || 
      (System.currentTimeMillis() - this.lasttime > 3600000L)) {
      adv_68_395 = addao.getAds(68, 395);
      IAccessLogApi access = new AccessLogApi();
      try
      {
        AdPlaceAdvertisement ad = addao.getAdvsByTypeId(68, 395);
        if (ad == null) {
          access.addVipAdvAccessLogInfo(0, Integer.parseInt(ConfigManager.getProperty("VIPADV_ID")), ad.getAdad_id(), "webadv", false, request, response);
        }
      }
      catch (Exception e)
      {
        e.printStackTrace();
      }
      
      this.lasttime = System.currentTimeMillis();
    }
    if ((adv_68_396 == null) || 
      (System.currentTimeMillis() - this.lasttime > 3600000L)) {
      adv_68_396 = addao.getAds(68, 396);
      IAccessLogApi access = new AccessLogApi();
      try
      {
        AdPlaceAdvertisement ad = addao.getAdvsByTypeId(68, 396);
        if (ad != null) {
          access.addVipAdvAccessLogInfo(0, Integer.parseInt(ConfigManager.getProperty("VIPADV_ID")), ad.getAdad_id(), "webadv", true, request, response);
        }
      }
      catch (Exception e)
      {
        e.printStackTrace();
      }
      this.lasttime = System.currentTimeMillis();
    }
    
    request.setAttribute("adv_68_395", adv_68_395);
    request.setAttribute("adv_68_396", adv_68_396);
    



    int page_size = 10;
    int current_page = frm.getCurrent_page();
    if (current_page == 0) {
      current_page = 1;
    }
    CommentResult cr = this.service.getComments(current_page, page_size, true);
    Object[] crList = cr.getRecords();
    







    request.setAttribute("CommentsOnProductByHomePage", crList);
    request.setAttribute("countpage", Integer.valueOf(cr.getTotalPage()));
    request.setAttribute("currentpage", Integer.valueOf(current_page));
    
    long b = System.currentTimeMillis();
    if (log.isInfoEnabled()) { log.info("Action Cost:" + (b - a) + "毫秒");
    }
    return mapping.findForward("success");
  }
}

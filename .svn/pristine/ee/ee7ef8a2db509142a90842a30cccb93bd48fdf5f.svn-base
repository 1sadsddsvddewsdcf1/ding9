package com.ding9.struts.action;

import com.ding9.dao.advertisement.AdvertisementDao;
import com.ding9.dao.advertisement.AdvertisementDaoImpl;
import com.ding9.dao.contentinfo.CommonContentInfoDao;
import com.ding9.dao.contentinfo.CommonContentInfoDaoImpl;
import com.ding9.dao.copartner.CopartnerDao;
import com.ding9.dao.copartner.CopartnerDaoImpl;
import com.ding9.dao.recommendProduct.RecommonProductDao;
import com.ding9.dao.recommendProduct.RecommonProductDaoImpl;
import com.ding9.dao.sortinfo.SortInfoDao;
import com.ding9.dao.sortinfo.SortInfoDaoImpl;
import com.ding9.dao.sysnews.SysnewsDao;
import com.ding9.dao.sysnews.SysnewsDaoImpl;
import com.ding9.entity.commoncontentinfo.CommonContentInfo;
import com.ding9.entity.productinfo.ProductInfoVO;
import com.ding9.entity.sortinfo.SortInfoVO;
import com.ding9.util.Environment;
import com.ding9.util.KeywordsOptimizeFactory;
import com.ding9.util.ProjectEnvironment;
import com.ding9.util.UrlRewriteManager;
import java.util.HashMap;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;



public class SwitchAction
  extends Action
{
  private static final Log log = LogFactory.getLog(IndexAction.class);
  
  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    String msg = request.getParameter("msg");
    CopartnerDao copartnerDao = new CopartnerDaoImpl();
    if ("help".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "新手上路");
      









      getPageInfo(request, 205, map);
      
      return mapping.findForward("help");
    }
    if ("leibie".equals(msg)) {
      CommonContentInfoDao contentDao = new CommonContentInfoDaoImpl();
      CommonContentInfo sortVO = 
        (CommonContentInfo)contentDao.getContentInfo(37).get(0);
      AdvertisementDao addao = new AdvertisementDaoImpl();
      

      SortInfoDao sortinfodao = new SortInfoDaoImpl();
      SortInfoVO vo55 = sortinfodao.getSort(55);
      SortInfoVO vo56 = sortinfodao.getSort(56);
      SortInfoVO vo57 = sortinfodao.getSort(57);
      SortInfoVO vo58 = sortinfodao.getSort(58);
      
      RecommonProductDao prodao = new RecommonProductDaoImpl();
      ProductInfoVO pic55 = (ProductInfoVO)prodao.query(55, 1).get(0);
      ProductInfoVO pic56 = (ProductInfoVO)prodao.query(56, 1).get(0);
      ProductInfoVO pic57 = (ProductInfoVO)prodao.query(57, 1).get(0);
      ProductInfoVO pic58 = (ProductInfoVO)prodao.query(58, 1).get(0);
      
      String url = null;
      url = ProjectEnvironment.getChannelDomainName(String.valueOf(pic55.getPrso_id_one())) + 
        UrlRewriteManager.dynamic2static(new StringBuilder("/product/product-info.do?prma_id=").append(pic55.getPrma_id()).toString());
      pic55.setUrl(url);
      
      url = ProjectEnvironment.getChannelDomainName(String.valueOf(pic56.getPrso_id_one())) + 
        UrlRewriteManager.dynamic2static(new StringBuilder("/product/product-info.do?prma_id=").append(pic56.getPrma_id()).toString());
      pic56.setUrl(url);
      
      url = ProjectEnvironment.getChannelDomainName(String.valueOf(pic57.getPrso_id_one())) + 
        UrlRewriteManager.dynamic2static(new StringBuilder("/product/product-info.do?prma_id=").append(pic57.getPrma_id()).toString());
      pic57.setUrl(url);
      
      url = ProjectEnvironment.getChannelDomainName(String.valueOf(pic58.getPrso_id_one())) + 
        UrlRewriteManager.dynamic2static(new StringBuilder("/product/product-info.do?prma_id=").append(pic58.getPrma_id()).toString());
      pic58.setUrl(url);
      

      List list55 = prodao.query(55, 5);
      List list56 = prodao.query(56, 5);
      List list57 = prodao.query(57, 5);
      List list58 = prodao.query(58, 5);
      
      request.setAttribute("list55", list55);
      request.setAttribute("list56", list56);
      request.setAttribute("list57", list57);
      request.setAttribute("list58", list58);
      request.setAttribute("pic55", pic55);
      request.setAttribute("pic56", pic56);
      request.setAttribute("pic57", pic57);
      request.setAttribute("pic58", pic58);
      request.setAttribute("vo55", vo55);
      request.setAttribute("vo56", vo56);
      request.setAttribute("vo57", vo57);
      request.setAttribute("vo58", vo58);
      

      request.setAttribute("adv_67_394", addao.getAds(67, 394));
      request.setAttribute("sortVO", sortVO);
      return mapping.findForward("leibie");
    }
    if ("aboutus".equals(msg)) {
      getPageInfo(request, 204, null);
      








      return mapping.findForward("aboutus");
    }
    if ("service".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "服务条款");
      








      getPageInfo(request, 206, map);
      
      return mapping.findForward("service");
    }
    


    if ("contact".equals(msg))
    {








      getPageInfo(request, 208, null);
      
      return mapping.findForward("contact");
    }
    if ("merchant".equals(msg))
    {








      getPageInfo(request, 209, null);
      
      return mapping.findForward("merchant");
    }
    


    if ("search".equals(msg))
    {

      SysnewsDao dao = new SysnewsDaoImpl();
      

      List list = dao.query(2, 1, 4);
      
      if ((list != null) && (list.size() > 0)) {
        request.setAttribute("SYSNEWS", list);
      }
      HashMap map = new HashMap();
      map.put("@page@", "首页");
      








      getPageInfo(request, 211, map);
      
      return mapping.findForward("search");
    }
    if ("question".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "常见问题");
      








      getPageInfo(request, 205, map);
      
      return mapping.findForward("question");
    }
    
    if ("law".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "法律声明");
      








      getPageInfo(request, 206, map);
      
      return mapping.findForward("law");
    }
    
    if ("declare".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "隐私声明");
      








      getPageInfo(request, 206, map);
      
      return mapping.findForward("declare");
    }
    if ("promotion".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "网络推广协议");
      








      getPageInfo(request, 206, map);
      
      return mapping.findForward("promotion");
    }
    
    if ("technique".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "技术部");
      








      getPageInfo(request, 207, map);
      
      return mapping.findForward("technique");
    }
    
    if ("sitemap".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "商拓部");
      








      getPageInfo(request, 207, map);
      
      return mapping.findForward("sitemap");
    }
    
    if ("market".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "市场部");
      








      getPageInfo(request, 207, map);
      
      return mapping.findForward("market");
    }
    
    if ("product".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "产品部");
      








      getPageInfo(request, 207, map);
      
      return mapping.findForward("product");
    }
    if ("cooperate".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "合作伙伴");
      








      getPageInfo(request, 210, map);
      

      List partnerResults = copartnerDao.query(1, new Integer(20));
      request.setAttribute("partnerResults", partnerResults);
      

      List merchantResults = copartnerDao.query(2, new Integer(20));
      request.setAttribute("merchantResults", merchantResults);
      

      List friendResults = copartnerDao.query(3, new Integer(20));
      request.setAttribute("friendResults", friendResults);
      
      request.setAttribute("image_server", Environment.getImageServer());
      
      return mapping.findForward("cooperate");
    }
    if ("comethod".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "合作方式");
      








      getPageInfo(request, 210, map);
      
      return mapping.findForward("comethod");
    }
    
    if ("sservice".equals(msg)) {
      HashMap map = new HashMap();
      map.put("@page@", "服务介绍");
      








      getPageInfo(request, 211, map);
      
      return mapping.findForward("sservice");
    }
    if ("squestion".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "常见问题");
      








      getPageInfo(request, 211, map);
      
      return mapping.findForward("squestion");
    }
    if ("spricecenter".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "代理中心");
      








      getPageInfo(request, 211, map);
      
      return mapping.findForward("spricecenter");
    }
    if ("scontact".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "联系我们");
      








      getPageInfo(request, 211, map);
      
      return mapping.findForward("scontact");
    }
    if ("spricequery".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "竞价查询");
      








      getPageInfo(request, 211, map);
      
      return mapping.findForward("spricequery");
    }
    if ("partnermore".equals(msg)) {
      request.setAttribute("image_server", Environment.getImageServer());
      
      List partnerResults = copartnerDao.query(1, null);
      request.setAttribute("partnerResults", partnerResults);
      return mapping.findForward("partnermore");
    }
    if ("cooperatemore".equals(msg)) {
      request.setAttribute("image_server", Environment.getImageServer());
      
      List merchantResults = copartnerDao.query(2, null);
      request.setAttribute("merchantResults", merchantResults);
      return mapping.findForward("cooperatemore");
    }
    if ("youqing".equals(msg)) {
      request.setAttribute("image_server", Environment.getImageServer());
      
      List friendResults = copartnerDao.query(3, null);
      request.setAttribute("friendResults", friendResults);
      return mapping.findForward("youqing");
    }
    if ("helpme".equals(msg))
    {
      HashMap map = new HashMap();
      map.put("@page@", "商家帮助");
      








      getPageInfo(request, 205, map);
      
      return mapping.findForward("helpme");
    }
    
    return mapping.findForward("index");
  }
  
  public static void getPageInfo(HttpServletRequest request, int num, HashMap map)
  {
    String title = KeywordsOptimizeFactory.getInstance().getKeopTitle(num, map);
    String desc = KeywordsOptimizeFactory.getInstance().getKeopDescription(num, null);
    String keywords = KeywordsOptimizeFactory.getInstance().getKeopKeyWords(num, null);
    
    if (title != null) {
      request.setAttribute("Page_Title", title);
    } else {
      request.setAttribute("Page_Title", "");
    }
    if (desc != null) {
      request.setAttribute("Page_Desc", desc);
    } else {
      request.setAttribute("Page_Desc", "");
    }
    if (keywords != null) {
      request.setAttribute("Page_Keywords", keywords);
    } else {
      request.setAttribute("Page_Keywords", "");
    }
    if (ProjectEnvironment.getMETA() != null) {
      request.setAttribute("META", ProjectEnvironment.getMETA());
    } else {
      request.setAttribute("META", "");
    }
  }
}

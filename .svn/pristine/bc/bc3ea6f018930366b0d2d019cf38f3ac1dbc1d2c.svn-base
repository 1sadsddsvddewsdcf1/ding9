package com.ding9.struts.action.merchantcompare;

import com.ding9.dao.advertisement.AdvertisementDao;
import com.ding9.dao.advertisement.AdvertisementDaoImpl;
import com.ding9.dao.collection.UserTagDao;
import com.ding9.dao.collection.UserTagDaoImpl;
import com.ding9.dao.product.ProductDaoImpl;
import com.ding9.dao.productsort.ProductSortDao;
import com.ding9.dao.productsort.ProductSortDaoImpl;
import com.ding9.entity.productsort.ProductSortVO;
import com.ding9.search.entity.merchantproduct.MerchantProduct;
import com.ding9.search.entity.product.ProductMaster;
import com.ding9.search.searcher.support.result.CommentResult;
import com.ding9.search.searcher.support.result.MerchantProductResult;
import com.ding9.search.searcher.support.result.ProductMasterResult;
import com.ding9.search.searcher.support.result.ProductParaResult;
import com.ding9.search.server.SearchService;
import com.ding9.search.service.ISearchService;
import com.ding9.util.CookieUtil;
import com.ding9.util.Environment;
import com.ding9.util.KeywordsOptimizeFactory;
import com.ding9.util.ProjectEnvironment;
import com.ding9.util.StringHelper;
import java.math.BigDecimal;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;





public class ProductInfoAction
  extends Action
{
  private static final Log log = LogFactory.getLog(ProductInfoAction.class);
  private static KeywordsOptimizeFactory keyFactory = KeywordsOptimizeFactory.getInstance();
  ISearchService service = new SearchService();
  
  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    long beginTime = System.currentTimeMillis();
    
    UserTagDao tagDao = new UserTagDaoImpl();
    Cookie cookie = CookieUtil.findCookie(request, "SSOUserId");
    String userid = null;
    List tagList = null;
    if (cookie != null) {
      String[] arr = cookie.getValue().split(":");
      userid = arr[0];
      tagList = tagDao.query(Integer.parseInt(userid), 1);
    }
    request.setAttribute("tagList", tagList);
    

    int prbr_id = -1;
    int prso_id = -1;
    String type = request.getParameter("type") == null ? "merchant" : request.getParameter("type");
    log.warn("type======" + type);
    ProductInfoAF af = (ProductInfoAF)form;
    int prma_id = af.getPrma_id();
    
    Float minprice = Float.valueOf(Float.parseFloat("0"));
    Float maxprice = Float.valueOf(Float.parseFloat("0"));
    ProductMasterResult pr = null;
    Long pretime = Long.valueOf(System.currentTimeMillis());
    pr = this.service.getStandardProducts("", 0, 0, prma_id, minprice.floatValue(), maxprice.floatValue(), 
      0, 1, 6, true, "null");
    
    if (log.isInfoEnabled()) {
      log.warn("search standardproduct cost time=" + (
        System.currentTimeMillis() - pretime.longValue()));
      pretime = Long.valueOf(System.currentTimeMillis());
    }
    Object[] plist = pr.getRecords() == null ? new Object[0] : 
      pr.getRecords();
    request.setAttribute("productlist", plist);
    request.setAttribute("type", type);
    
    if (plist.length > 0) {
      ProductMaster[] pm1 = (ProductMaster[])plist;
      ProductMaster pm = pm1[0];
      
      Map param = new HashMap();
      param.put("@A@", pm.getPrso_name_one() + " " + pm.getPrso_name_two() + " " + pm.getPrso_name());
      param.put("@B@", pm.getPrma_name());
      param.put("@G@", 
        StringHelper.getSubString(pm.getPrma_remark(), 240));
      
      String title = getTitleByChannelId(pm.getPrso_id_one(), param);
      if ((title == null) || (title.equals(""))) {
        title = keyFactory.getKeopTitle(5, param);
      }
      String desc = keyFactory.getKeopDescription(47, param);
      if ((desc == null) || (desc.equals(""))) {
        desc = keyFactory.getKeopDescription(5, param);
      }
      String keywords = keyFactory.getKeopKeyWords(47, param);
      if ((keywords == null) || (keywords.equals(""))) {
        keywords = keyFactory.getKeopKeyWords(5, param);
      }
      request.setAttribute("Title", title);
      request.setAttribute("Desc", desc);
      request.setAttribute("KeyWords", keywords);
      request.setAttribute("META", ProjectEnvironment.getMETA());
      

      topBanner(request, response, pm.getPrso_id_one());
      
      ArticleInfo(request, form, pm);
      
      prbr_id = pm.getPrbr_id();
      prso_id = pm.getPrso_id();
      
      sameproductInfo(request, af, prbr_id);
      
      diffproductInfo(request, af, prbr_id);
      
      if (prso_id == 31) {
        productpara(request, prso_id, af);
      }
    }
    else
    {
      log.warn("product count ======0");
      return mapping.findForward("error");
    }
    

    if (type.equals("merchant")) {
      merchantInfo(request, response, form);
    } else if ("comment".equals(type)) {
      comments(request, form);
    } else if (type.equals("ppara"))
    {
      if (prso_id != 31) {
        productpara(request, prso_id, af);
      }
    } else if (type.equals("promotion"))
    {
      ProductDaoImpl dao = new ProductDaoImpl();
      List res = dao.getSalepromotion(prma_id);
      if (res.size() == 0) {
        request.setAttribute("Salepromotion", null);
      } else {
        request.setAttribute("Salepromotion", res);
        
        request.setAttribute("saleUrl", Environment.CHANNEL_SALE);
      }
    }
    

    seo(request);
    
    ad(request);
    

    String channelDomain = ProjectEnvironment.getChannelDomainName(String.valueOf(af.getPrso_id_one()));//2014-02-09 af.getPrso_id_one());
    
    af.setChannelDomain(channelDomain);
    
    af.setUserDomain(Environment.getUserDomain());
    
    ProductSortDao psDao = new ProductSortDaoImpl();
    ProductSortVO ps = psDao.findByPrmaId(prma_id);
    if (ps != null) {
      af.setPrso_name_three_en(ps.getPrso_name_three_en());
    }
    
    if (StringUtils.isBlank(af.getPrso_name_three_en())) {
      af.setPrso_name_three_en("default");
    }
    
    af.setChannelD9Sense(Environment.getChannelD9Sense());
    af.setChannelMerchant(Environment.getChannelMerchant());
    af.setChannelPromotion(Environment.getChannelPromotion());
    

    log.warn("all cost time=" + (System.currentTimeMillis() - beginTime));
    return mapping.findForward("success");
  }
  





  public void ArticleInfo(HttpServletRequest request, ActionForm form, ProductMaster pm)
  {
    long pretime = System.currentTimeMillis();
    int zhuye = 0;int pingshu = 0;
    if (pm.getPrso_id_one() == 6) {
      zhuye = 4;
      pingshu = 2;
    } else if (pm.getPrso_id_one() == 1) {
      zhuye = 10;
      pingshu = 9;
    } else if (pm.getPrso_id_one() == 7) {
      zhuye = 21;
      pingshu = 22;
    } else if (pm.getPrso_id_one() == 15) {
      zhuye = 31;
      pingshu = 32;
    } else if (pm.getPrso_id_one() == 12) {
      zhuye = 28;
      pingshu = 29;
    } else if (pm.getPrso_id_one() == 8) {
      zhuye = 14;
      pingshu = 16;
    } else if (pm.getPrso_id_one() == 4) {
      zhuye = 8;
      pingshu = 7;
    }
    
    if ((zhuye != 0) && (pingshu != 0))
    {
      try
      {

        Object[] zhuyelist = (Object[])null;
        Object[] pingshulist = (Object[])null;
        request.setAttribute("zhuyelist", zhuyelist);
        request.setAttribute("pingshulist", pingshulist);
      } catch (Exception e) {
        if (log.isErrorEnabled()) {
          log.error(e.getMessage());
        }
      }
    }
    log.warn("article cost time=" + (pretime - System.currentTimeMillis()));
  }
  





  public void topBanner(HttpServletRequest request, HttpServletResponse response, int prsoid_one)
  {
    long preTime = System.currentTimeMillis();
    int adpl_type = 0;int adpl_id = 0;
    int adplid2 = 0;int adplid3 = 0;int adplid4 = 0;
    if (prsoid_one == 6) {
      adpl_type = 12;
      adpl_id = 39;
      adplid2 = 40;
      adplid3 = 42;
      adplid4 = 41;
    } else if (prsoid_one == 1) {
      adpl_type = 24;
      adpl_id = 98;
      adplid2 = 99;
      adplid3 = 101;
      adplid4 = 100;
    } else if (prsoid_one == 7) {
      adpl_type = 33;
      adpl_id = 123;
      adplid2 = 124;
      adplid3 = 126;
      adplid4 = 125;
    } else if (prsoid_one == 15) {
      adpl_type = 43;
      adpl_id = 169;
      adplid2 = 170;
      adplid3 = 172;
      adplid4 = 171;
    } else if (prsoid_one == 12) {
      adpl_type = 38;
      adpl_id = 150;
      adplid2 = 151;
      adplid3 = 153;
      adplid4 = 152;
    } else if (prsoid_one == 8) {
      adpl_type = 28;
      adpl_id = 111;
      adplid2 = 112;
      adplid3 = 115;
      adplid4 = 113;
    } else if (prsoid_one == 4) {
      adpl_type = 20;
      adpl_id = 86;
      adplid2 = 87;
      adplid3 = 89;
    }
    


















    log.warn("ads cost time=" + (System.currentTimeMillis() - preTime));
  }
  







  public void sameproductInfo(HttpServletRequest request, ProductInfoAF af, int prbr_id)
  {
    long preTime = System.currentTimeMillis();
    int prma_id = af.getPrma_id();
    Float minprice = Float.valueOf(Float.parseFloat("0"));
    Float maxprice = Float.valueOf(Float.parseFloat("0"));
    ProductMasterResult pr = null;
    
    pr = this.service.getStandardProducts("", 0, 0, prma_id, minprice.floatValue(), maxprice.floatValue(), 
      0, 1, 5, true, "samePrmaidbrand");
    Object[] plist = (Object[])null;
    if (pr != null) {
      plist = pr.getRecords() == null ? new Object[0] : pr.getRecords();
      request.setAttribute("sameproductlist", plist);
      request.setAttribute("samecount", Integer.valueOf(pr.getRecordCount()));
    } else {
      request.setAttribute("sameproductlist", plist);
      request.setAttribute("samecount", Integer.valueOf(0));
    }
    log.warn("same cost time=" + (
      System.currentTimeMillis() - preTime));
  }
  





  public void diffproductInfo(HttpServletRequest request, ProductInfoAF af, int prbr_id)
  {
    long preTime = System.currentTimeMillis();
    int prma_id = af.getPrma_id();
    Float minprice = Float.valueOf(Float.parseFloat("0"));
    Float maxprice = Float.valueOf(Float.parseFloat("0"));
    ProductMasterResult pr = null;
    
    pr = this.service.getStandardProducts("", 0, 0, prma_id, minprice.floatValue(), maxprice.floatValue(), 
      0, 1, 3, true, "diffPrmaidbrand");
    Object[] plist = (Object[])null;
    if (pr != null) {
      plist = pr.getRecords() == null ? new Object[0] : pr.getRecords();
      request.setAttribute("diffproductlist", plist);
      request.setAttribute("diffcount", Integer.valueOf(pr.getRecordCount()));
    } else {
      request.setAttribute("diffproductlist", plist);
      request.setAttribute("diffcount", Integer.valueOf(0));
    }
    log.warn("different cost time=" + (
      System.currentTimeMillis() - preTime));
  }
  





  public void merchantInfo(HttpServletRequest request, HttpServletResponse response, ActionForm form)
  {
    long preTime = System.currentTimeMillis();
    

    ProductInfoAF af = (ProductInfoAF)form;
    int pagesize = af.getPageSize() == 0 ? 10 : af.getPageSize();
    
    int prma_id = af.getPrma_id();
    
    String sort = "0";
    if ((request.getParameter("sort") != null) && (!"".equals(request.getParameter("sort")))) {
      try {
        Integer.parseInt(sort);
        sort = request.getParameter("sort");
      }
      catch (Exception localException) {}
    }
    

    HashMap hash = this.service.getMerchantInfoByPrmaId(prma_id);
    if (hash != null) {
      request.setAttribute("city", hash.get("field_1"));
      request.setAttribute("pay", hash.get("field_2"));
    }
    
    String pay = af.getPay();
    String area = af.getCity();
    
    if ((pay == null) || ("0".equals(pay))) {
      pay = "";
    }
    if ((area == null) || ("0".equals(area))) {
      area = "";
    }
    
    MerchantProductResult mpRS = this.service.getMerchantProduct(prma_id, 0, 0, 
      "", 0.0F, 0.0F, area, pay, Integer.parseInt(sort), 1, pagesize, true);
    Object[] mpList = mpRS.getRecords();
    request.setAttribute("mpList", mpList);
    
    MerchantProduct minPriceMerchant = getMinPriceMerchant(mpList);
    request.setAttribute("minPriceMerchant", minPriceMerchant);
    
    log.warn("merchant info cost time=" + (System.currentTimeMillis() - preTime));
  }
  
  private MerchantProduct getMinPriceMerchant(Object[] mpList) {
    MerchantProduct minPriceMerchant = null;
    if ((mpList != null) && (mpList.length > 0)) {
      float minPrice = 0.0F;
      for (int i = 0; i < mpList.length; i++) {
        MerchantProduct merchantProduct = (MerchantProduct)mpList[i];
        float price = merchantProduct.getMeprPrice().floatValue();
        if (i == 0) {
          minPrice = price;
          minPriceMerchant = merchantProduct;
        }
        if (price < minPrice) {
          minPrice = price;
          minPriceMerchant = merchantProduct;
        }
      }
    }
    return minPriceMerchant;
  }
  







  public void comments(HttpServletRequest request, ActionForm form)
    throws Exception
  {
    long preTime = System.currentTimeMillis();
    ProductInfoAF af = (ProductInfoAF)form;
    int page_size = 10;
    int current_page = af.getCurrent_page();
    int prma_id = af.getPrma_id();
    if (current_page == 0) {
      current_page = 1;
    }
    
    ProductDaoImpl dao = new ProductDaoImpl();
    List res = dao.getReviewInfo(prma_id);
    
    if (res.size() > 0) {
      request.setAttribute("ReviewProduct", res.get(0));
    }
    
    CommentResult cr = this.service.getComments(prma_id, current_page, 
      page_size, true);
    Object[] crList = cr.getRecords();
    
    request.setAttribute("count_page", Integer.valueOf(cr.getTotalPage()));
    request.setAttribute("current_page", Integer.valueOf(current_page));
    request.setAttribute("comment_count", Integer.valueOf(cr.getRecordCount()));
    request.setAttribute("crList", crList);
    log.warn("comments info cost time=" + (System.currentTimeMillis() - preTime));
  }
  





  public void productpara(HttpServletRequest request, int prso_id, ProductInfoAF af)
  {
    ProductParaResult pr = null;
    int prma_id = af.getPrma_id();
    

    pr = null;
    Object[] crList = (Object[])null;
    if (pr != null) {
      crList = pr.getRecords() == null ? new Object[0] : pr.getRecords();
      request.setAttribute("ppara", crList);
      request.setAttribute("paracount", Integer.valueOf(pr.getRecordCount()));
    } else {
      request.setAttribute("ppara", crList);
      request.setAttribute("paracount", Integer.valueOf(0));
    }
  }
  
  private String getTitleByChannelId(int channelId, Map map) {
    KeywordsOptimizeFactory keyFactory = 
      KeywordsOptimizeFactory.getInstance();
    String title = "";
    





    switch (channelId)
    {
    case 1: 
      title = keyFactory.getKeopTitle(280, map);
      break;
    
    case 7: 
      title = keyFactory.getKeopTitle(381, map);
      break;
    

    case 6: 
      title = keyFactory.getKeopTitle(230, map);
      break;
    

    case 15: 
      title = keyFactory.getKeopTitle(383, map);
      break;
    

    case 8: 
      title = keyFactory.getKeopTitle(384, map);
      break;
    

    case 12: 
      title = keyFactory.getKeopTitle(382, map);
      break;
    
    case 9: 
      title = keyFactory.getKeopTitle(337, map);
      break;
    
    case 5: 
      title = keyFactory.getKeopTitle(287, map);
      break;
    case 2: case 3: case 4: case 10: case 11: case 13: case 14: default: 
      keyFactory.getKeopTitle(47, map);
    }
    
    return title;
  }
  






  public void seo(HttpServletRequest request) {}
  





  public void ad(HttpServletRequest request)
  {
    AdvertisementDao addao = new AdvertisementDaoImpl();
    try {
      Map map = AdvertisementDaoImpl.getAds();
      
      String rightUpAds = null;
      rightUpAds = (String)map.get("66_607");
      request.setAttribute("rightUpAds", rightUpAds);
      
      String midAds = null;
      midAds = addao.getAds(66, 606);
      request.setAttribute("midAds", midAds);
      
      String upAds = null;
      upAds = addao.getAds(66, 605);
      request.setAttribute("upAds", upAds);
      
      String leftDownAds = null;
      leftDownAds = addao.getAds(66, 608);
      request.setAttribute("leftDownAds", leftDownAds);
    }
    catch (SQLException e) {
      e.printStackTrace();
    }
  }
}

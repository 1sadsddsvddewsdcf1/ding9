package com.ding9.struts.action.index;

import com.ding9.dao.advertisement.AdvertisementDao;
import com.ding9.dao.advertisement.AdvertisementDaoImpl;
import com.ding9.dao.article.ArticleDao;
import com.ding9.dao.article.ArticleDaoImpl;
import com.ding9.dao.comments.CommentsDao;
import com.ding9.dao.contentinfo.CommonContentInfoDao;
import com.ding9.dao.contentinfo.CommonContentInfoDaoImpl;
import com.ding9.dao.hotproduct.HotProductDao;
import com.ding9.dao.hotproduct.HotProductDaoImpl;
import com.ding9.dao.indexkey.IndexKeyDao;
import com.ding9.dao.indexkey.IndexKeyDaoImpl;
import com.ding9.dao.productMaster.ProductMasterDao;
import com.ding9.dao.productMaster.ProductMasterDaoImpl;
import com.ding9.dao.recommendProduct.RecommonProductDao;
import com.ding9.dao.recommendProduct.RecommonProductDaoImpl;
import com.ding9.dao.salepromotion.SalePromotionDao;
import com.ding9.dao.salepromotion.SalePromotionDaoImpl;
import com.ding9.dao.sortinfo.SortInfoDao;
import com.ding9.dao.sortinfo.SortInfoDaoImpl;
import com.ding9.dao.sysnews.SysnewsDao;
import com.ding9.dao.sysnews.SysnewsDaoImpl;
import com.ding9.entity.article.ArticleVO;
import com.ding9.entity.commoncontentinfo.CommonContentInfo;
import com.ding9.entity.productMaster.ProductMasterVO;
import com.ding9.entity.productinfo.ProductInfoVO;
import com.ding9.entity.sortinfo.SortInfoVO;
import com.ding9.search.entity.product.ProductMaster;
import com.ding9.search.searcher.SearcherSingleton;
import com.ding9.search.searcher.support.result.CommentResult;
import com.ding9.search.searcher.support.result.ProductMasterResult;
import com.ding9.search.server.SearchService;
import com.ding9.search.service.ISearchService;
import com.ding9.util.Environment;
import com.ding9.util.KeywordsOptimizeFactory;
import com.ding9.util.ParserUtils;
import com.ding9.util.ProjectEnvironment;
import com.ding9.util.Randoms;
import com.ding9.util.StringHelper;
import com.ding9.util.UrlRewriteManager;
import java.io.PrintStream;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.lucene.index.IndexReader;
import org.apache.lucene.search.IndexSearcher;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class DefaultAction extends Action
{
  private static final Log log = LogFactory.getLog(DefaultAction.class);
  
  private static long lasttime = System.currentTimeMillis();
  private static long interTime = 1L;
  private static final int pageSize = 6;
  private static final int cur_page = 1;
  
  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    long lasttime = System.currentTimeMillis();
    
    seo(request);
    log.warn("seo cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    
    adv(request);
    log.warn("adv cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    

    newProduct(request, response);
    log.warn("newProduct cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    
    shop(request);
    log.warn("shop cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    

    eva(request, response);
    log.warn("eva cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    

    hotsale(request, response);
    log.warn("hotsale cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    

    productGuide(request, response);
    log.warn("productGuide cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    

    text(request);
    log.warn("text cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    

    minPriceProduct(request, response);
    log.warn("minPriceProduct cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    
    focus(request);
    log.warn("focus cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    

    comment(request);
    log.warn("comment cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    

    link(request);
    log.warn("link cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    
    setAllType(request);
    log.warn("setAllType cost time = " + (System.currentTimeMillis() - lasttime));
    lasttime = System.currentTimeMillis();
    //2014-08-28 String temp = "/usr/local/www/search_index_dir/searchservice/productmastermain/";
    String temp = "/usr/local/www/search_index_dir/searchservice4/productmastermain/";
    /*2014-08-29 临时取消,总提示类不存在错误,
     java.lang.NoClassDefFoundError: com/ding9/search/searcher/SearcherSingleton
      因为搜索程序已经被恢复到老版本了,将新的类拷贝过去,也还是错误
       
    IndexSearcher productMasterNum = SearcherSingleton.getProductMasterMainSearcher(temp);
    int productNum = productMasterNum.getIndexReader().numDocs();
    String productNums = StringHelper.toString(productNum, "###,###");
    request.setAttribute("productMasterNum", productNums);
    

//  2014-08-28 temp = "/usr/local/www/search_index_dir/searchservice/merchantinfo/";
    temp = "/usr/local/www/search_index_dir/searchservice4/merchantinfo/";
    
    IndexSearcher merchantNum = SearcherSingleton.getMerchantInfoSearcher(temp);
    int intMerchantNum = merchantNum.getIndexReader().numDocs();
    String merchantNums = StringHelper.toString(intMerchantNum, "###,###");
    request.setAttribute("merchantNum", merchantNums);
    */
    String imageHost = Environment.getImageDing9();
    request.setAttribute("imageHost", imageHost);
    return mapping.findForward("success");
  }
  
  private void setAllType(HttpServletRequest request) {
    CommonContentInfoDao contentDao = new CommonContentInfoDaoImpl();
    CommonContentInfo sortVO = 
      (CommonContentInfo)contentDao.getContentInfo(37).get(0);
    

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
    

    request.setAttribute("sortVO", sortVO);
  }
  


  private void minPriceProduct(HttpServletRequest request, HttpServletResponse response)
  {
    StringBuffer result = new StringBuffer();
    RecommonProductDao proDao = new RecommonProductDaoImpl();
    List list = proDao.query3(1007, 5);
    if ((list != null) && (list.size() == 5))
    {
      ProductInfoVO proInfo0 = (ProductInfoVO)list.get(0);
      String url = getProductUrl(proInfo0, response);
      result.append("<a href=" + url + ">" + "<img src=" + 
        Environment.getImageDing9() + proInfo0.getPic_address() + 
        " width=\"180\" height=\"160\" border=\"0\" />" + "</a>");
      result.append("<div id=\"huinews\"> <ul><li>");
      result.append("<a href=" + url + " class=\"co333\">" + 
        proInfo0.getPrma_name() + "</a>");
      result.append("</li></ul></div>");
      
      request.setAttribute("minPriceProduct0", result.toString());
      

      for (int i = 0; i < 4; i++) {
        ProductInfoVO proInfo = (ProductInfoVO)list.get(i + 1);
        url = getProductUrl(proInfo, response);
        result = new StringBuffer();
        result.append("<a href=" + url + ">" + "<img src=" + 
          Environment.getImageDing9() + proInfo.getPic_address() + 
          " width=\"68\" height=\"68\" border=\"0\" />" + 
          "</a>");
        result.append("<br/>");
        result.append("<a href=" + url + " class=\"co333\">" + 
          proInfo.getPrma_name() + "</a>");
        
        request.setAttribute("minPriceProduct" + (i + 1), result
          .toString());
      }
    }
  }
  




  private void productGuide(HttpServletRequest request, HttpServletResponse response)
  {
    SortInfoDao sortDao = new SortInfoDaoImpl();
    
    SortInfoVO productGuide = sortDao.getSort(1001);
    request.setAttribute("productGuide1", productGuide);
    
    productGuide = sortDao.getSort(1002);
    request.setAttribute("productGuide2", productGuide);
    
    productGuide = sortDao.getSort(1003);
    request.setAttribute("productGuide3", productGuide);
    
    productGuide = sortDao.getSort(1004);
    request.setAttribute("productGuide4", productGuide);
    
    productGuide = sortDao.getSort(1005);
    request.setAttribute("productGuide5", productGuide);
    

    RecommonProductDao proDao = new RecommonProductDaoImpl();
    for (int i = 0; i < 5; i++) {
      int t = 1001 + i;
      List list = proDao.query3(t, 5);
      StringBuffer divStr = new StringBuffer();
      if (list != null) {
        divStr.append("<ul>");
        for (int j = 0; j < list.size(); j++) {
          ProductInfoVO productInfo = (ProductInfoVO)list.get(j);
          
          String productUrl = getProductUrl(productInfo, 
            response);
          String prmaName = productInfo.getPrma_name();
          System.out.println(prmaName + "---length=" + prmaName.length());
          if (StringHelper.getStringLen(prmaName) > 23) {
            prmaName = StringHelper.truncate(prmaName, 23);
            prmaName = prmaName + "...";
          } else {
            for (int k = 0; k < 29 - StringHelper.getStringLen(prmaName); k++) {
              prmaName = prmaName + "&nbsp;&nbsp;";
            }
          }
          divStr.append("<li><div class=\"indexproK\">");
          divStr
            .append("<a href=\"" + 
            productUrl + 
            "\">" + 
            "<img src=\"" + 
            Environment.getImageDing9() + productInfo.getPic_address() + 
            "\"" + 
            " alt=\"" + 
            prmaName + 
            "\" " + 
            "width=\"120\"height=\"120\" border=\"0\" /></a>");
          divStr.append("</div><br/>");
          divStr.append("<div height='50px' ><a href=\"" + productUrl + "\">" + 
            prmaName + "<br /></a>");
          divStr.append("<span class=\"cored\">￥" + 
            productInfo.getMin_price() + "起</span></div><br/>");
          divStr
            .append("<div class=\"probutton\"><a href=\"" + productUrl + "\">比较价格</a></div>");
          divStr.append("</li>");
        }
        divStr.append("</ul>");
      }
      
      request.setAttribute("guideDiv" + t, divStr.toString());
    }
  }
  

  private String getProductUrl(ProductInfoVO productInfo, HttpServletResponse response)
  {
    StringBuffer urlbuff = new StringBuffer();
    urlbuff.append("/product/product-info.do?prma_id=");
    urlbuff.append(productInfo.getPrma_id());
    urlbuff.append("&prso_id_one=");
    urlbuff.append(productInfo.getPrso_id_one());
    urlbuff.append("&prso_name_one_en=");
    urlbuff.append(productInfo.getPrso_name_one_en());
    String url = response.encodeURL(urlbuff.toString());
    return url;
  }
  



  private void newProduct(HttpServletRequest request, HttpServletResponse response)
  {
    StringBuffer result = new StringBuffer();
    RecommonProductDao proDao = new RecommonProductDaoImpl();
    List list = proDao.query3(1000, 3);
    if ((list != null) && (list.size() == 3))
    {
      ProductInfoVO proInfo0 = (ProductInfoVO)list.get(0);
      
      StringBuffer urlbuff = new StringBuffer();
      urlbuff.append("/product/product-info.do?prma_id=").append(
        proInfo0.getPrma_id()).append("&prso_id_one=").append(
        proInfo0.getPrso_id_one()).append("&prso_name_one_en=")
        .append(proInfo0.getPrso_name_one_en());
      String url = response.encodeURL(urlbuff.toString());
      result.append("<div id=\"newpro_1\">");
      result.append("<a href=" + url + ">" + "<img src=" + 
        Environment.getImageDing9() + proInfo0.getPic_address() + 
        " width=\"120\" height=\"120\" border=\"0\" />" + "</a>");
      result.append("<br/><br/>");
      result.append("<a href=" + url + " class=\"co333 bold\">" + 
        proInfo0.getPrma_name() + "</a>");
      result.append("<br/>");
      result.append("<span class=\"cored\">￥" + proInfo0.getMin_price() + 
        "起</span>");
      result.append("</div>");
      
      ProductInfoVO proInfo1 = (ProductInfoVO)list.get(1);
      urlbuff = new StringBuffer();
      urlbuff.append("/product/product-info.do?prma_id=").append(
        proInfo1.getPrma_id()).append("&prso_id_one=").append(
        proInfo1.getPrso_id_one()).append("&prso_name_one_en=")
        .append(proInfo1.getPrso_name_one_en());
      url = response.encodeURL(urlbuff.toString());
      result.append("<div id=\"newpro_2\">");
      result.append("<a href=" + url + ">" + "<img src=" + 
        Environment.getImageDing9() + proInfo1.getPic_address() + 
        " width=\"60\" height=\"60\" border=\"0\" />" + "</a>");
      result.append("<br/>");
      String prmaName = proInfo1.getPrma_name();
      if (proInfo1.getPrma_name().length() > 8) {
        prmaName = StringHelper.truncate(proInfo1.getPrma_name(), 8);
        prmaName = prmaName + "。。。";
      }
      result.append("<a href=" + url + " class=\"co333 bold\">" + 
        prmaName + "</a>");
      result.append("<br/><br/>");
      
      ProductInfoVO proInfo2 = (ProductInfoVO)list.get(2);
      urlbuff = new StringBuffer();
      urlbuff.append("/product/product-info.do?prma_id=").append(
        proInfo2.getPrma_id()).append("&prso_id_one=").append(
        proInfo2.getPrso_id_one()).append("&prso_name_one_en=")
        .append(proInfo2.getPrso_name_one_en());
      url = response.encodeURL(urlbuff.toString());
      result.append("<a href=" + url + ">" + "<img src=" + 
        Environment.getImageDing9() + proInfo2.getPic_address() + 
        " width=\"60\" height=\"60\" border=\"0\" />" + "</a>");
      result.append("<br/>");
      prmaName = proInfo2.getPrma_name();
      if (proInfo2.getPrma_name().length() > 8) {
        prmaName = StringHelper.truncate(proInfo2.getPrma_name(), 8);
        prmaName = prmaName + "。。。";
      }
      result.append("<a href=" + url + " class=\"co333 bold\">" + 
        prmaName + "</a>");
      result.append("</div>");
    }
    

    request.setAttribute("scroll0", result.toString());
  }
  



  public void seo(HttpServletRequest request)
  {
    String title = KeywordsOptimizeFactory.getInstance().getKeopTitle(201, 
      null);
    String desc = KeywordsOptimizeFactory.getInstance().getKeopDescription(
      201, null);
    String keywords = KeywordsOptimizeFactory.getInstance()
      .getKeopKeyWords(201, null);
    



    request.setAttribute("Page_Title", title);
    request.setAttribute("Page_Desc", desc);
    request.setAttribute("Page_Keywords", keywords);
    request.setAttribute("META", ProjectEnvironment.getMETA());
  }
  




  public void shop(HttpServletRequest request)
  {
    SalePromotionDao saleDao = new SalePromotionDaoImpl();
    List listShopping = null;
    listShopping = saleDao.queryIndex(7, 1, 1, 6);
    request.setAttribute("listShopping", listShopping);
  }
  




  public void hotsale(HttpServletRequest request, HttpServletResponse response)
  {
    long begintime = System.currentTimeMillis();
    
    SortInfoDao sortDao = new SortInfoDaoImpl();
    SortInfoVO sortvo1 = null;
    SortInfoVO sortvo2 = null;
    SortInfoVO sortvo3 = null;
    SortInfoVO sortvo4 = null;
    SortInfoVO sortvo5 = null;
    SortInfoVO sortvo6 = null;
    SortInfoVO sortvo7 = null;
    SortInfoVO sortvo8 = null;
    

    if ((sortvo1 == null) || 
      (System.currentTimeMillis() - lasttime > interTime)) {
      sortvo1 = sortDao.getSort(55);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo2 == null) || 
      (System.currentTimeMillis() - lasttime > interTime)) {
      sortvo2 = sortDao.getSort(56);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo3 == null) || 
      (System.currentTimeMillis() - lasttime > interTime)) {
      sortvo3 = sortDao.getSort(57);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo4 == null) || 
      (System.currentTimeMillis() - lasttime > interTime)) {
      sortvo4 = sortDao.getSort(58);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo5 == null) || 
      (System.currentTimeMillis() - lasttime > interTime)) {
      sortvo5 = sortDao.getSort(59);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo6 == null) || 
      (System.currentTimeMillis() - lasttime > interTime)) {
      sortvo6 = sortDao.getSort(60);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo7 == null) || 
      (System.currentTimeMillis() - lasttime > interTime)) {
      sortvo7 = sortDao.getSort(61);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo8 == null) || 
      (System.currentTimeMillis() - lasttime > interTime)) {
      sortvo8 = sortDao.getSort(62);
      lasttime = System.currentTimeMillis();
    }
    



    String str0 = null;
    String str1 = null;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    String str6 = null;
    String str7 = null;
    
    if ((str0 == null) || (System.currentTimeMillis() - lasttime > interTime))
    {

      str0 = getproinf(55, 8, 0, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str1 == null) || (System.currentTimeMillis() - lasttime > interTime))
    {

      str1 = getproinf(56, 8, 1, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str2 == null) || (System.currentTimeMillis() - lasttime > interTime))
    {

      str2 = getproinf(57, 8, 2, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str3 == null) || (System.currentTimeMillis() - lasttime > interTime))
    {

      str3 = getproinf(58, 8, 3, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str4 == null) || (System.currentTimeMillis() - lasttime > interTime))
    {

      str4 = getproinf(59, 8, 4, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str5 == null) || (System.currentTimeMillis() - lasttime > interTime))
    {

      str5 = getproinf(60, 8, 5, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str6 == null) || (System.currentTimeMillis() - lasttime > interTime))
    {

      str6 = getproinf(61, 8, 6, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str7 == null) || (System.currentTimeMillis() - lasttime > interTime))
    {

      str7 = getproinf(62, 8, 7, response);
      lasttime = System.currentTimeMillis();
    }
    
    request.setAttribute("str0", str0);
    request.setAttribute("str1", str1);
    request.setAttribute("str2", str2);
    request.setAttribute("str3", str3);
    request.setAttribute("str4", str4);
    request.setAttribute("str5", str5);
    request.setAttribute("str6", str6);
    request.setAttribute("str7", str7);
    
    request.setAttribute("sortvo1", sortvo1);
    request.setAttribute("sortvo2", sortvo2);
    request.setAttribute("sortvo3", sortvo3);
    request.setAttribute("sortvo4", sortvo4);
    request.setAttribute("sortvo5", sortvo5);
    request.setAttribute("sortvo6", sortvo6);
    request.setAttribute("sortvo7", sortvo7);
    request.setAttribute("sortvo8", sortvo8);
  }
  





  public void scroll(HttpServletRequest request, HttpServletResponse response)
  {
    int[] arr = Randoms.random(6);
    String scroll0 = null;
    String scroll1 = null;
    String scroll2 = null;
    String scroll3 = null;
    String scroll4 = null;
    String scroll5 = null;
    

    if ((scroll0 == null) || 
      (System.currentTimeMillis() - lasttime > interTime))
    {
      scroll0 = scroll(63, 6, arr[0], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll1 == null) || 
      (System.currentTimeMillis() - lasttime > interTime))
    {
      scroll1 = scroll(64, 6, arr[1], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll2 == null) || 
      (System.currentTimeMillis() - lasttime > interTime))
    {
      scroll2 = scroll(65, 6, arr[2], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll3 == null) || 
      (System.currentTimeMillis() - lasttime > interTime))
    {
      scroll3 = scroll(66, 6, arr[3], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll4 == null) || 
      (System.currentTimeMillis() - lasttime > interTime))
    {
      scroll4 = scroll(67, 6, arr[4], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll5 == null) || 
      (System.currentTimeMillis() - lasttime > interTime))
    {
      scroll5 = scroll(68, 6, arr[5], response);
      lasttime = System.currentTimeMillis();
    }
    
    request.setAttribute("scroll1", scroll1);
    request.setAttribute("scroll2", scroll2);
    request.setAttribute("scroll3", scroll3);
    request.setAttribute("scroll4", scroll4);
    request.setAttribute("scroll5", scroll5);
  }
  





  public void link(HttpServletRequest request)
  {
    HotProductDao hotdao = new HotProductDaoImpl();
    
    List listLinkMobile = null;
    listLinkMobile = hotdao.query(3, 1, 6);
    request.setAttribute("ListMobile", listLinkMobile);
    
    List listLinkDigital = null;
    listLinkDigital = hotdao.query(4, 1, 6);
    request.setAttribute("ListDigital", listLinkDigital);
    
    List listLinkBeauty = null;
    listLinkBeauty = hotdao.query(5, 1, 6);
    request.setAttribute("ListBeauty", listLinkBeauty);
    
    List listLinkComputer = null;
    listLinkComputer = hotdao.query(6, 1, 6);
    request.setAttribute("ListComputer", listLinkComputer);
    
    List listLinkOffice = null;
    listLinkOffice = hotdao.query(7, 1, 6);
    request.setAttribute("ListOffice", listLinkOffice);
    
    List listLinkHea = null;
    listLinkHea = hotdao.query(8, 1, 6);
    request.setAttribute("ListHea", listLinkHea);
    
    List listLinkLove = null;
    listLinkLove = hotdao.query(9, 1, 6);
    request.setAttribute("ListLove", listLinkLove);
    
    List listLinkCoupon = null;
    listLinkCoupon = hotdao.query(10, 1, 6);
    request.setAttribute("ListCoupon", listLinkCoupon);
    
    List listLinkPromotion = null;
    listLinkPromotion = hotdao.query(11, 1, 6);
    request.setAttribute("ListPromotion", listLinkPromotion);
  }
  





  public void text(HttpServletRequest request)
  {
    CommonContentInfoDao contentDao = new CommonContentInfoDaoImpl();
    String content = "";
    
    CommonContentInfo sortVO = null;
    sortVO = (CommonContentInfo)contentDao.getContentInfo(26).get(0);
    request.setAttribute("sortVO", sortVO);
    
    CommonContentInfo shopVO = null;
    shopVO = (CommonContentInfo)contentDao.getContentInfo(35).get(0);
    request.setAttribute("shopVO", shopVO);
    
    CommonContentInfo shop2VO = null;
    shop2VO = (CommonContentInfo)contentDao.getContentInfo(36).get(0);
    request.setAttribute("shop2VO", shop2VO);
    
    CommonContentInfo merchantVO = null;
    merchantVO = (CommonContentInfo)contentDao.getContentInfo(27).get(0);
    merchantVO.setContent(
      StringHelper.truncate(merchantVO.getContent(), 25));
    request.setAttribute("merchantVO", merchantVO);
    
    CommonContentInfo mobileVO = null;
    mobileVO = (CommonContentInfo)contentDao.getContentInfo(28).get(0);
    content = mobileVO.getContent();
    request.setAttribute("mobileVO", mobileVO);
    
    CommonContentInfo digitalVO = null;
    digitalVO = (CommonContentInfo)contentDao.getContentInfo(29).get(0);
    request.setAttribute("digitalVO", digitalVO);
    
    CommonContentInfo pcVO = null;
    pcVO = (CommonContentInfo)contentDao.getContentInfo(30).get(0);
    request.setAttribute("pcVO", pcVO);
    
    CommonContentInfo officeVO = null;
    officeVO = (CommonContentInfo)contentDao.getContentInfo(31).get(0);
    request.setAttribute("officeVO", officeVO);
    
    CommonContentInfo heaVO = null;
    heaVO = (CommonContentInfo)contentDao.getContentInfo(32).get(0);
    request.setAttribute("heaVO", heaVO);
    
    CommonContentInfo beautiVO = null;
    beautiVO = (CommonContentInfo)contentDao.getContentInfo(33).get(0);
    request.setAttribute("beautiVO", beautiVO);
    
    CommonContentInfo loveVO = null;
    loveVO = (CommonContentInfo)contentDao.getContentInfo(34).get(0);
    request.setAttribute("loveVO", loveVO);
  }
  




  public void adv(HttpServletRequest request)
    throws SQLException
  {
    long begintime = System.currentTimeMillis();
    AdvertisementDao addao = new AdvertisementDaoImpl();
    String adv_66_603 = null;
    adv_66_603 = addao.getAds(66, 603);
    request.setAttribute("adv_66_603", adv_66_603);
    
    String adv_66_389 = null;
    adv_66_389 = addao.getAds(66, 389);
    request.setAttribute("adv_66_389", adv_66_389);
    
    String adv_66_390 = null;
    adv_66_390 = addao.getAds(66, 390);
    request.setAttribute("adv_66_390", adv_66_390);
    
    String adv_66_604 = null;
    adv_66_604 = addao.getAds(66, 604);
    request.setAttribute("adv_66_604", adv_66_604);
    
    String adv_66_392 = null;
    adv_66_392 = addao.getAds(66, 392);
    request.setAttribute("adv_66_392", adv_66_392);
    
    String adv_66_393 = null;
    adv_66_393 = addao.getAds(66, 393);
    request.setAttribute("adv_66_393", adv_66_393);
    

    String adv_66_599 = addao.getAds(66, 599);
    request.setAttribute("adv_66_599", adv_66_599);
    

    String adv_66_600 = addao.getAds(66, 600);
    request.setAttribute("adv_66_600", adv_66_600);
    

    String adv_66_601 = addao.getAds(66, 601);
    request.setAttribute("adv_66_601", adv_66_601);
    

    String adv_66_602 = addao.getAds(66, 602);
    request.setAttribute("adv_66_602", adv_66_602);
  }
  





  public void keyword(HttpServletRequest request)
    throws SQLException
  {
    IndexKeyDao keydao = new IndexKeyDaoImpl();
    List keyList = null;
    keyList = keydao.queryKey(1000007);
    request.setAttribute("keyList", keyList);
  }
  






  public void eva(HttpServletRequest request, HttpServletResponse response)
  {
    ArticleDao articledao = new ArticleDaoImpl();
    List evaList = null;
    List direList = null;
    evaList = articledao.query(46, 10);
    direList = articledao.query(47, 10);
    
    StringBuffer evaStr = new StringBuffer();
    if (evaList.size() >= 9) {
      for (int i = 0; i < 9; i++) {
        ArticleVO vo = (ArticleVO)evaList.get(i);
        


        StringBuffer url = new StringBuffer();
        url.append(ProjectEnvironment.getChannelDomainName(
          String.valueOf(vo.getPrsoId())));
        url.append(response.encodeURL("/news/news-info.do?article_id=" + 
          vo.getArticle_id() + "&prso_id_one=" + vo.getPrsoId() + 
          "&prso_name_one_en=" + vo.getPrsoNameOneEn()));
        String title = vo.getTitle();
        if (title.getBytes().length > 25) {
          title = StringHelper.getSubString(title, 25);
        }
        String urlTitle = "<a target=\"_blank\" href=\"" + url + 
          "\" class=\"H1\">" + title + "</a>";
        
        String urlImg = "<a target=\"_blank\" href=\"" + url + 
          "\" class=\"H1\">" + 
          "<img id=Img_DivShopPaiHangFlag1_" + (i + 1) + 
          " height=50 alt=" + vo.getTitle() + " width=50></a>";
        
        evaStr.append("<li class=\"more\" id=\"DivShopPaiHangFlag1_B" + (
          i + 1) + "\" style=\"DISPLAY: none\">\"");
        evaStr.append("<p class=\"numBig l\"><span>" + (i + 1) + 
          "</span></p>");
        evaStr.append("<p class=\"productImg l\">" + urlImg + "</p>");
        evaStr.append("<div class=\"productInfo\"><h3>" + urlTitle + 
          "</h3></div>");
        evaStr.append("<div id=\"ImgSrc_DivShopPaiHangFlag1_" + (i + 1) + 
          "\" " + "style=\"DISPLAY: none\">" + "http://img.ding9.com" + vo.getPicture() + "</div>");
        evaStr.append("<span class=\"cf\"></span></li>");
        evaStr
          .append("<li class=\"num" + (
          i + 1) + 
          " listHeight\" id=\"DivShopPaiHangFlag1_S" + (
          i + 1) + 
          "\" " + 
          "onMouseOver=\"SwapPaiHangShopDiv('DivShopPaiHangFlag1','" + (
          i + 1) + "')\">" + urlTitle + "</li>");
      }
    }
    


    request.setAttribute("evaStr", evaStr);
    

    request.setAttribute("direList", direList);
  }
  




  public void focus(HttpServletRequest request)
  {
    SysnewsDao newDao = new SysnewsDaoImpl();
    List listjujiao = null;
    listjujiao = newDao.query(2, 1, 9);
    request.setAttribute("SYSNEWS", listjujiao);
  }
  




  public void comment(HttpServletRequest request)
  {
    long begintime = System.currentTimeMillis();
    CommentsDao commentsDao = new com.ding9.dao.comments.CommentsDaoImpl();
    List listpinglun = null;
    listpinglun = commentsDao.query(10000007, 1, 6);
    request.setAttribute("CommentsOnProductByHomePage", listpinglun);
  }
  
  private String getproinf(int sortid, int size, int d, HttpServletResponse response)
  {
    StringBuffer result = new StringBuffer();
    String[] day = { "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", 
      "SERVEN", "EIGHT" };
    ProductMasterDao mstDao = new ProductMasterDaoImpl();
    RecommonProductDao proDao = new RecommonProductDaoImpl();
    result
      .append("<div id=\"RECOMMEND_PRODUCT_" + 
      day[d] + "\" style=\"display:none\">");
    
    List list = proDao.query3(sortid, size);
    for (int i = 0; (list != null) && (i < list.size()); i++) {
      if (list.get(i) != null) {
        ProductInfoVO proinfoVO = (ProductInfoVO)list.get(i);
        ISearchService service = new SearchService();
        
        CommentResult cr = service.getComments(proinfoVO.getPrma_id(), 1, 10, true);
        ProductMasterResult pr = service.getStandardProducts("", 0, 0, proinfoVO.getPrma_id(), 0.0F, 0.0F, 0, 1, 10, true, "");
        ProductMaster[] pms = pr.getRecords();
        int merchant_count = 0;
        if ((pms != null) && (pms.length > 0))
          merchant_count = pms[0].getMerchant_count();
        int info_id = proinfoVO.getInfo_id();
        int pic_isupdate = proinfoVO.getPic_isupdate();
        int prma_id = proinfoVO.getPrma_id();
        int prso_id_one = proinfoVO.getPrso_id_one();
        int sort_id = proinfoVO.getSort_id();
        float min_price = proinfoVO.getMin_price();
        String pic_address = proinfoVO.getPic_address();
        String prma_name = proinfoVO.getPrma_name();
        result.append(info_id);
        result.append("{}");
        result.append(merchant_count);
        result.append("{}");
        result.append(pic_isupdate);
        result.append("{}");
        String urlNew = 
          "/product/product-info.do?prma_id=" + prma_id + 
          "&prso_id_one=" + prso_id_one + 
          "&prso_name_one_en=" + 
          proinfoVO.getPrso_name_one_en() + 
          "&type=comment";
        int count = cr.getRecordCount();
        
        if (count == 0) {
          result.append(
            "<a target='_blank' class='H1' href='http://www.ding9.com" + 
            response.encodeURL(urlNew) + 
            "#AddContent'><font color=\"#0066cc\">发表评论</font></a>");
        }
        else {
          result.append(
            "<a target='_blank' class='H1' href='http://www.ding9.com" + 
            response.encodeURL(urlNew) + 
            "#viewc'><font color=\"#0066cc\">" + 
            count + "</font></a>");
        }
        result.append("{}");
        result.append(prso_id_one);
        result.append("{}");
        result.append(sort_id);
        result.append("{}");
        result.append(min_price);
        result.append("{}");
        result.append(pic_address);
        result.append("{}");
        result.append(prma_name);
        result.append("{}");
        ProductMasterVO mstVO = mstDao.finkbypk(prma_id);
        


        if (mstVO.getPrma_remark() != null) {
          result.append(ParserUtils.parse(mstVO.getPrma_remark()));
        }
        result.append("{}");
        result.append(count);
        result.append("{}");
        result.append(response.encodeURL(urlNew));
        result.append("{}");
        result.append(response.encodeURL(
          urlNew + "&all=1"));
        result.append("[] ");
      }
    }
    result.append("</div>");
    return result.toString();
  }
  
  private String scroll(int sortid, int size, int n, HttpServletResponse response)
  {
    RecommonProductDao proDao = new RecommonProductDaoImpl();
    List list = proDao.query3(sortid, size);
    StringBuffer result = new StringBuffer();
    int j = 0;
    if (n == 0) {
      result.append("<tbody id=\"block1\">");
    } else
      result.append("<tbody id=\"block").append(n + 1).append(
        "\" style=\"DISPLAY:none\">");
    for (int i = 0; (list != null) && (i < list.size()); i++) {
      if (list.get(i) != null) {
        ProductInfoVO proinfoVO = (ProductInfoVO)list.get(i);
        int merchant_count = proinfoVO.getMerchant_count();
        int prma_id = proinfoVO.getPrma_id();
        float min_price = proinfoVO.getMin_price();
        String pic_address = proinfoVO.getPic_address();
        String prma_name = proinfoVO.getPrma_name();
        if (prma_name != null)
          prma_name = prma_name.trim();
        if (j == 0) {
          result.append("<td>");
        } else if (j % 2 == 0) {
          result.append("</td>");
          result.append("<td>");
        }
        
        result.append("<table width=\"190\" height=\"105\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">");
        result.append("<tr>");
        result.append("<td width=\"85\">");
        if (StringUtils.isBlank(pic_address)) {
          pic_address = 
            Environment.getImageDing9() + 
            "/Updata/Shoppic/want.gif";
        } else
          pic_address = 
            Environment.getImageDing9() + pic_address;
        StringBuffer urlbuff = new StringBuffer();
        urlbuff.append("/product/product-info.do?prma_id=").append(
          prma_id).append("&prso_id_one=").append(
          proinfoVO.getPrso_id_one())
          .append("&prso_name_one_en=").append(
          proinfoVO.getPrso_name_one_en());
        String url = response.encodeURL(urlbuff.toString());
        result.append("<a target=\"_blank\" href=\"").append(url)
          .append("\">");
        result.append("<img src=").append(pic_address).append(
          " width=\"80\" height=\"80\" alt=\"").append(prma_name)
          .append("\" border=\"0\"/></a>");
        result.append("</td>");
        result.append("<td><a target=\"_blank\" class=\"H3\" title=\"")
          .append(prma_name).append("\" href=\"");
        if ((prma_name != null) && (prma_name.length() > 24))
          prma_name = prma_name.substring(0, 24);
        result.append(url).append("\">").append(prma_name).append(
          "</a><br/>");
        result
          .append(
          "<span class=\"H1\">来自</span><span class=\"H2\">")
          .append(merchant_count)
          .append(
          "</span><span class=\"H1\">个商家</span><br/>");
        result.append("<span class=\"H2\">￥").append(min_price)
          .append("</span>");
        result.append("</td>");
        result.append("</tr>");
        result.append("</table>");
        j++;
      }
    }
    if (j > 0)
      result.append("</td>");
    result.append("</tbody>");
    return result.toString();
  }
  
  public static void main(String[] args) {
    String temp = "aaa中国人";
    System.out.println("aa=" + temp.getBytes().length);
    System.out.println("aa=" + temp.substring(0, 5));
    String productNums = StringHelper.toString(1111222222, "###,###");
    System.out.println("aa=" + productNums);
  }
}

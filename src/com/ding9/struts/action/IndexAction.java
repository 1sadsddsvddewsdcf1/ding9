package com.ding9.struts.action;

import com.ding9.click.util.StringHelper;
import com.ding9.dao.advertisement.AdvertisementDao;
import com.ding9.dao.advertisement.AdvertisementDaoImpl;
import com.ding9.dao.article.ArticleDao;
import com.ding9.dao.article.ArticleDaoImpl;
import com.ding9.dao.comments.CommentsDao;
import com.ding9.dao.comments.CommentsDaoImpl;
import com.ding9.dao.contentinfo.CommonContentInfoDao;
import com.ding9.dao.contentinfo.CommonContentInfoDaoImpl;
import com.ding9.dao.copartner.CopartnerDao;
import com.ding9.dao.copartner.CopartnerDaoImpl;
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
import com.ding9.search.searcher.support.result.CommentResult;
import com.ding9.search.searcher.support.result.ProductMasterResult;
import com.ding9.search.server.SearchService;
import com.ding9.search.service.ISearchService;
import com.ding9.util.Environment;
import com.ding9.util.KeywordsOptimizeFactory;
import com.ding9.util.ParserUtils;
import com.ding9.util.ProjectEnvironment;
import com.ding9.util.Randoms;
import java.io.PrintStream;
import java.sql.SQLException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.lang.StringUtils;
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
  
  private static long lasttime = System.currentTimeMillis();
  


  private static final int pageSize = 6;
  


  private static final int cur_page = 1;
  


  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    seo(request);
    

    hotsale(request, response);
    
    link(request);
    
    text(request);
    
    adv(request);
    
    keyword(request);
    
    eva(request);
    
    focus(request);
    
    comment(request);
    
    shop(request);
    

    scroll(request, response);
    //2014-08-27增加取商情速递 2014-08-29 实际productGuide是小九九推荐
    productGuide(request, response);

    String imageHost = Environment.getImageDing9();
    request.setAttribute("imageHost", imageHost);
    return mapping.findForward("success");
  }
  



  public void seo(HttpServletRequest request)
  {
    String title = KeywordsOptimizeFactory.getInstance().getKeopTitle(201, null);
    String desc = KeywordsOptimizeFactory.getInstance().getKeopDescription(201, null);
    String keywords = KeywordsOptimizeFactory.getInstance().getKeopKeyWords(201, null);
    
    request.setAttribute("Page_Title", title);
    request.setAttribute("Page_Desc", desc);
    request.setAttribute("Page_Keywords", keywords);
    request.setAttribute("META", ProjectEnvironment.getMETA());
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
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      sortvo1 = sortDao.getSort(55);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo2 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      sortvo2 = sortDao.getSort(56);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo3 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      sortvo3 = sortDao.getSort(57);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo4 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      sortvo4 = sortDao.getSort(58);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo5 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      sortvo5 = sortDao.getSort(59);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo6 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      sortvo6 = sortDao.getSort(60);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo7 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      sortvo7 = sortDao.getSort(61);
      lasttime = System.currentTimeMillis();
    }
    if ((sortvo8 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      sortvo8 = sortDao.getSort(62);
      lasttime = System.currentTimeMillis();
    }
    try
    {
      if (log.isWarnEnabled()) {
        log.warn("(热销排行)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    


    String str0 = null;
    String str1 = null;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    String str6 = null;
    String str7 = null;
    
    if ((str0 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {

      str0 = getproinf(55, 8, 0, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str1 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {

      str1 = getproinf(56, 8, 1, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str2 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {

      str2 = getproinf(57, 8, 2, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str3 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {

      str3 = getproinf(58, 8, 3, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str4 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {

      str4 = getproinf(59, 8, 4, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str5 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {

      str5 = getproinf(60, 8, 5, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str6 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {

      str6 = getproinf(61, 8, 6, response);
      lasttime = System.currentTimeMillis();
    }
    if ((str7 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
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
    long begintime = System.currentTimeMillis();
    
    int[] arr = Randoms.random(6);
    String scroll0 = null;
    String scroll1 = null;
    String scroll2 = null;
    String scroll3 = null;
    String scroll4 = null;
    String scroll5 = null;
    

    if ((scroll0 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {
      scroll0 = scroll(63, 6, arr[0], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll1 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {
      scroll1 = scroll(64, 6, arr[1], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll2 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {
      scroll2 = scroll(65, 6, arr[2], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll3 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {
      scroll3 = scroll(66, 6, arr[3], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll4 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {
      scroll4 = scroll(67, 6, arr[4], response);
      lasttime = System.currentTimeMillis();
    }
    if ((scroll5 == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L))
    {
      scroll5 = scroll(68, 6, arr[5], response);
      lasttime = System.currentTimeMillis();
    }
    try {
      if (log.isWarnEnabled()) {
        log.warn("(推荐)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    
    request.setAttribute("scroll0", scroll0);
    request.setAttribute("scroll1", scroll1);
    request.setAttribute("scroll2", scroll2);
    request.setAttribute("scroll3", scroll3);
    request.setAttribute("scroll4", scroll4);
    request.setAttribute("scroll5", scroll5);
  }
  





  public void link(HttpServletRequest request)
  {
    List listLinkMobile = null;
    List listLinkDigital = null;
    List listLinkBeauty = null;
    List listLinkComputer = null;
    List listLinkOffice = null;
    List listLinkHea = null;
    List listLinkLove = null;
    List listLinkCoupon = null;
    List listLinkPromotion = null;
    
    HotProductDao hotdao = new HotProductDaoImpl();
    long begintime = System.currentTimeMillis();
    
    if ((listLinkMobile == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listLinkMobile = hotdao.query(3, 1, 6);
    }
    if ((listLinkDigital == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listLinkDigital = hotdao.query(4, 1, 6);
    }
    if ((listLinkBeauty == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listLinkBeauty = hotdao.query(5, 1, 6);
    }
    
    if ((listLinkComputer == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listLinkComputer = hotdao.query(6, 1, 6);
    }
    if ((listLinkOffice == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listLinkOffice = hotdao.query(7, 1, 6);
    }
    if ((listLinkHea == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listLinkHea = hotdao.query(8, 1, 6);
    }
    if ((listLinkLove == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listLinkLove = hotdao.query(9, 1, 6);
    }
    if ((listLinkCoupon == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listLinkCoupon = hotdao.query(10, 1, 6);
    }
    if ((listLinkPromotion == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listLinkPromotion = hotdao.query(11, 1, 6);
    }
    /*2014-07-27 增加首页友情连接的查询 */
    CopartnerDao yqljdao = new CopartnerDaoImpl();
    List yqlj = null;
    if ((yqlj == null) || 
       (System.currentTimeMillis() - lasttime > 3600000L)) {
    	yqlj = yqljdao.query(3, 50);
    }
    request.setAttribute("yqlj", yqlj);
    
    lasttime = System.currentTimeMillis();
    try {
      if (log.isWarnEnabled()) {
        log.warn("(文字连接)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    

    request.setAttribute("ListMobile", listLinkMobile);
    request.setAttribute("ListDigital", listLinkDigital);
    request.setAttribute("ListBeauty", listLinkBeauty);
    request.setAttribute("ListComputer", listLinkComputer);
    request.setAttribute("ListOffice", listLinkOffice);
    request.setAttribute("ListHea", listLinkHea);
    request.setAttribute("ListLove", listLinkLove);
    request.setAttribute("ListCoupon", listLinkCoupon);
    request.setAttribute("ListPromotion", listLinkPromotion);
  }
  




  public void text(HttpServletRequest request)
  {
    long begintime = System.currentTimeMillis();
    CommonContentInfoDao contentDao = new CommonContentInfoDaoImpl();
    CommonContentInfo sortVO = null;
    CommonContentInfo shopVO = null;
    CommonContentInfo shop2VO = null;
    CommonContentInfo merchantVO = null;
    CommonContentInfo mobileVO = null;
    CommonContentInfo digitalVO = null;
    CommonContentInfo pcVO = null;
    CommonContentInfo officeVO = null;
    CommonContentInfo heaVO = null;
    CommonContentInfo beautiVO = null;
    CommonContentInfo loveVO = null;
    
    if ((sortVO == null) || (System.currentTimeMillis() > 3600000L)) {
      sortVO = (CommonContentInfo)contentDao.getContentInfo(26).get(0);
      lasttime = System.currentTimeMillis();
    }
    if ((shopVO == null) || (System.currentTimeMillis() > 3600000L)) {
      shopVO = (CommonContentInfo)contentDao.getContentInfo(35).get(0);
      lasttime = System.currentTimeMillis();
    }
    if ((shop2VO == null) || (System.currentTimeMillis() > 3600000L)) {
      shop2VO = (CommonContentInfo)contentDao.getContentInfo(36).get(0);
      lasttime = System.currentTimeMillis();
    }
    if ((merchantVO == null) || (System.currentTimeMillis() > 3600000L)) {
      merchantVO = (CommonContentInfo)contentDao.getContentInfo(27).get(
        0);
      lasttime = System.currentTimeMillis();
    }
    if ((mobileVO == null) || (System.currentTimeMillis() > 3600000L)) {
      mobileVO = (CommonContentInfo)contentDao.getContentInfo(28).get(0);
      lasttime = System.currentTimeMillis();
    }
    if ((digitalVO == null) || (System.currentTimeMillis() > 3600000L)) {
      digitalVO = 
        (CommonContentInfo)contentDao.getContentInfo(29).get(0);
      lasttime = System.currentTimeMillis();
    }
    if ((pcVO == null) || (System.currentTimeMillis() > 3600000L)) {
      pcVO = (CommonContentInfo)contentDao.getContentInfo(30).get(0);
      lasttime = System.currentTimeMillis();
    }
    if ((officeVO == null) || (System.currentTimeMillis() > 3600000L)) {
      officeVO = (CommonContentInfo)contentDao.getContentInfo(31).get(0);
      lasttime = System.currentTimeMillis();
    }
    if ((heaVO == null) || (System.currentTimeMillis() > 3600000L)) {
      heaVO = (CommonContentInfo)contentDao.getContentInfo(32).get(0);
      lasttime = System.currentTimeMillis();
    }
    if ((beautiVO == null) || (System.currentTimeMillis() > 3600000L)) {
      beautiVO = (CommonContentInfo)contentDao.getContentInfo(33).get(0);
      lasttime = System.currentTimeMillis();
    }
    if ((loveVO == null) || (System.currentTimeMillis() > 3600000L)) {
      loveVO = (CommonContentInfo)contentDao.getContentInfo(34).get(0);
      lasttime = System.currentTimeMillis();
    }
    try {
      if (log.isWarnEnabled()) {
        log.warn("(文本域)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    request.setAttribute("sortVO", sortVO);
    request.setAttribute("shopVO", shopVO);
    request.setAttribute("shop2VO", shop2VO);
    request.setAttribute("merchantVO", merchantVO);
    request.setAttribute("mobileVO", mobileVO);
    request.setAttribute("digitalVO", digitalVO);
    request.setAttribute("pcVO", pcVO);
    request.setAttribute("officeVO", officeVO);
    request.setAttribute("heaVO", heaVO);
    request.setAttribute("beautiVO", beautiVO);
    request.setAttribute("loveVO", loveVO);
  }
  




  public void adv(HttpServletRequest request)
    throws SQLException
  {
    long begintime = System.currentTimeMillis();
    AdvertisementDao addao = new AdvertisementDaoImpl();
    String adv_66_388 = null;
    String adv_66_389 = null;
    String adv_66_390 = null;
    String adv_66_391 = null;
    String adv_66_392 = null;
    String adv_66_393 = null;
    


    adv_66_388 = addao.getAds(66, 388);
    
    System.out.println("adv_66_388=" + adv_66_388);
    System.out.println("adv_66_389=" + adv_66_389);
    System.out.println("adv_66_390=" + adv_66_390);
    System.out.println("adv_66_391=" + adv_66_391);
    System.out.println("adv_66_392=" + adv_66_392);
    System.out.println("adv_66_393=" + adv_66_393);
    









    adv_66_389 = addao.getAds(66, 389);
    



    adv_66_390 = addao.getAds(66, 390);
    



    adv_66_391 = addao.getAds(66, 391);
    



    adv_66_392 = addao.getAds(66, 392);
    



    adv_66_393 = addao.getAds(66, 393);
    
    try
    {
      if (log.isWarnEnabled()) {
        log.warn("(广告)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    
    request.setAttribute("adv_66_388", adv_66_388);
    request.setAttribute("adv_66_389", adv_66_389);
    request.setAttribute("adv_66_390", adv_66_390);
    request.setAttribute("adv_66_391", adv_66_391);
    request.setAttribute("adv_66_392", adv_66_392);
    request.setAttribute("adv_66_393", adv_66_393);
  }
  




  public void keyword(HttpServletRequest request)
    throws SQLException
  {
    long begintime = System.currentTimeMillis();
    IndexKeyDao keydao = new IndexKeyDaoImpl();
    List keyList = null;
    if ((keyList == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
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
  }
  




  public void eva(HttpServletRequest request)
  {
    long begintime = System.currentTimeMillis();
    ArticleDao articledao = new ArticleDaoImpl();
    List evaList = null;
    List direList = null;
    
    if ((evaList == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      evaList = articledao.query(46, 7);
      lasttime = System.currentTimeMillis();
    }
    if ((direList == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      direList = articledao.query(47, 7);
      lasttime = System.currentTimeMillis();
    }
    try {
      if (log.isWarnEnabled()) {
        log.warn("(产品评测、专业导购)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    
    request.setAttribute("evaList", evaList);
    request.setAttribute("direList", direList);
  }
  




  public void focus(HttpServletRequest request)
  {
    long begintime = System.currentTimeMillis();
    SysnewsDao newDao = new SysnewsDaoImpl();
    List listjujiao = null;
    
    if ((listjujiao == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listjujiao = newDao.query(2, 1, 9);
      lasttime = System.currentTimeMillis();
    }
    try {
      if (log.isWarnEnabled()) {
        log.warn("(聚集顶九信息)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    request.setAttribute("SYSNEWS", listjujiao);
  }
  




  public void comment(HttpServletRequest request)
  {
    long begintime = System.currentTimeMillis();
    CommentsDao commentsDao = new CommentsDaoImpl();
    List listpinglun = null;
    
    if ((listpinglun == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listpinglun = commentsDao.query(10000007, 1, 6);
      lasttime = System.currentTimeMillis();
    }
    try
    {
      if (log.isWarnEnabled()) {
        log.warn("(用户评论)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    request.setAttribute("CommentsOnProductByHomePage", listpinglun);
  }
  




  public void shop(HttpServletRequest request)
  {
    long begintime = System.currentTimeMillis();
    SalePromotionDao saleDao = new SalePromotionDaoImpl();
    List listShopping = null;
    
    if ((listShopping == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      listShopping = saleDao.queryIndex(7, 1, 1, 9);
    }
    try {
      if (log.isWarnEnabled()) {
        log.warn("(用户评论)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    request.setAttribute("listShopping", listShopping);
  }
  
  private String getproinf(int sortid, int size, int d, HttpServletResponse response) {
    StringBuffer result = new StringBuffer();
    String[] day = {
      "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", "SERVEN", "EIGHT" };
    
    ProductMasterDao mstDao = new ProductMasterDaoImpl();
    RecommonProductDao proDao = new RecommonProductDaoImpl();
    result.append("<div id=\"RECOMMEND_PRODUCT_" + day[d] + "\" style=\"display:none\">");
    List list = proDao.query3(sortid, size);
    for (int i = 0; (list != null) && (i < list.size()); i++) {
      if (list.get(i) != null)
      {
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
        String urlNew = "/product/product-info.do?prma_id=" + prma_id + "&prso_id_one=" + prso_id_one + "&prso_name_one_en=" + proinfoVO.getPrso_name_one_en() + "&type=comment";
        int count = cr.getRecordCount();
        if (count == 0) {
          result.append("<a target='_blank' class='H1' href='http://www.ding9.com" + response.encodeURL(urlNew) + "#AddContent'><font color=\"#0066cc\">发表评论</font></a>");
        } else
          result.append("<a target='_blank' class='H1' href='http://www.ding9.com" + response.encodeURL(urlNew) + "#viewc'><font color=\"#0066cc\">" + count + "</font></a>");
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
        result.append(response.encodeURL(urlNew + "&all=1"));
        result.append("[] ");
      }
    }
    result.append("</div>");
    return result.toString();
  }
  
  private String scroll(int sortid, int size, int n, HttpServletResponse response) {
    RecommonProductDao proDao = new RecommonProductDaoImpl();
    List list = proDao.query3(sortid, size);
    StringBuffer result = new StringBuffer();
    int j = 0;
    if (n == 0) {
      result.append("<tbody id=\"block1\">");
    } else
      result.append("<tbody id=\"block").append(n + 1).append("\" style=\"DISPLAY:none\">");
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
        }
        else if (j % 2 == 0) {
          result.append("</td>");
          result.append("<td>");
        }
        result.append("<table width=\"190\" height=\"105\" border=\"0\" cellpadding=\"0\" cellspacing=\"0\">");
        result.append("<tr>");
        result.append("<td width=\"85\">");
        if (StringUtils.isBlank(pic_address)) {
          pic_address = Environment.getImageDing9() + "/Updata/Shoppic/want.gif";
        } else
          pic_address = Environment.getImageDing9() + pic_address;
        StringBuffer urlbuff = new StringBuffer();
        urlbuff.append("/product/product-info.do?prma_id=").append(prma_id).append("&prso_id_one=").append(proinfoVO.getPrso_id_one()).append("&prso_name_one_en=").append(proinfoVO.getPrso_name_one_en());
        String url = response.encodeURL(urlbuff.toString());
        result.append("<a target=\"_blank\" href=\"").append(url).append("\">");
        result.append("<img src=").append(pic_address).append(" width=\"80\" height=\"80\" alt=\"").append(prma_name).append("\" border=\"0\"/></a>");
        result.append("</td>");
        result.append("<td><a target=\"_blank\" class=\"H3\" title=\"").append(prma_name).append("\" href=\"");
        if ((prma_name != null) && (prma_name.length() > 24))
          prma_name = prma_name.substring(0, 24);
        result.append(url).append("\">").append(prma_name).append("</a><br/>");
        result.append("<span class=\"H1\">来自</span><span class=\"H2\">").append(merchant_count).append("</span><span class=\"H1\">个商家</span><br/>");
        result.append("<span class=\"H2\">￥").append(min_price).append("</span>");
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




	/**
	 * <p>功能: 取商情速递,代码取自DefaultAction.java</p>
	 * @生成日期：2014-8-27 下午11:08:05
	 * @作者：xiaxy
     * @param request
     * @param response
	 */
private void productGuide(HttpServletRequest request, HttpServletResponse response)
  {
    /* 2014-08-29 只保留增加读取顶九新品速递的查询
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
    }*/
    /* 2014-09-13 改为取最新的9条资讯  
     RecommonProductDao proDao = new RecommonProductDaoImpl();
     //2014-08-29 增加顶九新品速递的查询
      List list1 = proDao.query3(1000, 9);
      StringBuffer divStr1 = new StringBuffer();
      if (list1 != null) {
        divStr1.append("<ul>");
        for (int j = 0; j < list1.size(); j++) {
          ProductInfoVO productInfo = (ProductInfoVO)list1.get(j);
          String productUrl = getProductUrl(productInfo, response);
          String prmaName = productInfo.getPrma_name();
          if (StringHelper.getStringLen(prmaName) > 23) {
            prmaName = StringHelper.truncate(prmaName, 23);
            prmaName = prmaName + "...";
          } else {
            for (int k = 0; k < 29 - StringHelper.getStringLen(prmaName); k++) {
              prmaName = prmaName + "&nbsp;&nbsp;";
            }
          }//<div height='20px'></div>
          divStr1.append("<li><a href=\"" + productUrl + "\">" + 
            prmaName + "</a>");
          divStr1.append("</li>");
        }
        divStr1.append("</ul>");
        request.setAttribute("guideDiv0", divStr1.toString());
      }
        */
        
        ArticleDao articledao = new ArticleDaoImpl();
        //2014-09-13 增加资讯速递的查询
         List list1 = articledao.queryLast(11);
         request.setAttribute("guideDiv0", list1);
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
}
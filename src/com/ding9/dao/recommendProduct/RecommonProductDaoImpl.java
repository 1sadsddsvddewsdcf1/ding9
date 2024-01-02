package com.ding9.dao.recommendProduct;

import com.ding9.dao.commentsonpro.CommentsOnProDao;
import com.ding9.dao.commentsonpro.CommentsOnProDaoImpl;
import com.ding9.dao.productMaster.ProductMasterDao;
import com.ding9.dao.productMaster.ProductMasterDaoImpl;
import com.ding9.dao.sortinfo.SortInfoDao;
import com.ding9.dao.sortinfo.SortInfoDaoImpl;
import com.ding9.entity.productMaster.ProductMasterVO;
import com.ding9.entity.productinfo.ProductInfoVO;
import com.ding9.entity.sortinfo.SortInfoVO;
import com.ding9.result.productinfo.ProductInfoRS;
import com.ding9.search.entity.product.ProductMaster;
import com.ding9.search.searcher.support.result.CommentResult;
import com.ding9.search.searcher.support.result.ProductMasterResult;
import com.ding9.search.server.SearchService;
import com.ding9.search.service.ISearchService;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import com.ding9.util.Environment;
import com.ding9.util.UrlRewriteManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;






public class RecommonProductDaoImpl
  implements RecommonProductDao
{
  private static Log log = LogFactory.getLog(RecommonProductDaoImpl.class);
  
  private IDBAccess dba = null;
  
  private static long lasttime = System.currentTimeMillis();
  
  private static List list = null;
  
  public List query(int sort_id, int count) {
    BaseResult rs = new ProductInfoRS();
    String sql = "select * from common_recommend_product_info where sort_id=? order by info_id desc";
    this.dba = new DBAccessDefaultlImpl();
    this.dba.setParam(new SQLParam(1, 1, sort_id));
    list = this.dba.queryDataPagination(sql, rs, count, 1);
    this.dba.closeConnection();
    lasttime = System.currentTimeMillis();
    return list;
  }
  
  public List query2() {
    BaseResult rs = new ProductInfoRS();
    String sql = "select * from common_recommend_product_info where sort_id in (63,64,65,66,67,68)";
    this.dba = new DBAccessDefaultlImpl();
    list = this.dba.queryData(sql, rs);
    this.dba.closeConnection();
    lasttime = System.currentTimeMillis();
    return list;
  }
  






  public List query3(int sort_id, int count)
  {
    List tmpList = query(sort_id, count);
    SortInfoDao sortdao = new SortInfoDaoImpl();
    List list = new ArrayList();
    Iterator it = tmpList.iterator();
    while (it.hasNext()) {
      ProductInfoVO provo = (ProductInfoVO)it.next();
      SortInfoVO sortvo = sortdao.getSort(provo.getSort_id());
      provo.setSort_name(sortvo.getSort_name());
      provo.setSort_url(sortvo.getSort_url());
      list.add(provo);
    }
    return list;
  }
  










  public String getproinf(int sortid, int size, int d)
  {
    StringBuffer result = new StringBuffer();
    String[] day = { "ONE", "TWO", "THREE", "FOUR", "FIVE", "SIX", 
      "SERVEN", "EIGHT" };
    
    ProductMasterDao mstDao = new ProductMasterDaoImpl();
    CommentsOnProDao cpDao = new CommentsOnProDaoImpl();
    
    result.append("<div id=\"RECOMMEND_PRODUCT_" + day[d] + 
      "\" style=\"display:none\">");
    List list = query3(sortid, size);
    
    for (int i = 0; (list != null) && (i < list.size()); i++) {
      if (list.get(i) != null) {
        ProductInfoVO proinfoVO = (ProductInfoVO)list.get(i);
        

        ISearchService service = new SearchService();
        CommentResult cr = service.getComments(proinfoVO.getPrma_id(), 1, 10, true);
        ProductMasterResult pr = service.getStandardProducts("", 0, 0, proinfoVO.getPrma_id(), 0.0F, 0.0F, 0, 1, 10, true, "");
        Object[] ob = pr.getRecords();
        ProductMaster pm = (ProductMaster)ob[0];
        
        int info_id = proinfoVO.getInfo_id();
        int merchant_count = pm.getMerchant_count();
        
        int pic_isupdate = proinfoVO.getPic_isupdate();
        int prma_id = proinfoVO.getPrma_id();
        int prso_id_one = proinfoVO.getPrso_id_one();
        

        String url = "";
        


        String sort_name = proinfoVO.getSort_name();
        int sort_id = proinfoVO.getSort_id();
        float min_price = proinfoVO.getMin_price();
        String pic_address = proinfoVO.getPic_address();
        String prma_name = proinfoVO.getPrma_name();
        
        int count = cr.getRecordCount();
        
        result.append(info_id);
        result.append("{}");
        result.append(merchant_count);
        result.append("{}");
        result.append(pic_isupdate);
        result.append("{}");
        

        String urlNew = "/product/product-info.do?prma_id=" + prma_id + "&type=comment";
        









        if (count == 0)
        {
          result.append("<a target='_blank' class='H1' href='http://www.ding9.com" + UrlRewriteManager.dynamic2static(new StringBuilder("/product/product-info.do?prma_id=").append(prma_id).append("&type=comment").toString()) + "#AddContent'><font color=\"#0066cc\">发表评论</font></a>");
        } else {
          result.append("<a target='_blank' class='H1' href='http://www.ding9.com" + UrlRewriteManager.dynamic2static(new StringBuilder("/product/product-info.do?prma_id=").append(prma_id).append("&type=comment").toString()) + "#viewc'><font color=\"#0066cc\">" + count + "</font></a>");
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
        
        if (mstVO != null) {
          String prma_remark = mstVO.getPrma_remark();
          
          result.append(prma_remark);
        }
        
        result.append("{}");
        result.append(count);
        result.append("{}");
        result.append(url + UrlRewriteManager.dynamic2static(urlNew));
        result.append("{}");
        result.append(url + 
          UrlRewriteManager.dynamic2static(new StringBuilder(String.valueOf(urlNew)).append("&all=1").toString()));
        

        result.append("[] ");
      }
    }
    
    result.append("</div>");
    
    return result.toString();
  }
  







  public String scroll(int sortid, int size, int n)
  {
    List list = query3(sortid, size);
    StringBuffer result = new StringBuffer();
    int j = 0;
    if (n == 0) {
      result.append("<tbody id=block1>");
    } else {
      result.append("<tbody id=block" + (n + 1) + 
        " style=\"DISPLAY: none\">");
    }
    for (int i = 0; (list != null) && (i < list.size()); i++) {
      if (list.get(i) != null) {
        ProductInfoVO proinfoVO = (ProductInfoVO)list.get(i);
        int info_id = proinfoVO.getInfo_id();
        int merchant_count = proinfoVO.getMerchant_count();
        int pic_isupdate = proinfoVO.getPic_isupdate();
        int prma_id = proinfoVO.getPrma_id();
        int prso_id_one = proinfoVO.getPrso_id_one();
        int sort_id = proinfoVO.getSort_id();
        float min_price = proinfoVO.getMin_price();
        String pic_address = proinfoVO.getPic_address();
        String prma_name = proinfoVO.getPrma_name();
        
        if (prma_name != null) {
          prma_name = prma_name.trim();
        }
        if (j == 0)
        {
          result.append("\t<td>");


        }
        else if (j % 2 == 0) {
          result.append("\t</td>");
          result.append("\t<td>");
        }
        
        String http = "";
        


        result
          .append("<table width='190' height='105' border='0' cellpadding='0' cellspacing='0'>");
        result.append("\t<tr>");
        result.append("\t\t<td width='85'>");
        if ((pic_address == null) || (pic_address.trim().equals(""))) {
          pic_address = "Updata/Shoppic/want.gif";
        }
        

        result.append("\t\t\t<a target='_blank' href='" + http);
        
        result.append(
          UrlRewriteManager.dynamic2static(new StringBuilder("/product/product-info.do?prma_id=")
          .append(prma_id).toString()) + 
          "'><img src=" + 
          Environment.getImageDing9() + 
          pic_address + 
          " width='80' height='80' alt='" + 
          prma_name + "' border='0'/></a>");
        result.append("\t\t</td>");
        result.append("\t\t<td>");
        
        result.append("\t\t\t<a target='_blank' class='H3' title='" + 
          prma_name + "' href='");
        
        if ((prma_name != null) && (prma_name.length() > 24)) {
          prma_name = prma_name.substring(0, 24);
        }
        

        result.append(http + 
        
          UrlRewriteManager.dynamic2static(new StringBuilder("/product/product-info.do?prma_id=")
          .append(prma_id).toString()) + "'>" + prma_name + 
          "</a>");
        result.append("\t\t\t<br>");
        result.append("\t\t\t<span class='H1'>来自</span>");
        result.append("\t\t\t<span class='H2'>" + merchant_count + 
          "</span>");
        result.append("\t\t\t<span class='H1'>个商家</span>");
        result.append("\t\t\t<br>");
        result.append("\t\t\t<span class='H2'>￥" + min_price + "</span>");
        result.append("\t\t</td>");
        result.append("\t</tr>");
        result.append("</table>");
        
        j++;
      }
    }
    if (j > 0) {
      result.append("</td> ");
    }
    result.append("</tbody>");
    
    return result.toString();
  }
}

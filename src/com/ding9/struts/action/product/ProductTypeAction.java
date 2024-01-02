package com.ding9.struts.action.product;

import com.ding9.dao.productsort.ProductSortDao;
import com.ding9.dao.productsort.ProductSortDaoImpl;
import com.ding9.entity.productsort.ProductSortVO;
import com.ding9.search.entity.assistant.Counter;
import com.ding9.search.entity.product.ProductMaster;
import com.ding9.search.searcher.support.result.ProductMasterResult;
import com.ding9.search.server.SearchService;
import com.ding9.search.service.ISearchService;
import com.ding9.util.KeywordsOptimizeFactory;
import com.ding9.util.ProjectEnvironment;
import com.ding9.util.SearchKeyUtils;
import java.util.HashMap;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.lang.ArrayUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class ProductTypeAction
  extends Action
{
  private static final Log log = LogFactory.getLog(ProductTypeAction.class);
  private static KeywordsOptimizeFactory keyFactory = KeywordsOptimizeFactory.getInstance();
  



  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
  {
    ProductTypeForm frm = (ProductTypeForm)form;
    
    int prso_id_three = 0;
    prso_id_three = frm.getPrso_id_three();
    
    ProductSortDao psDao = new ProductSortDaoImpl();
    ProductSortVO ps = psDao.findByP3(prso_id_three);
    frm.setPrso_id_one(ps.getPrso_id_one());
    frm.setPrso_name_one_en(ps.getPrso_name_one_en().replaceAll(" ", ""));
    frm.setPrso_name_three_en(ps.getPrso_name_three_en().replaceAll(" ", ""));
    

    String prma_name = frm.getPrma_name();
    if (prma_name == null) {
      prma_name = "";
    }
    if (log.isInfoEnabled()) {
      log.info("prma_name = " + prma_name);
    }
    

    int prbr_id = frm.getPrbr_id();
    
    int order_asc_desc = frm.getOrder_asc_desc();
    

    float min_price = 0.0F;float max_price = 0.0F;
    min_price = frm.getMin_price();
    max_price = frm.getMax_price();
    

    if (max_price < min_price) {
      float temp = 0.0F;
      temp = max_price;
      max_price = min_price;
      min_price = temp;
      frm.setMax_price(max_price);
      frm.setMin_price(min_price);
    }
    
    int current_page = 1;
    int size = frm.getPage_size();
    if (size <= 0)
      size = 10;
    if (frm.getCurrent_page() > 0)
      current_page = frm.getCurrent_page();
    frm.setCurrent_page(current_page);
    frm.setPage_size(size);
    
    ISearchService service = new SearchService();
    
    if (prso_id_three > 0) {
      ProductMasterResult pr = service.getStandardProducts(prma_name, prso_id_three, prbr_id, min_price, 
        max_price, order_asc_desc, current_page, size, true);
      request.setAttribute("ProductInfo", pr);
      
      if ((!ArrayUtils.isEmpty(pr.getRecords())) && (pr.getRecordCount() > 0)) {
        ProductMaster[] rst = pr.getRecords();
        ProductMaster master = rst[0];
        request.getSession().setAttribute("ProductSort", master);
        
        String channelDomainName = ProjectEnvironment.getChannelDomainName(String.valueOf(master.getPrso_id_one()));//2014-02-09 master.getPrso_id_one());
        request.getSession().setAttribute("channelDomainName", channelDomainName);
        log.info("channelDomainName : " + channelDomainName);
        
        int prso1 = master.getPrso_id_one();
        
        int adpl_id = 0;
        int adpt_id = 0;
        
        int adpl_id1 = 0;
        
        int adpl_id2 = 0;
        

        int adpl_id3 = 0;
        



        switch (prso1) {
        case 1:  adpl_id = 94;adpt_id = 23;adpl_id1 = 95;adpl_id2 = 96;adpl_id3 = 97; break;
        case 6:  adpl_id = 35;adpt_id = 11;adpl_id1 = 36;adpl_id2 = 37;adpl_id3 = 38; break;
        case 7:  adpl_id = 119;adpt_id = 32;adpl_id1 = 120;adpl_id2 = 121;adpl_id3 = 122; break;
        case 15:  adpl_id = 165;adpt_id = 42;adpl_id1 = 166;adpl_id2 = 167;adpl_id3 = 168; break;
        case 12:  adpl_id = 146;adpt_id = 37;adpl_id1 = 147;adpl_id2 = 148;adpl_id3 = 149; break;
        case 8:  adpl_id = 107;adpt_id = 27;adpl_id1 = 108;adpl_id2 = 109;adpl_id3 = 110; break;
        case 4:  adpl_id = 80;adpt_id = 19;adpl_id1 = 83;adpl_id2 = 84;
        }
        
        





        try
        {
          request.setAttribute("Top", "");
          request.setAttribute("RightTop", "");
          request.setAttribute("RightMiddle", "");
          request.setAttribute("Bottom", "");
        }
        catch (Exception e) {
          if (log.isErrorEnabled()) { log.error(e.getMessage());
          }
        }
        

























        if (prbr_id > 0) { request.getSession().setAttribute("Prbr_Name", master.getPrbr_name());
        }
        


        Map param = new HashMap();
        param.put("@A@", master.getPrso_name_one() + " " + master.getPrso_name_two() + " " + master.getPrso_name());
        int keot_id = 0;
        switch (prso1) {
        case 1:  keot_id = 18; break;
        case 6:  keot_id = 11; break;
        case 7:  keot_id = 25; break;
        case 15:  keot_id = 32; break;
        case 12:  keot_id = 39; break;
        case 8:  keot_id = 46; break;
        case 4:  keot_id = 53;
        }
        
        
        String title = keyFactory.getKeopTitle(keot_id, param);
        if ((title == null) || (title.equals("")))
          title = keyFactory.getKeopTitle(3, param);
        String desc = keyFactory.getKeopDescription(keot_id, param);
        if ((desc == null) || (desc.equals("")))
          desc = keyFactory.getKeopDescription(3, param);
        String keywords = keyFactory.getKeopKeyWords(keot_id, param);
        if ((keywords == null) || (keywords.equals(""))) {
          keywords = keyFactory.getKeopKeyWords(3, param);
        }
        request.setAttribute("Title", title);
        request.setAttribute("Desc", desc);
        request.setAttribute("KeyWords", keywords);
        request.setAttribute("META", ProjectEnvironment.getMETA());
        







        Counter[] prand = service.getProductBrandCounts(prma_name, prso_id_three, 0, 0, min_price, max_price, true, "samebrand");
        Counter[] brand = (Counter[])null;
        if (prand.length > 50) {
          brand = new Counter[50];
          for (int i = 0; i < 50; i++) {
            brand[i] = prand[i];
          }
        } else {
          brand = prand;
        }
        
        request.setAttribute("ProductBrand", brand);
        

        if (prbr_id == 0) {
          Counter[] otherprso = service.getProductBrandCounts(prma_name, prso_id_three, prbr_id, 0, min_price, max_price, true, "fightbrand");
          Counter[] rs = (Counter[])null;
          if (otherprso.length > 50) {
            rs = new Counter[50];
            for (int i = 0; i < 50; i++) {
              rs[i] = otherprso[i];
            }
          } else {
            rs = otherprso;
          }
          
          request.setAttribute("ThreeGrade", rs);
        }
      }
    }
    











    request.setAttribute("priceOrderAsc", Integer.valueOf(102));
    request.setAttribute("priceOrderDesc", Integer.valueOf(103));
    request.setAttribute("commentOrderAsc", Integer.valueOf(104));
    request.setAttribute("commentOrderDesc", Integer.valueOf(105));
    request.setAttribute("merchantOrderAsc", Integer.valueOf(106));
    request.setAttribute("merchantOrderDesc", Integer.valueOf(107));
    
    String key = SearchKeyUtils.encodeKey(min_price, max_price, prma_name);
    request.setAttribute("key", key);
    
    return mapping.findForward("list");
  }
}

package com.ding9.struts.action.product;

import com.ding9.search.entity.product.ProductMaster;
import com.ding9.search.searcher.support.result.ProductMasterResult;
import com.ding9.search.server.SearchService;
import com.ding9.search.service.ISearchService;
import com.ding9.util.KeywordsOptimizeFactory;
import com.ding9.util.ProjectEnvironment;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

public class ProductCompareAction
  extends Action
{
  private static final Log logger = LogFactory.getLog(ProductCompareAction.class);
  

  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
  {
    ProductCompareForm infoForm = (ProductCompareForm)form;
    
    String prma_id = null;
    int prso_id = 0;
    int dell_id = 0;
    String width = null;
    prma_id = infoForm.getSelect_prma_id();
    if (((prma_id == null) || ("".equals(prma_id))) && 
      (request.getSession().getAttribute("prma_id") != null)) {
      prma_id = (String)request.getSession().getAttribute("prma_id");
    }
    



    request.getSession().setAttribute("prma_id", prma_id);
    


    prso_id = infoForm.getPrso_id();
    
    infoForm.setPrso_id(prso_id);
    
    dell_id = infoForm.getDell_id();
    








    String[] prmaS = prma_id.split(",");
    List prma = null;
    String strprma_id = "";
    for (int i = 0; i < prmaS.length; i++) {
      if (i == 0) {
        prma = new ArrayList();
      }
      if ((prmaS.length <= 2) || (Integer.parseInt(prmaS[i]) != dell_id)) {
        prma.add(prmaS[i]);
        strprma_id = strprma_id + prmaS[i] + ",";
        if (prma.size() >= 6) break;
      } }
    request.removeAttribute("prma_id");
    request.getSession().setAttribute("prma_id", strprma_id);
    logger.warn(prmaS.length + "prma--" + prma);
    

    ISearchService service = new SearchService();
    Map prmainfo = new HashMap();
    ProductMasterResult pr = null;
    String seo_prod_name = "";
    Map param = new HashMap();
    for (int i = 0; i < prma.size(); i++) {
      int prmaid = Integer.parseInt(prma.get(i).toString());
      pr = service.getStandardProducts("", 0, 
        0, prmaid, 0.0F, 0.0F, 0, 1, 1, true, "");
      if ((pr.getRecords() != null) && 
        (pr.getRecords().length > 0)) {
        prmainfo.put(Integer.valueOf(prmaid), pr.getRecords()[0]);
        seo_prod_name = seo_prod_name + pr.getRecords()[0].getPrma_name() + " vs. ";
        request.setAttribute("prso_id_one", Integer.valueOf(pr.getRecords()[0].getPrso_id_one()));
        param.put("@A@", pr.getRecords()[0].getPrso_name_one());
      }
    }
    


    int size = prmainfo.size();
    if (6 == size) {
      width = "15%";
    } else if (5 == size) {
      width = "162";
    } else if (4 == size) {
      width = "199";
    } else if (3 == size) {
      width = "265";
    } else if (2 == size) {
      width = "397";
    } else if (1 == size) {
      width = "795";
    }
    List rslist = service.getProductParaVal(strprma_id, prso_id, true);
    request.setAttribute("parameter", rslist);
    request.setAttribute("productinfo", prmainfo);
    
    request.setAttribute("width", width);
    





    param.put("@B@", seo_prod_name);
    
    String title = KeywordsOptimizeFactory.getInstance().getKeopTitle(48, param);
    if ((title == null) || (title.equals("")))
      title = KeywordsOptimizeFactory.getInstance().getKeopTitle(4, param);
    String desc = KeywordsOptimizeFactory.getInstance().getKeopDescription(48, param);
    if ((desc == null) || (desc.equals("")))
      desc = KeywordsOptimizeFactory.getInstance().getKeopDescription(4, param);
    String keywords = KeywordsOptimizeFactory.getInstance().getKeopKeyWords(48, param);
    if ((keywords == null) || (keywords.equals("")))
      keywords = KeywordsOptimizeFactory.getInstance().getKeopKeyWords(4, param);
    request.setAttribute("Title", title);
    request.setAttribute("Desc", desc);
    request.setAttribute("KeyWords", keywords);
    request.setAttribute("META", ProjectEnvironment.getMETA());
    return mapping.findForward("productcompare");
  }
  
  public static void main(String[] args) {
    String prma_id = "801574,35,801483,";
    String dell_id = "801574";
    int loc = prma_id.indexOf(dell_id + ",");
    LinkedHashMap o = new LinkedHashMap();
    o.values().iterator();
    if (loc > -1) {
      prma_id = prma_id.substring(0, loc) + prma_id.substring(loc + prma_id.length());
    }
  }
}

package com.ding9.dao.productsort;

import com.ding9.entity.productsort.ProductSortVO;
import com.ding9.result.productsort.ProductSortRS;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;








public class ProductSortDaoImpl
  implements ProductSortDao
{
  private static Log log = LogFactory.getLog(ProductSortDaoImpl.class);
  
  private IDBAccess dba = null;
  
  public ProductSortVO findByP3(int prso_id_three) {
    BaseResult rs = new ProductSortRS();
    this.dba = new DBAccessDefaultlImpl();
    String sql = "SELECT prso_id_one,prso_name_one,prso_name_one_en,prso_id_three,prso_name_three,replace(replace(trim(prso_name_three_en),' ','_'),'/','_and_') as prso_name_three_en FROM product_sort WHERE prso_id_three =?";
    this.dba.setParam(new SQLParam(1, 1, prso_id_three));
    List ls = this.dba.queryData(sql, rs);
    
    ProductSortVO vo = null;
    if ((ls != null) && (ls.size() > 0)) {
      vo = (ProductSortVO)ls.get(0);
    }
    if (log.isInfoEnabled()) {
      log.info(sql);
    }
    return vo;
  }
  
  public ProductSortVO findByPrmaId(int id) {
    BaseResult rs = new ProductSortRS();
    this.dba = new DBAccessDefaultlImpl();
    String sql = "SELECT ps.prso_id_one,ps.prso_id_two,ps.prso_id_three,ps.prso_name_one_en,replace(replace(trim(ps.prso_name_three_en),' ','_'),'/','_and_') as prso_name_three_en FROM product_sort ps WHERE ps.prso_id =(select pm.prso_id from product_master pm where pm.prma_id=?) ";
    this.dba.setParam(new SQLParam(1, 1, id));
    
    List ls = this.dba.queryData(sql, rs);
    ProductSortVO vo = null;
    if ((ls != null) && (ls.size() > 0)) {
      vo = (ProductSortVO)ls.get(0);
    }
    
    return vo;
  }
}

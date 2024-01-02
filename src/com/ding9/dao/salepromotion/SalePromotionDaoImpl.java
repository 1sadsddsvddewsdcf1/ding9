package com.ding9.dao.salepromotion;

import com.ding9.result.salepromotion.SalePromotionRS;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;









public class SalePromotionDaoImpl
  implements SalePromotionDao
{
  private static Log log = LogFactory.getLog(SalePromotionDaoImpl.class);
  
  private IDBAccess dba = null;
  
  private static long lasttime = System.currentTimeMillis();
  
  private List list = null;
  







  public List queryIndex(int sort_id, int info_status, int current_page, int page_size)
  {
    BaseResult rs = new SalePromotionRS();
    String sql = "select inf.*,ref.shop_id,ref.type_id from common_salepromotion_info inf left join coupon_relation ref on inf.info_id=ref.info_id where inf.info_id in(select info_id from salepromotion_relinfo where sort_id=?) and inf.info_status=? and inf.out_date>=sysdate order by inf.out_date desc";
    this.dba = new DBAccessDefaultlImpl();
    this.dba.setParam(new SQLParam(1, 1, sort_id));
    this.dba.setParam(new SQLParam(2, 1, info_status));
    this.list = this.dba.queryDataPagination(sql, rs, page_size, current_page);
    
    this.dba.closeConnection();
    lasttime = System.currentTimeMillis();
    
    return this.list;
  }
}

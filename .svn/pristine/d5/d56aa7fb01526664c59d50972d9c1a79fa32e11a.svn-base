package com.ding9.dao.hotproduct;

import com.ding9.result.hotproduct.HotProductRS;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;







public class HotProductDaoImpl
  implements HotProductDao
{
  private static Log log = LogFactory.getLog(HotProductDaoImpl.class);
  
  private IDBAccess dba = null;
  


  private static List list = null;
  








  public List query(int sort_id, int current_page, int page_size)
  {
    BaseResult rs = new HotProductRS();
    String sql = "select * from hot_product where sort_id=? order by release_time desc";
    this.dba = new DBAccessDefaultlImpl();
    this.dba.setParam(new SQLParam(1, 1, sort_id));
    list = this.dba.queryDataPagination(sql, rs, page_size, current_page);
    if (log.isInfoEnabled()) {
      log.info(sql);
    }
    


    return list;
  }
}

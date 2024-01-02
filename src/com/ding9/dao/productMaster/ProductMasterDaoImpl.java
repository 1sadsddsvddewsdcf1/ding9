package com.ding9.dao.productMaster;

import com.ding9.entity.productMaster.ProductMasterVO;
import com.ding9.result.productMaster.ProductMasterIndexRS;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ProductMasterDaoImpl implements ProductMasterDao
{
  private static Log log = LogFactory.getLog(ProductMasterDaoImpl.class);
  
  private IDBAccess dba = null;
  
  private static long lasttime = System.currentTimeMillis();
  
  private static List list = null;
  
  public ProductMasterVO finkbypk(int prma_id) {
    BaseResult rs = new ProductMasterIndexRS();
    String sql = "select * from product_master where prma_id=?";
    this.dba = new DBAccessDefaultlImpl();
    this.dba.setParam(new SQLParam(1, 1, prma_id));
    //2014-08-05 增加空值检查 ProductMasterVO vo = (ProductMasterVO)this.dba.queryData(sql, rs).get(0);
    list = this.dba.queryData(sql, rs);
    ProductMasterVO vo ;//= null;
    if (list != null && list.size() > 0)
    	vo = (ProductMasterVO)list.get(0);
    else
    	vo = new ProductMasterVO();
    return vo;
  }
}

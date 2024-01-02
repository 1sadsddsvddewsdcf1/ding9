package com.ding9.dao.sortinfo;

import com.ding9.entity.sortinfo.SortInfoVO;
import com.ding9.result.sortinfo.SortInfoRS;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;







public class SortInfoDaoImpl
  implements SortInfoDao
{
  private static Log log = LogFactory.getLog(SortInfoDaoImpl.class);
  
  private IDBAccess dba = null;
  
  private static long lasttime = System.currentTimeMillis();
  
  private static List list = null;
  
  public SortInfoVO getSort(int sort_id) {
    BaseResult rs = new SortInfoRS();
    this.dba = new DBAccessDefaultlImpl();
    String sql = "select * from common_recommend_sort_info where sort_id=?";
    
    this.dba.setParam(new SQLParam(1, 1, sort_id));
    SortInfoVO vo = (SortInfoVO)this.dba.queryData(sql, rs).get(0);
    this.dba.closeConnection();
    return vo;
  }
}

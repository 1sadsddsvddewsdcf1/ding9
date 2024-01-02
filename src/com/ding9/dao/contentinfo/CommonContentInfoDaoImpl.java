package com.ding9.dao.contentinfo;

import com.ding9.result.contentinfo.ContentInfoResult;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.util.HashMap;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;


public class CommonContentInfoDaoImpl
  implements CommonContentInfoDao
{
  private static final Log log = LogFactory.getLog(CommonContentInfoDaoImpl.class);
  
  private IDBAccess dba = null;
  
  private StringBuffer sqlstr = null;
  
  private String sql = null;
  
  private static long lasttime = System.currentTimeMillis();
  
  private static HashMap results = new HashMap();
  






  public List getContentInfo(int infoid)
  {
    if ((results.get(Integer.valueOf(infoid)) == null) || 
      (System.currentTimeMillis() - lasttime > 3600000L)) {
      if (log.isWarnEnabled()) {
        log.warn("重新载入评论信息时间：" + System.currentTimeMillis());
      }
      
      this.dba = new DBAccessDefaultlImpl();
      BaseResult map = new ContentInfoResult();
      this.dba.setParam(new SQLParam(1, 1, infoid));
      
      this.sql = "SELECT CONTENT,INFO_ID,TITLE FROM COMMON_CONTENT_INFO WHERE INFO_ID=? ";
      List rst = this.dba.queryData(this.sql, map);
      results.put(Integer.valueOf(infoid), rst);
      this.dba.closeConnection();
      this.sql = null;
      lasttime = System.currentTimeMillis();
    }
    return (List)results.get(Integer.valueOf(infoid));
  }
}

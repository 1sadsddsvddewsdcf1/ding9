package com.ding9.dao.copartner;

import com.ding9.result.copartner.CopartnerResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
















public class CopartnerDaoImpl
  implements CopartnerDao
{
  private static Log log = LogFactory.getLog(CopartnerDaoImpl.class);
  private IDBAccess dba = null;
  
  public List query(int type, Integer rownum) {
    this.dba = new DBAccessDefaultlImpl();
    StringBuffer select = new StringBuffer();
    select.append("SELECT cf.id,cf.web_name,cf.web_logo,cf.web_url,cf.type,cf.last_update FROM coop_friend cf ");
    select.append("WHERE cf.type=");
    select.append(type);
    select.append(" ORDER BY cf.id DESC ");
    
    StringBuffer topselect = new StringBuffer();
    if ((rownum != null) && (rownum.intValue() != 0)) {
      topselect.append("SELECT * FROM (");
      topselect.append(select);
      topselect.append(") WHERE rownum<=");
      topselect.append(rownum.intValue());
      select = topselect;
    }
    if (log.isInfoEnabled()) {
      log.info("select sql : " + select.toString());
    }
    
    List results = this.dba.queryData(select.toString(), new CopartnerResult());
    
    return results;
  }
}

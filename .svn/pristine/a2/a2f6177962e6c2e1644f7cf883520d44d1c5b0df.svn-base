package com.ding9.dao.commentsonpro;

import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;








public class CommentsOnProDaoImpl
  implements CommentsOnProDao
{
  private static Log log = LogFactory.getLog(CommentsOnProDaoImpl.class);
  
  private IDBAccess dba = null;
  
  private static long lasttime = System.currentTimeMillis();
  
  private static List list = null;
  





  public int getRow(int prma_id)
  {
    String sql = "select * from comments_on_product where prma_id=?";
    this.dba = new DBAccessDefaultlImpl();
    this.dba.setParam(new SQLParam(1, 1, prma_id));
    int rows = this.dba.queryDataNumber(sql);
    return rows;
  }
}

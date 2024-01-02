package com.ding9.dao.sysnews;

import com.ding9.entity.sysnews.SysNewsVo;
import com.ding9.result.sysnews.SysnewsRS;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;







public class SysnewsDaoImpl
  implements SysnewsDao
{
  private static Log log = LogFactory.getLog(SysnewsDaoImpl.class);
  
  private IDBAccess dba = null;
  
  private static long lasttime = System.currentTimeMillis();
  
  private static List list = null;
  



  public List query(int synt_id, int current_page, int page_size)
  {
    BaseResult rs = new SysnewsRS();
    String sql = "select * from sys_news where synt_id=? order by syne_time desc";
    this.dba = new DBAccessDefaultlImpl();
    this.dba.setParam(new SQLParam(1, 1, synt_id));
    list = this.dba.queryDataPagination(sql, rs, page_size, current_page);
    this.dba.closeConnection();
    lasttime = System.currentTimeMillis();
    return list;
  }
  





  public int getCountBySyntId(int synt_id)
  {
    String sql = "select count(*) from sys_news where synt_id=?";
    this.dba = new DBAccessDefaultlImpl();
    this.dba.setParam(new SQLParam(1, 1, synt_id));
    return this.dba.queryDataNumber(sql);
  }
  





  public SysNewsVo finkByPk(int syne_id)
  {
    BaseResult rs = new SysnewsRS();
    this.dba = new DBAccessDefaultlImpl();
    String sql = "select * from sys_news where syne_id=?";
    this.dba.setParam(new SQLParam(1, 1, syne_id));
    SysNewsVo vo = (SysNewsVo)this.dba.queryData(sql, rs).get(0);
    return vo;
  }
}

package com.ding9.dao.indexkey;

import com.ding9.entity.indexkey.keyWord;
import com.ding9.result.indexkey.KeyWordInfo;
import com.ding9.result.indexkey.KeyWordsOptimizeInfo;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;









public class IndexKeyDaoImpl
  implements IndexKeyDao
{
  private static final Log log = LogFactory.getLog(IndexKeyDaoImpl.class);
  private IDBAccess dba = null;
  private StringBuffer sqlstr = null;
  





  public List getkeyWord(String sort_id)
    throws SQLException
  {
    this.dba = new DBAccessDefaultlImpl();
    BaseResult kw = new KeyWordInfo();
    
    this.sqlstr = new StringBuffer();
    
    this.sqlstr.append("select HOT_KEYWORD from KEYWORD_CHANNEL where prso_id_one=?");
    this.dba.setParam(new SQLParam(1, 1, Integer.parseInt(sort_id)));
    List rec = this.dba.queryData(this.sqlstr.toString(), kw);
    
    if ((rec == null) || (rec.size() == 0)) {
      this.dba = new DBAccessDefaultlImpl();
      this.sqlstr = new StringBuffer();
      this.sqlstr.append("select HOT_KEYWORD from KEYWORD_CHANNEL where prso_id_one=?");
      this.dba.setParam(new SQLParam(1, 1, 10000007));
      rec = this.dba.queryData(this.sqlstr.toString(), kw);
    }
    this.dba.closeConnection();
    kw = null;
    this.sqlstr = null;
    
    return rec;
  }
  





  public List queryKey(int channel_id)
    throws SQLException
  {
    List list = new ArrayList();
    keyWord kw = (keyWord)getkeyWord(String.valueOf(channel_id)).get(0); //2014-02-08 夏晓耘 keyWord kw = (keyWord)getkeyWord(channel_id.trim()).get(0);
    String[] tmp = kw.getKeyword().split(" ");
    for (int i = 0; (tmp != null) && (i < tmp.length); i++) {
      list.add(tmp[i]);
    }
    
    return list;
  }
  





  public List getKeywordsOptimize()
    throws SQLException
  {
    this.dba = new DBAccessDefaultlImpl();
    BaseResult kwo = new KeyWordsOptimizeInfo();
    
    this.sqlstr = new StringBuffer();
    
    this.sqlstr.append("SELECT A.KEOT_ID\t, A.KEOP_TITLE, A.KEOP_KEYWORDS\t, A.KEOP_DESCRIPTION ,b.channel_id ");
    this.sqlstr.append(" FROM KEYWORDS_OPTIMIZE A, KEYWORDS_OPTIMIZE_TYPE B ");
    this.sqlstr.append(" WHERE  A.KEOT_ID = B.KEOT_ID ");
    

    List rec = this.dba.queryData(this.sqlstr.toString(), kwo);
    
    this.dba.closeConnection();
    kwo = null;
    this.sqlstr = null;
    
    return rec;
  }
}

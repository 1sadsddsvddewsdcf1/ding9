package com.ding9.result.copartner;

import com.ding9.entity.copartner.Copartner;
import com.ding9.sql.BaseResult;
import java.sql.ResultSet;
import java.sql.SQLException;














public class CopartnerResult
  implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i)
    throws SQLException
  {
    Copartner entity = new Copartner();
    try
    {
      entity.setWebName(rs.getString("web_name"));
    } catch (SQLException localSQLException) {}
    try {
      entity.setWebLogo(rs.getString("web_logo"));
    } catch (Exception localException) {}
    try {
      entity.setWebURL(rs.getString("web_url"));
    }
    catch (Exception localException1) {}
    return entity;
  }
}

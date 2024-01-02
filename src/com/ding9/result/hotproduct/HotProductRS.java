package com.ding9.result.hotproduct;

import com.ding9.entity.hotproduct.HotProductVO;
import com.ding9.sql.BaseResult;
import com.ding9.util.DateHelper;
import com.ding9.util.StringHelper;
import java.sql.ResultSet;
import java.sql.SQLException;



public class HotProductRS
  implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i)
    throws SQLException
  {
    HotProductVO vo = new HotProductVO();
    
    vo.setId(rs.getInt("id"));
    vo.setSort_id(rs.getInt("sort_id"));
    vo.setTitle(StringHelper.getSubString(rs.getString("title"), 25));
    vo.setUrl(rs.getString("url"));
    vo.setPicture(rs.getString("picture"));
    vo.setRelease_time(
      DateHelper.toString(rs.getTimestamp("release_time"), "yyyy-MM-dd"));
    
    return vo;
  }
}

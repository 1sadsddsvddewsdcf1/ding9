package com.ding9.result.sortinfo;

import com.ding9.entity.sortinfo.SortInfoVO;
import com.ding9.sql.BaseResult;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SortInfoRS implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i) throws SQLException
  {
    SortInfoVO vo = new SortInfoVO();
    vo.setSort_id(rs.getInt("sort_id"));
    vo.setPrso_id_one(rs.getInt("prso_id_one"));
    vo.setSort_name(rs.getString("sort_name"));
    vo.setSort_url(rs.getString("sort_url"));
    vo.setSort_pic(rs.getString("sort_pic"));
    return vo;
  }
}

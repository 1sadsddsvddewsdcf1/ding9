package com.ding9.result.sysnews;

import com.ding9.entity.sysnews.SysNewsVo;
import com.ding9.sql.BaseResult;
import com.ding9.util.DateHelper;
import java.sql.ResultSet;
import java.sql.SQLException;




public class SysnewsRS
  implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i)
    throws SQLException
  {
    SysNewsVo vo = new SysNewsVo();
    vo.setSyne_id(rs.getInt("syne_id"));
    vo.setSynt_id(rs.getInt("synt_id"));
    vo.setSyne_title(rs.getString("syne_title"));
    vo.setSyne_counnet(rs.getString("syne_counnet"));
    vo.setSys_accessory(rs.getString("sys_accessory"));
    vo.setSyne_submit(rs.getInt("syne_submit"));
    vo.setSyne_time(
      DateHelper.toString(rs.getTimestamp("syne_time"), "yyyy-MM-dd"));
    return vo;
  }
}

package com.ding9.result.commentsonpro;

import com.ding9.entity.commentsonpro.CommentsOnProductVO;
import com.ding9.sql.BaseResult;
import com.ding9.util.DateHelper;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CommentsOnProductRS implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i) throws SQLException
  {
    CommentsOnProductVO vo = new CommentsOnProductVO();
    
    vo.setId(rs.getInt("id"));
    vo.setPrma_id(rs.getInt("prma_id"));
    vo.setPrma_name(rs.getString("prma_name"));
    vo.setTitle(rs.getString("title"));
    vo.setContent(rs.getString("content"));
    vo.setPrac_address(rs.getString("prac_address"));
    vo.setWeb_address(rs.getString("web_address"));
    vo.setRelease_time(DateHelper.toString(rs.getTimestamp("release_time"), "yyyy-MM-dd"));
    vo.setPrso_id(rs.getInt("prso_id"));
    vo.setAdvantage(rs.getString("advantage"));
    vo.setDisadvantage(rs.getString("disadvantage"));
    return vo;
  }
}

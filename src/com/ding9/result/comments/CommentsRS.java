package com.ding9.result.comments;

import com.ding9.entity.comments.CommentsVO;
import com.ding9.sql.BaseResult;
import com.ding9.util.DateHelper;
import com.ding9.util.ParserUtils;
import com.ding9.util.StringHelper;
import java.sql.ResultSet;
import java.sql.SQLException;





public class CommentsRS
  implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i)
    throws SQLException
  {
    CommentsVO vo = new CommentsVO();
    
    vo.setId(rs.getInt("id"));
    vo.setPrma_id(rs.getInt("prma_id"));
    vo.setComment_id(rs.getInt("comment_id"));
    vo.setTitle(StringHelper.getSubString(rs.getString("title"), 25));
    vo.setPicture(rs.getString("picture"));
    vo.setPrma_name(rs.getString("prma_name"));
    
    if (StringHelper.getSubString(rs.getString("brief"), 56) != null) {
      vo.setBrief(ParserUtils.parse(StringHelper.getSubString(rs.getString("brief"), 56)));
    }
    
    vo.setChannel_id(rs.getInt("channel_id"));
    vo.setDate_added(DateHelper.toString(rs.getTimestamp("date_added"), "yyyy-MM-dd"));
    vo.setPrso_id(rs.getInt("prso_id"));
    
    vo.setPrso_id_one(rs.getInt("prso_id_one"));
    vo.setPrso_name_one_en(rs.getString("prso_name_one_en"));
    
    return vo;
  }
}

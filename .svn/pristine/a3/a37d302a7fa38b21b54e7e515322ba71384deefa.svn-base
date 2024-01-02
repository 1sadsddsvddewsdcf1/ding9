package com.ding9.result.article;

import com.ding9.entity.article.ArticleVO;
import com.ding9.sql.BaseResult;
import com.ding9.util.DateHelper;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ArticleRS implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i) throws SQLException
  {
    ArticleVO vo = new ArticleVO();
    
    vo.setArticle_id(rs.getInt("article_id"));
    vo.setTitle(rs.getString("title"));
    vo.setMemt_id(rs.getInt("memt_id"));
    vo.setSource_type(rs.getString("source_type"));
    vo.setRelease_time(
      DateHelper.toString(rs.getTimestamp("release_time"), "yyyy-MM-dd"));
    vo.setUrl(rs.getString("url"));
    vo.setSource(rs.getString("source"));
    vo.setAuthor(rs.getString("author"));
    vo.setSource_relation_type(rs.getString("source_relation_type"));
    vo.setSource_relation_value(rs.getString("source_relation_value"));
    vo.setContent(rs.getString("content"));
    vo.setDisplay(rs.getInt("display"));
    vo.setPagination_sign(rs.getString("pagination_sign"));
    vo.setCooperate_id(rs.getInt("cooperate_id"));
    vo.setPicture(rs.getString("picture"));
    return vo;
  }
}

package com.ding9.result.articlerelation;

import com.ding9.entity.article.ArticleRelationVO;
import com.ding9.sql.BaseResult;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ArticleRelationRS implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i) throws SQLException
  {
    ArticleRelationVO vo = new ArticleRelationVO();
    vo.setRelation_value(rs.getInt("relation_value"));
    return vo;
  }
}

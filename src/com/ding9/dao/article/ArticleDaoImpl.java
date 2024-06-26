package com.ding9.dao.article;

import com.ding9.entity.article.ArticleRelationVO;
import com.ding9.entity.article.ArticleVO;
import com.ding9.entity.productsort.ProductSortVO;
import com.ding9.result.article.ArticleRS;
import com.ding9.result.articlerelation.ArticleRelationRS;
import com.ding9.result.productsort.ProductSortRS;
import com.ding9.sql.BaseResult;
import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;








public class ArticleDaoImpl
  implements ArticleDao
{
  private static Log log = LogFactory.getLog(ArticleDaoImpl.class);
  
  private IDBAccess dba = null;
  
  private static long lasttime = System.currentTimeMillis();
  
  private static List list = null;
  






  public List queryByMemtID(int memt_id, int page_size)
  {
    BaseResult rs = new ArticleRS();
    String sql = "";
    if (memt_id == 41) {
      sql = "select * from article where memt_id=41 and release_time is not null order by release_time desc";
    } else {
      sql = "select * from article where article_id in (select article_id from article_relation where relation_type=1) and memt_id=? order by release_time desc";
    }
    this.dba = new DBAccessDefaultlImpl();
    this.dba.setParam(new SQLParam(1, 1, memt_id));
    list = this.dba.queryDataPagination(sql, rs, page_size, 1);
    this.dba.closeConnection();
    lasttime = System.currentTimeMillis();
    return list;
  }
  





  public ProductSortVO getProduct(int prso_id_one)
  {
    this.dba = new DBAccessDefaultlImpl();
    BaseResult rs = new ProductSortRS();
    String sql = "select * from product_sort where prso_id_one=?";
    this.dba.setParam(new SQLParam(1, 1, prso_id_one));
    
    ProductSortVO vo = (ProductSortVO)this.dba.queryData(sql, rs).get(0);
    this.dba.closeConnection();
    return vo;
  }
  
  public ProductSortVO findprso(int article_id) {
    ProductSortVO vo = new ProductSortVO();
    BaseResult rs = new ArticleRelationRS();
    this.dba = new DBAccessDefaultlImpl();
    String sql = "select relation_value from article_relation where article_id=? and relation_type=1";
    
    this.dba.setParam(new SQLParam(1, 1, article_id));
    ArticleRelationVO vo2 = (ArticleRelationVO)this.dba.queryData(sql, rs).get(
      0);
    vo = getProduct(vo2.getRelation_value());
    
    return vo;
  }
  






  public List query(int memt_id, int page_size)
  {
    List listtmp = queryByMemtID(memt_id, page_size);
    List list = new ArrayList();
    
    Iterator it = listtmp.iterator();
    while (it.hasNext()) {
      ArticleVO vo = (ArticleVO)it.next();
      
      ProductSortVO ps = findprso(vo.getArticle_id());
      vo.setPrsoId(ps.getPrso_id_one());
      vo.setPrsoName(ps.getPrso_name_one().trim());
      vo.setPrsoNameOneEn(ps.getPrso_name_one_en());
      list.add(vo);
    }
    return list;
  }

  	/**
	 * <p>功能: 不分类查询最新资讯</p>
	 * @生成日期：2014-9-13 上午08:59:22
	 * @作者：xiaxy
     * @param page_size
     * @return
	 */
public List queryLast(int page_size)
  {
    BaseResult rs = new ArticleRS();
    String sql =  "select * from article where article_id in (select article_id from article_relation where relation_type=1) order by release_time desc";
    this.dba = new DBAccessDefaultlImpl();
    //this.dba.setParam(new SQLParam(1, 1, memt_id));
    List listtmp = this.dba.queryDataPagination(sql, rs, page_size, 1);
    this.dba.closeConnection();
    lasttime = System.currentTimeMillis();
    
    List list = new ArrayList();
    Iterator it = listtmp.iterator();
    while (it.hasNext()) {
      ArticleVO vo = (ArticleVO)it.next();
      
      ProductSortVO ps = findprso(vo.getArticle_id());
      vo.setPrsoId(ps.getPrso_id_one());
      vo.setPrsoName(ps.getPrso_name_one().trim());
      vo.setPrsoNameOneEn(ps.getPrso_name_one_en());
      list.add(vo);
    }
    return list;
  }

}

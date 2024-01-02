package com.ding9.result.productMaster;

import com.ding9.entity.productMaster.ProductMasterVO;
import com.ding9.sql.BaseResult;
import com.ding9.util.StringHelper;
import java.sql.ResultSet;
import java.sql.SQLException;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;

public class ProductMasterRS implements BaseResult
{
  private static Log log = LogFactory.getLog(ProductMasterRS.class);
  

  private ProductMasterVO vo = null;
  
  public Object getMapRow(ResultSet resultset, int i) throws SQLException {
    this.vo = new ProductMasterVO();
    try {
      this.vo.setPrma_remark(StringHelper.getSubString(resultset.getString("prma_remark"), 160));
      this.vo.setPrbr_id(resultset.getInt("prbr_id"));
      this.vo.setPrma_id(resultset.getInt("prma_id"));
      this.vo.setPrso_id(resultset.getInt("prso_id"));
      this.vo.setPrma_name(resultset.getString("prma_name"));
      this.vo.setMin_price(resultset.getFloat("min_price"));
      this.vo.setMerchant_count(resultset.getInt("merchant_count"));
      this.vo.setComment_count(resultset.getInt("comment_count"));
      this.vo.setProduct_level(Math.round(resultset.getFloat("product_level")));
      this.vo.setForestall(resultset.getInt("forestall"));
    } catch (Exception ex) {
      if (log.isDebugEnabled()) {
        log.debug("getMapRow");
        log.debug(ex.getMessage());
      }
    }
    return this.vo;
  }
}

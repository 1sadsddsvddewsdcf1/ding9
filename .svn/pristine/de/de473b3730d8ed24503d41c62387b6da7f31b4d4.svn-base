package com.ding9.result.productMaster;

import com.ding9.entity.productMaster.ProductMasterVO;
import com.ding9.sql.BaseResult;
import com.ding9.util.StringHelper;
import java.sql.ResultSet;
import java.sql.SQLException;




public class ProductMasterIndexRS
  implements BaseResult
{
  private ProductMasterVO vo = null;
  

  public Object getMapRow(ResultSet resultset, int i)
    throws SQLException
  {
    this.vo = new ProductMasterVO();
    this.vo.setPrma_name(resultset.getString("prma_name"));
    this.vo.setPrma_id(resultset.getInt("prma_id"));
    
    String remark = resultset.getString("prma_remark");
    remark = StringHelper.getSubString(remark, 70) + "...";
    
    this.vo.setPrma_remark(remark);
    this.vo.setCompete_sum(resultset.getInt("compete_sum"));
    this.vo.setPrso_id(resultset.getInt("prso_id"));
    return this.vo;
  }
}

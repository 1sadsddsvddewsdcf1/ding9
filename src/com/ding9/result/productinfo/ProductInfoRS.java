package com.ding9.result.productinfo;

import com.ding9.entity.productinfo.ProductInfoVO;
import com.ding9.sql.BaseResult;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductInfoRS implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i) throws SQLException
  {
    ProductInfoVO vo = new ProductInfoVO();
    vo.setInfo_id(rs.getInt("info_id"));
    vo.setSort_id(rs.getInt("sort_id"));
    
    vo.setPrma_id(rs.getInt("prma_id"));
    vo.setPrma_name(rs.getString("prma_name"));
    vo.setPic_address(rs.getString("pic_address"));
    vo.setPic_isupdate(rs.getInt("pic_isupdate"));
    vo.setMin_price(rs.getInt("min_price"));
    vo.setOld_price(rs.getInt("old_price"));
    vo.setMerchant_count(rs.getInt("merchant_count"));
    try
    {
      vo.setPrso_id_one(rs.getInt("sort_id_one"));
    }
    catch (Exception localException) {}
    



    try
    {
      vo.setPrso_name_one_en(rs.getString("sort_name_one_en"));
    }
    catch (Exception localException1) {}
    





    return vo;
  }
}

package com.ding9.result.productsort;

import com.ding9.entity.productsort.ProductSortVO;
import com.ding9.sql.BaseResult;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ProductSortRS implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i) throws SQLException
  {
    ProductSortVO vo = new ProductSortVO();
    
    vo.setPrso_id_one(rs.getInt("prso_id_one"));
    try {
      vo.setPrso_id_two(rs.getInt("prso_id_two"));
    } catch (Exception localException) {}
    try {
      vo.setPrso_id_three(rs.getInt("prso_id_three"));
    } catch (Exception localException1) {}
    try {
      vo.setPrso_name_one(rs.getString("prso_name_one"));
    } catch (Exception localException2) {}
    try {
      vo.setPrso_name_one_en(rs.getString("prso_name_one_en"));
    } catch (Exception localException3) {}
    try {
      vo.setPrso_name_three_en(rs.getString("prso_name_three_en"));
    }
    catch (Exception localException4) {}
    return vo;
  }
}

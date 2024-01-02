package com.ding9.result.salepromotion;

import com.ding9.entity.salepromotion.SalePromotionVO;
import com.ding9.sql.BaseResult;
import com.ding9.util.DateHelper;
import java.sql.ResultSet;
import java.sql.SQLException;

public class SalePromotionRS implements BaseResult
{
  public Object getMapRow(ResultSet rs, int i) throws SQLException
  {
    SalePromotionVO vo = new SalePromotionVO();
    
    vo.setInfo_id(rs.getInt("info_id"));
    vo.setPrso_id_one(rs.getInt("prso_id_one"));
    vo.setSort_id(rs.getInt("sort_id"));
    vo.setTitle(com.ding9.util.StringHelper.getSubString(rs.getString("title"), 28));
    vo.setContent(rs.getString("content"));
    vo.setPub_time(
      DateHelper.toString(rs.getTimestamp("pub_time"), "yyyy-MM-dd"));
    vo.setMerc_id(rs.getInt("merc_id"));
    vo.setPrma_id(rs.getInt("prma_id"));
    vo.setUseful_life(rs.getString("useful_life"));
    vo.setOut_date(
      DateHelper.toString(rs.getTimestamp("out_date"), "yyyy-MM-dd"));
    vo.setCooperate_id(rs.getInt("cooperate_id"));
    vo.setInfo_source(rs.getString("info_source"));
    vo.setSource_url(rs.getString("source_url"));
    vo.setInfo_type(rs.getInt("info_type"));
    vo.setInfo_status(rs.getInt("info_status"));
    vo.setRebate_range(rs.getString("rebate_range"));
    vo.setBrand_name(rs.getString("brand_name"));
    vo.setStore_name(rs.getString("store_name"));
    vo.setMarketplace(rs.getString("marketplace"));
    vo.setPrso_id_two(rs.getInt("prso_id_two"));
    vo.setPrso_id_three(rs.getInt("prso_id_three"));
    vo.setPrso_name(rs.getString("prso_name"));
    vo.setSowntown(rs.getString("sowntown"));
    vo.setPicture(rs.getString("picture"));
    

    vo.setShop_id(rs.getInt("shop_id"));
    vo.setType_id(rs.getInt("type_id"));
    return vo;
  }
}

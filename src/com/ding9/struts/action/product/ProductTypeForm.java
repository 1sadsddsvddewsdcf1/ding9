package com.ding9.struts.action.product;

import com.ding9.util.SearchKeyUtils;
import javax.servlet.http.HttpServletRequest;
import org.apache.commons.lang.math.NumberUtils;
import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionMapping;






public class ProductTypeForm
  extends ActionForm
{
  private static final long serialVersionUID = -4925251778895472518L;
  private String prma_name;
  private int prma_id;
  private int prbr_id;
  private int prso_id_one;
  private int prso_id_three;
  private int current_page;
  private int order_asc_desc;
  private int page_size;
  private float min_price;
  private float max_price;
  private String[] cmdCompare;
  private String cmdSearch;
  private String select_prma_id;
  private int type;
  private String prso_name_one_en = null;
  private String prso_name_three_en = null;
  private String key;
  
  public int getType() {
    return this.type;
  }
  
  public void setType(int type) {
    this.type = type;
  }
  
  public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
    return null;
  }
  
  public void reset(ActionMapping mapping, HttpServletRequest request) {
    this.prbr_id = 0;
  }
  
  public String[] getCmdCompare() {
    return this.cmdCompare;
  }
  
  public void setCmdCompare(String[] cmdCompare) {
    this.cmdCompare = cmdCompare;
  }
  
  public int getCurrent_page() {
    return this.current_page;
  }
  
  public void setCurrent_page(int current_page) {
    this.current_page = current_page;
  }
  
  public int getOrder_asc_desc() {
    return this.order_asc_desc;
  }
  
  public void setOrder_asc_desc(int order_asc_desc) {
    this.order_asc_desc = order_asc_desc;
  }
  
  public int getPrbr_id() {
    return this.prbr_id;
  }
  
  public void setPrbr_id(int prbr_id) {
    this.prbr_id = prbr_id;
  }
  
  public int getPrma_id() {
    return this.prma_id;
  }
  
  public void setPrma_id(int prma_id) {
    this.prma_id = prma_id;
  }
  
  public String getPrma_name() {
    return this.prma_name;
  }
  
  public void setPrma_name(String prma_name) {
    this.prma_name = prma_name;
  }
  
  public int getPrso_id_three() {
    return this.prso_id_three;
  }
  
  public void setPrso_id_three(int prso_id_three) {
    this.prso_id_three = prso_id_three;
  }
  
  public String getSelect_prma_id() {
    return this.select_prma_id;
  }
  
  public void setSelect_prma_id(String select_prma_id) {
    this.select_prma_id = select_prma_id;
  }
  
  public int getPage_size() {
    return this.page_size;
  }
  
  public void setPage_size(int page_size) {
    this.page_size = page_size;
  }
  
  public int getPrso_id_one() {
    return this.prso_id_one;
  }
  
  public void setPrso_id_one(int prso_id_one) {
    this.prso_id_one = prso_id_one;
  }
  
  public String getCmdSearch() {
    return this.cmdSearch;
  }
  
  public void setCmdSearch(String cmdSearch) {
    this.cmdSearch = cmdSearch;
  }
  
  public float getMax_price() {
    return this.max_price;
  }
  
  public void setMax_price(float max_price) {
    this.max_price = max_price;
  }
  
  public float getMin_price() {
    return this.min_price;
  }
  
  public void setMin_price(float min_price) {
    this.min_price = min_price;
  }
  
  public String getPrso_name_one_en() {
    return this.prso_name_one_en;
  }
  
  public void setPrso_name_one_en(String name) {
    this.prso_name_one_en = name;
  }
  
  public String getPrso_name_three_en() {
    return this.prso_name_three_en;
  }
  
  public void setPrso_name_three_en(String name) {
    this.prso_name_three_en = name;
  }
  
  public String getKey() {
    return this.key;
  }
  
  public void setKey(String key) {
    this.key = key;
    String[] ks = SearchKeyUtils.decodeKey(key);
    this.min_price = NumberUtils.createFloat(ks[0]).floatValue();
    this.max_price = NumberUtils.createFloat(ks[1]).floatValue();
    this.prma_name = ks[2];
  }
}

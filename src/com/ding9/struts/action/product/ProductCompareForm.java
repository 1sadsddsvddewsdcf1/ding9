package com.ding9.struts.action.product;

import org.apache.struts.action.ActionForm;

public class ProductCompareForm extends ActionForm
{
  private int dell_id;
  private int prso_id;
  private String select_prma_id;
  
  public String getSelect_prma_id()
  {
    return this.select_prma_id;
  }
  
  public void setSelect_prma_id(String select_prma_id) { this.select_prma_id = select_prma_id; }
  
  public int getDell_id() {
    return this.dell_id;
  }
  
  public void setDell_id(int dell_id) { this.dell_id = dell_id; }
  
  public int getPrso_id() {
    return this.prso_id;
  }
  
  public void setPrso_id(int prso_id) { this.prso_id = prso_id; }
}

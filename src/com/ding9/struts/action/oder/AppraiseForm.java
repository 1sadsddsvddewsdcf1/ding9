package com.ding9.struts.action.oder;

import org.apache.struts.action.ActionForm;



public class AppraiseForm
  extends ActionForm
{
  private int comment_id = 0;
  
  private int prma_id;
  
  private String title;
  
  private String advantage;
  
  private String disadvantage;
  
  private String content;
  
  private int product_level;
  
  private String chk;
  
  public String getChk()
  {
    return this.chk;
  }
  
  public void setChk(String chk) {
    this.chk = chk;
  }
  
  public String getAdvantage() {
    return this.advantage;
  }
  
  public void setAdvantage(String advantage) {
    this.advantage = advantage;
  }
  
  public String getContent() {
    return this.content;
  }
  
  public void setContent(String content) {
    this.content = content;
  }
  
  public String getDisadvantage() {
    return this.disadvantage;
  }
  
  public void setDisadvantage(String disadvantage) {
    this.disadvantage = disadvantage;
  }
  

  public int getPrma_id()
  {
    return this.prma_id;
  }
  
  public void setPrma_id(int prma_id) {
    this.prma_id = prma_id;
  }
  
  public int getProduct_level() {
    return this.product_level;
  }
  
  public void setProduct_level(int product_level) {
    this.product_level = product_level;
  }
  
  public String getTitle() {
    return this.title;
  }
  
  public void setTitle(String title) {
    this.title = title;
  }
  
  public int getComment_id() {
    return this.comment_id;
  }
  
  public void setComment_id(int comment_id) {
    this.comment_id = comment_id;
  }
}

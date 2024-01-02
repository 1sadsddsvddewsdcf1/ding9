package com.ding9.entity.commentsonpro;

import com.ding9.util.HTMLFI;










public class CommentsOnProductVO
{
  private int id;
  private int prma_id;
  private String prma_name;
  private String title;
  private String content;
  private String prac_address;
  private String web_address;
  private String release_time;
  private String advantage;
  private String disadvantage;
  private int prso_id;
  private String con;
  private int prsoid;
  
  public int getPrsoid()
  {
    return this.prsoid;
  }
  
  public void setPrsoid(int prsoid) {
    this.prsoid = prsoid;
  }
  
  public String getCon() {
    return HTMLFI.toHTML(this.content).trim();
  }
  
  public String getAdvantage() {
    return this.advantage;
  }
  
  public void setAdvantage(String advantage) {
    this.advantage = advantage;
  }
  
  public String getDisadvantage() {
    return this.disadvantage;
  }
  
  public void setDisadvantage(String disadvantage) {
    this.disadvantage = disadvantage;
  }
  
  public int getPrso_id() {
    return this.prso_id;
  }
  
  public void setPrso_id(int prso_id) {
    this.prso_id = prso_id;
  }
  
  public String getContent() {
    return this.content;
  }
  
  public void setContent(String content) {
    this.content = content;
  }
  
  public String getPrac_address() {
    return this.prac_address;
  }
  
  public void setPrac_address(String prac_address) {
    this.prac_address = prac_address;
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
  
  public String getRelease_time() {
    return this.release_time;
  }
  
  public void setRelease_time(String release_time) {
    this.release_time = release_time;
  }
  
  public String getTitle() {
    return this.title;
  }
  
  public void setTitle(String title) {
    this.title = title;
  }
  
  public String getWeb_address() {
    return this.web_address;
  }
  
  public void setWeb_address(String web_address) {
    this.web_address = web_address;
  }
  
  public int getId() {
    return this.id;
  }
  
  public void setId(int id) {
    this.id = id;
  }
}

package com.ding9.entity.comments;


public class CommentsVO
{
  private int id;
  
  private int prma_id;
  
  private int comment_id;
  
  private String title;
  private String picture;
  private String prma_name;
  private String brief;
  private int channel_id;
  private String date_added;
  private int prso_id;
  private int prso_id_one;
  private String prso_name_one_en;
  
  public String getBrief()
  {
    return this.brief;
  }
  
  public void setBrief(String brief) { this.brief = brief; }
  
  public int getChannel_id() {
    return this.channel_id;
  }
  
  public void setChannel_id(int channel_id) { this.channel_id = channel_id; }
  
  public int getComment_id() {
    return this.comment_id;
  }
  
  public void setComment_id(int comment_id) { this.comment_id = comment_id; }
  
  public String getDate_added() {
    return this.date_added;
  }
  
  public void setDate_added(String date_added) { this.date_added = date_added; }
  
  public int getId() {
    return this.id;
  }
  
  public void setId(int id) { this.id = id; }
  
  public String getPicture() {
    return this.picture;
  }
  
  public void setPicture(String picture) { this.picture = picture; }
  
  public int getPrma_id() {
    return this.prma_id;
  }
  
  public void setPrma_id(int prma_id) { this.prma_id = prma_id; }
  
  public String getPrma_name() {
    return this.prma_name;
  }
  
  public void setPrma_name(String prma_name) { this.prma_name = prma_name; }
  
  public String getTitle() {
    return this.title;
  }
  
  public void setTitle(String title) { this.title = title; }
  
  public int getPrso_id() {
    return this.prso_id;
  }
  
  public void setPrso_id(int prso_id) { this.prso_id = prso_id; }
  
  public int getPrso_id_one() {
    return this.prso_id_one;
  }
  
  public void setPrso_id_one(int prso_id_one) { this.prso_id_one = prso_id_one; }
  
  public String getPrso_name_one_en() {
    return this.prso_name_one_en;
  }
  
  public void setPrso_name_one_en(String name) { this.prso_name_one_en = name; }
}

package com.ding9.entity.sysnews;


public class SysNewsVo
{
  private int syne_id;
  
  private int synt_id;
  
  private String syne_title;
  private String syne_counnet;
  private String sys_accessory;
  private int syne_submit;
  private String syne_time;
  
  public String getSyne_counnet()
  {
    return this.syne_counnet;
  }
  
  public void setSyne_counnet(String syne_counnet) {
    this.syne_counnet = syne_counnet;
  }
  
  public int getSyne_id() {
    return this.syne_id;
  }
  
  public void setSyne_id(int syne_id) {
    this.syne_id = syne_id;
  }
  
  public int getSyne_submit() {
    return this.syne_submit;
  }
  
  public void setSyne_submit(int syne_submit) {
    this.syne_submit = syne_submit;
  }
  
  public String getSyne_time()
  {
    return this.syne_time;
  }
  
  public void setSyne_time(String syne_time) {
    this.syne_time = syne_time;
  }
  
  public String getSyne_title() {
    return this.syne_title;
  }
  
  public void setSyne_title(String syne_title) {
    this.syne_title = syne_title;
  }
  
  public int getSynt_id() {
    return this.synt_id;
  }
  
  public void setSynt_id(int synt_id) {
    this.synt_id = synt_id;
  }
  
  public String getSys_accessory() {
    return this.sys_accessory;
  }
  
  public void setSys_accessory(String sys_accessory) {
    this.sys_accessory = sys_accessory;
  }
  

  public String toString()
  {
    return this.syne_id + "   | " + this.synt_id + "    |" + this.syne_title + "   |" + this.syne_counnet.substring(0, 20) + " |" + this.sys_accessory + "|   " + this.syne_submit + " |  " + this.syne_time;
  }
}

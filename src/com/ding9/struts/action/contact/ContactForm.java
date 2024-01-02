package com.ding9.struts.action.contact;

import org.apache.struts.action.ActionForm;

public class ContactForm extends ActionForm
{
  private int id;
  private String name;
  private String email;
  private String content;
  private String deparment;
  
  public String getDeparment()
  {
    return this.deparment;
  }
  
  public void setDeparment(String deparment) { this.deparment = deparment; }
  
  public String getContent() {
    return this.content;
  }
  
  public void setContent(String content) { this.content = content; }
  
  public String getEmail() {
    return this.email;
  }
  
  public void setEmail(String email) { this.email = email; }
  
  public int getId() {
    return this.id;
  }
  
  public void setId(int id) { this.id = id; }
  
  public String getName() {
    return this.name;
  }
  
  public void setName(String name) { this.name = name; }
}

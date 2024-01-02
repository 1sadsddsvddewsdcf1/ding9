package com.ding9.dao.contact;

import com.ding9.sql.DBAccessDefaultlImpl;
import com.ding9.sql.IDBAccess;
import com.ding9.sql.SQLParam;


public class ContactDaoImpl
{
  public int saveContact(String name, String email, String content, String deparment)
  {
    int rst = 0;
    
    IDBAccess dba = new DBAccessDefaultlImpl();
    StringBuffer buffer = new StringBuffer();
    buffer.append(" insert into sys_suggest ");
    buffer.append(" (sysu_id,sysu_relation,sysu_name,sysu_mail,sysu_question,sysu_deparment,sysu_time)");
    buffer.append(" values(seq_sys_suggest.nextval,' ', ?, ?, ?,?, trunc(sysdate)) ");
    dba = new DBAccessDefaultlImpl();
    
    int index = 1;
    
    dba.setParam(SQLParam.createStringParam(index++, name));
    dba.setParam(SQLParam.createStringParam(index++, email));
    dba.setParam(SQLParam.createStringParam(index++, content));
    dba.setParam(SQLParam.createStringParam(index++, deparment));
    
    rst = dba.modifyData(buffer.toString());
    
    return rst;
  }
}

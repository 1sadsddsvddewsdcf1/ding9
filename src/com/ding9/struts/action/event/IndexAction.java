package com.ding9.struts.action.event;

import com.ding9.dao.sysnews.SysnewsDao;
import com.ding9.dao.sysnews.SysnewsDaoImpl;
import com.ding9.struts.form.event.IndexForm;
import java.io.PrintStream;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class IndexAction
  extends Action
{
  private static final Log log = LogFactory.getLog(IndexAction.class);
  
  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response)
    throws Exception
  {
    IndexForm frm = (IndexForm)form;
    long begintime = System.currentTimeMillis();
    

    SysnewsDao dao = new SysnewsDaoImpl();
    
    int synt_id = frm.getSynt_id();
    int page_size = frm.getPage_size();
    int current_page = frm.getCurrent_page();
    
    if (current_page < 1)
      current_page = 1;
    if (page_size < 1)
      page_size = 10;
    if (synt_id < 1) {
      synt_id = 4;
    }
    





    int count_record = dao.getCountBySyntId(synt_id);
    
    if (count_record > 0) { int count_page;
      //int count_page;
      if (count_record % page_size == 0) {
        count_page = count_record / page_size;
      } else {
        count_page = count_record / page_size + 1;
      }
      if (count_page < current_page) {
        current_page = count_page;
      }
      frm.setCurrent_page(current_page);
      //String item_start_end;
      String item_start_end; if (count_page == current_page) {
        item_start_end = 
        
          (current_page - 1) * page_size + 1 + "-" + ((current_page - 1) * page_size + (count_record - (count_page - 1) * page_size));
      } else {
        item_start_end = 
          (current_page - 1) * page_size + 1 + "-" + ((current_page - 1) * page_size + page_size);
      }
      


      List list = dao.query(synt_id, current_page, page_size);
      
      if ((list != null) && (list.size() > 0)) {
        request.setAttribute("SYSNEWS", list);
        request.setAttribute("SYNTID", Integer.valueOf(synt_id));
        request.setAttribute("PAGESIZE", Integer.valueOf(page_size));
        request.setAttribute("COUNTPAGE", Integer.valueOf(count_page));
        request.setAttribute("COUNTRECORD", Integer.valueOf(count_record));
        request.setAttribute("CURRENTPAGE", Integer.valueOf(current_page));
        request.setAttribute("ITEMSTARTEND", item_start_end);
      }
      System.out.print("~~~~~~~~~~~~count=" + count_record + 
        "..cur_page=" + current_page + "...page_size" + page_size + 
        "...count_page=" + count_page);
    }
    try
    {
      if (log.isWarnEnabled()) {
        log.warn("(大事记分页栏目信息)  所用时间: " + (
          System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    
    return mapping.findForward("success");
  }
}

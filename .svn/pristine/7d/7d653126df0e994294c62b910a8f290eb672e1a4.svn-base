package com.ding9.struts.action.labe;

import com.ding9.struts.form.labe.IndexForm;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.log4j.Logger;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;


public class IndexAction
  extends Action
{
  private Logger logger = Logger.getLogger(getClass().getName());
  
  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
    IndexForm frm = (IndexForm)form;
    

    return mapping.findForward("success");
  }
}

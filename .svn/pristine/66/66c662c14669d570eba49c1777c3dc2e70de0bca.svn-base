package com.ding9.struts.action.contact;

import com.ding9.dao.contact.ContactDaoImpl;
import com.ding9.util.UrlRewriteManager;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.actions.DispatchAction;




public class ContactAction
  extends DispatchAction
{
  public ActionForward addContact(ActionMapping mapping, ActionForm frm, HttpServletRequest req, HttpServletResponse res)
    throws Exception
  {
    ContactForm cf = (ContactForm)frm;
    
    ContactDaoImpl cdi = new ContactDaoImpl();
    cdi.saveContact(cf.getName(), cf.getEmail(), cf.getContent(), cf.getDeparment());
    
    String redect = UrlRewriteManager.dynamic2static("/switch.do?msg=contact");
    
    res.sendRedirect(redect);
    
    return mapping.findForward("contact");
  }
}

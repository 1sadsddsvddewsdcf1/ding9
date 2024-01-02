package com.ding9.struts.action.focus;

import com.ding9.dao.sysnews.SysnewsDao;
import com.ding9.dao.sysnews.SysnewsDaoImpl;
import com.ding9.entity.sysnews.SysNewsVo;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;



public class Focuscomment
  extends Action
{
  private static final Log log = LogFactory.getLog(Focuscomment.class);
  
  public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
    long begintime = System.currentTimeMillis();
    
    String sy = request.getParameter("syne_id");
    Integer syne_id = Integer.valueOf(Integer.parseInt(sy));
    SysnewsDao dao = new SysnewsDaoImpl();
    SysNewsVo vo = dao.finkByPk(syne_id.intValue());
    
    request.setAttribute("newsVO", vo);
    try {
      if (log.isWarnEnabled()) {
        log.warn("(聚集顶九栏目单条详细信息)  所用时间: " + (System.currentTimeMillis() - begintime));
      }
    } catch (Exception ex) {
      if (log.isErrorEnabled()) {
        log.error(ex);
      }
    }
    
    return mapping.findForward("success");
  }
}

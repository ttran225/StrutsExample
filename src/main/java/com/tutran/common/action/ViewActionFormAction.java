package com.tutran.common.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tutran.common.form.MyActionForm;

public class ViewActionFormAction extends BaseAction {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String submit = request.getParameter("submit");
		if (submit == null) {
			request.setAttribute("submit", false);
		} else {
			MyActionForm frm = (MyActionForm) form;
			request.setAttribute("submit", true);
			request.setAttribute("form", frm);
		}
		return mapping.findForward("success");
	}

}

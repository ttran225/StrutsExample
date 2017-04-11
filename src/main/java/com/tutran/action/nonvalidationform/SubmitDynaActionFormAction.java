package com.tutran.action.nonvalidationform;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.DynaActionForm;

import com.tutran.action.common.BaseAction;

public class SubmitDynaActionFormAction extends BaseAction {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		DynaActionForm frm = (DynaActionForm) form;
		return mapping.findForward("success");
	}

}
package com.tutran.action.nonvalidationform;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tutran.action.common.BaseAction;
import com.tutran.form.nonvalidationform.MyActionForm;

public class SubmitActionFormAction extends BaseAction {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		MyActionForm frm = (MyActionForm) form;
		return mapping.findForward("success");
	}

}

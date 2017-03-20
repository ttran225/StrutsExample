package com.tutran.common.action.validation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tutran.common.form.validation.TestValidatorForm;

public class SubmitValidatorFormAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		TestValidatorForm frm = (TestValidatorForm) form;
		System.out.println(frm);
		return mapping.findForward("success");
	}

}

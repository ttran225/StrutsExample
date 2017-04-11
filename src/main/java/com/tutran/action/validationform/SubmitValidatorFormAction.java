package com.tutran.action.validationform;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tutran.form.validationform.MyValidatorForm;

public class SubmitValidatorFormAction extends Action{
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		MyValidatorForm frm = (MyValidatorForm) form;
		System.out.println(frm);
		return mapping.findForward("success");
	}

}


package com.tutran.common.action.helloworld;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tutran.common.form.helloworld.HelloWorldForm;

public class HelloWorldAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		HelloWorldForm hello = (HelloWorldForm) form;
		hello.setMessage("Welcome to Struts");
		return mapping.findForward("success");
	}

}

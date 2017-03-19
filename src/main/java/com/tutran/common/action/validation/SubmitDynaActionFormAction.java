package com.tutran.common.action.validation;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;
import org.apache.struts.action.ActionMessages;
import org.apache.struts.action.DynaActionForm;

public class SubmitDynaActionFormAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		DynaActionForm frm = (DynaActionForm) form;
		ActionMessages errors = new ActionMessages();
		String name = (String)frm.get("name");
		String email = (String)frm.get("email");
		String username = (String)frm.get("username");
		String password = (String)frm.get("password");
		String password2 = (String)frm.get("password2");
		if (name == null || StringUtils.isBlank(name)) {
			errors.add("common.name.err", new ActionMessage("err.user.name.required"));
		}
		if (email == null || StringUtils.isBlank(email)) {
			errors.add("common.email.err", new ActionMessage("err.user.email.required"));
		}
		if (username == null || StringUtils.isBlank(username)) {
			errors.add("common.username.err", new ActionMessage("err.user.username.required"));
		}
		if (password == null || StringUtils.isBlank(password)) {
			errors.add("common.password.err", new ActionMessage("err.user.password.required"));
		}
		if (password2 == null || StringUtils.isBlank(password2)) {
			errors.add("common.password2.err", new ActionMessage("err.user.password2.required"));
		}
		
		saveErrors(request, errors);
		
		if (errors.isEmpty()) {
			return mapping.findForward("success");
		} else {
			return mapping.findForward("fail");
		}
		
	}

}

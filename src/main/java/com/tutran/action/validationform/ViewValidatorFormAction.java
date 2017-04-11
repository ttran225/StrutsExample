package com.tutran.action.validationform;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tutran.action.common.BaseAction;
import com.tutran.common.util.StrutsStringUtils;
import com.tutran.form.validationform.MyValidatorForm;

public class ViewValidatorFormAction extends BaseAction {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		if (isErrorsExist(request)) {
			String action = ((MyValidatorForm) form).getAction();
			if (StringUtils.isNotBlank(action)) {
				if (StrutsStringUtils.LOGIN_ACTION.equals(action)) {
					request.setAttribute("active", StrutsStringUtils.LOGIN_ACTION);
				} else if (StrutsStringUtils.REGISTER_ACTION.equals(action)) {
					request.setAttribute("active", StrutsStringUtils.REGISTER_ACTION);
				}
			} else {
				request.setAttribute("active", StrutsStringUtils.LOGIN_ACTION);
			}
		}
		
		return mapping.findForward("success");
	}

}

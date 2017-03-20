package com.tutran.common.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.Globals;
import org.apache.struts.action.Action;
import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessages;

public class BaseAction extends Action {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		return super.execute(mapping, form, request, response);
	}
	
	/**
	 * @return true if struts errors already exist in the request, usually
	 *         indicating a submit action failed validation and view action now
	 *         being called to redisplay the page, in this case do not default
	 *         any form value
	 */
	protected boolean isErrorsExist(HttpServletRequest request) {
		ActionMessages errorMessages = (ActionMessages) request.getAttribute(Globals.ERROR_KEY);
		return errorMessages != null && !errorMessages.isEmpty();
	}

}

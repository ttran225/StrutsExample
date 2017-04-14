package com.tutran.action.database;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tutran.action.common.BaseAction;
import com.tutran.common.model.Department;
import com.tutran.common.util.DBUtil;

public class ViewDepartmentsAction extends BaseAction {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Collection<Department> departments = DBUtil.getDepartments();
		request.setAttribute("departments", departments);
		return mapping.findForward("success");
	}

}

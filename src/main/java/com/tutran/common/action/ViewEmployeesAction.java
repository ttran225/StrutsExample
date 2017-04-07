package com.tutran.common.action;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;

import com.tutran.common.database.DBUtil;
import com.tutran.common.database.Employee;

public class ViewEmployeesAction extends BaseAction {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Collection<Employee> employees = DBUtil.getEmployees();
		request.setAttribute("employees", employees);
		return mapping.findForward("success");
	}

}

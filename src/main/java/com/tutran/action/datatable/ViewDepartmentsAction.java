package com.tutran.action.datatable;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.json.JSONArray;

import com.tutran.action.common.BaseAction;
import com.tutran.common.util.DBUtil;
import com.tutran.common.util.Department;

public class ViewDepartmentsAction extends BaseAction {
	
	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Collection<Department> departments = DBUtil.getDepartments();
		JSONArray array = new JSONArray();
		for (Department department : departments) {
			JSONArray obj = new JSONArray();
			obj.put(department.getDepartmentId());
			obj.put(department.getDepartmentName());
			array.put(obj);
		}
		request.setAttribute("result", array);
		return mapping.findForward("success");
	}

}

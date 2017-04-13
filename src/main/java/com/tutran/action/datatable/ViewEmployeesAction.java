package com.tutran.action.datatable;

import java.util.Collection;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.json.JSONArray;
import org.json.JSONObject;

import com.tutran.action.common.BaseAction;
import com.tutran.common.util.DBUtil;
import com.tutran.common.util.Employee;

public class ViewEmployeesAction extends BaseAction {

	@Override
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		Collection<Employee> employees = DBUtil.getEmployees();
		JSONArray array = new JSONArray();
		for (Employee employee : employees) {
			JSONObject obj = new JSONObject();
			obj.put("employeeId", employee.getEmployeeId());
			obj.put("firstName", employee.getFirstName());
			obj.put("lastName", employee.getLastName());
			obj.put("birthDate", employee.getBirthDate());
			obj.put("gender", employee.getGender());
			obj.put("hireDate", employee.getHireDate());
			array.put(obj);
		}
		request.setAttribute("result", array);
		return mapping.findForward("success");
	}
}

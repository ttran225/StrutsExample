package com.tutran.common.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;

public class DBUtil {
	
	private static final SQLProperties SQL = SQLProperties.getInstance("database.sql");
	
	public static Collection<Department> getDepartments() throws SQLException {
		Connection con = null;
		Collection<Department> departments = new ArrayList<Department>();
		try {
			Class.forName(StrutsStringUtils.DRIVER);
			con = DriverManager.getConnection(StrutsStringUtils.URL, StrutsStringUtils.USER, StrutsStringUtils.PASSWORD);
			PreparedStatement stmt = con.prepareStatement(SQL.getStatement(StrutsStringUtils.SELECT_DEPARTMENTS));
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				String departmentId = rs.getString("dept_no");
				String departmentName = rs.getString("dept_name");
				departments.add(new Department(departmentId, departmentName));
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			con.close();
		}
		return departments;
	}
	
	public static Collection<Employee> getEmployees() throws SQLException {
		Connection con = null;
		Collection<Employee> employees = new ArrayList<Employee>();
		try {
			Class.forName(StrutsStringUtils.DRIVER);
			con = DriverManager.getConnection(StrutsStringUtils.URL, StrutsStringUtils.USER, StrutsStringUtils.PASSWORD);
			PreparedStatement stmt = con.prepareStatement(SQL.getStatement(StrutsStringUtils.SELECT_EMPLOYEES));
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				int employeeId = rs.getInt("emp_no");
				String firstName = rs.getString("first_name");
				String lastName = rs.getString("last_name");
				Date birthDate = rs.getDate("birth_date");
				Gender gender = Gender.valueOf(rs.getString("gender"));
				Date bireDate = rs.getDate("hire_date");
				employees.add(new Employee(employeeId, firstName, lastName, birthDate, gender, bireDate));
			}
		} catch (Exception e) {
			System.out.println(e);
		} finally {
			con.close();
		}
		return employees;
	}

}

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
	
	// Use factory pattern
	private static final Properties SQL = Properties.getInstance("database.sql");
	private static final Properties PROP = Properties.getInstance("database.properties");
	
	// Don't use pattern
//	private static final SQLProperties SQL = new SQLProperties("database.sql");
//	private static final ReadProperties PROP = new ReadProperties("database.properties");
	
	private static final String DRIVER = PROP.loadProperty(StrutsStringUtils.DRIVER);
	private static final String URL = PROP.loadProperty(StrutsStringUtils.URL);
	private static final String USER = PROP.loadProperty(StrutsStringUtils.USER);
	private static final String PASSWORD = PROP.loadProperty(StrutsStringUtils.PASSWORD);
	
	private static final String SELECT_DEPARTMENTS = SQL.getStatement(StrutsStringUtils.SELECT_DEPARTMENTS);
	private static final String SELECT_EMPLOYEES = SQL.getStatement(StrutsStringUtils.SELECT_EMPLOYEES);
	
	public static Collection<Department> getDepartments() throws SQLException {
		Connection con = null;
		Collection<Department> departments = new ArrayList<Department>();
		try {
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL, USER, PASSWORD);
			PreparedStatement stmt = con.prepareStatement(SELECT_DEPARTMENTS);
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
			Class.forName(DRIVER);
			con = DriverManager.getConnection(URL, USER, PASSWORD);
			PreparedStatement stmt = con.prepareStatement(SELECT_EMPLOYEES);
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

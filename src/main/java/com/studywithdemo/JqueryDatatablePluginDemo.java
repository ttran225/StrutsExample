package com.studywithdemo;

import java.io.*;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import org.json.*;

@SuppressWarnings("serial")
public class JqueryDatatablePluginDemo extends HttpServlet {

 private String GLOBAL_SEARCH_TERM;
 private String COLUMN_NAME;
 private String DIRECTION;
 private int INITIAL;
 private int RECORD_SIZE;
 private String EMPNO_SEARCH_TERM, FIRSTNAME_SEARCH_TERM, LASTNAME_SEARCH_TERM, BIRTHDATE_SEARCH_TERM, GENDER_SEARCH_TERM, HIREDATE_SEARCH_TERM;

 public void doGet(HttpServletRequest request, HttpServletResponse response)
   throws ServletException, IOException {

  String[] columnNames = { "emp_no", "first_name", "last_name", "birth_date", "gender", "hire_date" };

  JSONObject jsonResult = new JSONObject();
  int listDisplayAmount = 10;
  int start = 0;
  int column = 0;
  String dir = "asc";
  String pageNo = request.getParameter("iDisplayStart");
  String pageSize = request.getParameter("iDisplayLength");
  String colIndex = request.getParameter("iSortCol_0");
  String sortDirection = request.getParameter("sSortDir_0");
  
  if (pageNo != null) {
   start = Integer.parseInt(pageNo);
   if (start < 0) {
    start = 0;
   }
  }
  if (pageSize != null) {
   listDisplayAmount = Integer.parseInt(pageSize);
   if (listDisplayAmount < 10 || listDisplayAmount > 50) {
    listDisplayAmount = 10;
   }
  }
  if (colIndex != null) {
   column = Integer.parseInt(colIndex);
   if (column < 0 || column > 5)
    column = 0;
  }
  if (sortDirection != null) {
   if (!sortDirection.equals("asc"))
    dir = "desc";
  }

  String colName = columnNames[column];
  int totalRecords= -1;
  try {
   totalRecords = getTotalRecordCount();
  } catch (SQLException e1) {
   e1.printStackTrace();
  }

  RECORD_SIZE = listDisplayAmount;
  GLOBAL_SEARCH_TERM = request.getParameter("sSearch");
  EMPNO_SEARCH_TERM=request.getParameter("sSearch_0");
  FIRSTNAME_SEARCH_TERM=request.getParameter("sSearch_1");
  LASTNAME_SEARCH_TERM=request.getParameter("sSearch_2");
  BIRTHDATE_SEARCH_TERM=request.getParameter("sSearch_3");
  GENDER_SEARCH_TERM=request.getParameter("sSearch_4");
  HIREDATE_SEARCH_TERM=request.getParameter("sSearch_5");
  COLUMN_NAME = colName;
  DIRECTION = dir;
  INITIAL = start;

  try {
   jsonResult = getPersonDetails(totalRecords, request);
  } catch (ClassNotFoundException e) {
   e.printStackTrace();
  } catch (SQLException e) {
   e.printStackTrace();
  }

  response.setContentType("application/json");
  response.setHeader("Cache-Control", "no-store");
  PrintWriter out = response.getWriter();
  out.print(jsonResult);

 }

 public JSONObject getPersonDetails(int totalRecords, HttpServletRequest request)
   throws SQLException, ClassNotFoundException {

  int totalAfterSearch = totalRecords;
  JSONObject result = new JSONObject();
  JSONArray array = new JSONArray();
  String searchSQL = "";

  try {
   Class.forName("com.mysql.jdbc.Driver");
  } catch (ClassNotFoundException e) {
   e.printStackTrace();
  }
  String dbConnectionURL = "jdbc:mysql://localhost:3306/employees?user=root&password=password";
  Connection con = DriverManager.getConnection(dbConnectionURL);
  String sql = "SELECT " + "emp_no, first_name, last_name, birth_date, gender, "
    + "hire_date " + "FROM " + "employees " + "WHERE ";

  String globeSearch = "emp_no like '%" + GLOBAL_SEARCH_TERM + "%'"
    + "or first_name like '%" + GLOBAL_SEARCH_TERM + "%'"
    + "or last_name like '%" + GLOBAL_SEARCH_TERM + "%'"
    + "or birth_date like '%" + GLOBAL_SEARCH_TERM + "%'"
    + "or gender like  '%" + GLOBAL_SEARCH_TERM + "%'"
    + "or hire_date like '%" + GLOBAL_SEARCH_TERM + "%'";
  
  String empNoSearch="emp_no like " + EMPNO_SEARCH_TERM + "";
  String firstNameSearch="first_name like '%" + FIRSTNAME_SEARCH_TERM + "%'";
  String lastNameSearch=" last_name like '%" + LASTNAME_SEARCH_TERM + "%'";
  String birthDateSearch=" birth_date like '%" + BIRTHDATE_SEARCH_TERM + "%'";
  String genderSearch=" gender like '%" + GENDER_SEARCH_TERM + "%'"; 
  String hireDate=" hire_date like '%" + HIREDATE_SEARCH_TERM + "%'";
        System.out.println(hireDate);
  if (GLOBAL_SEARCH_TERM != "") {
   searchSQL = globeSearch;
  }
  else if(EMPNO_SEARCH_TERM !="")
  {
   searchSQL=empNoSearch;
  }
  else if(FIRSTNAME_SEARCH_TERM !="")
  {
   searchSQL=firstNameSearch;
  }
  else if(LASTNAME_SEARCH_TERM!="")
  {
   searchSQL=lastNameSearch;
  }
  else if(BIRTHDATE_SEARCH_TERM!="")
  {
   searchSQL=birthDateSearch;
  }
  else if(GENDER_SEARCH_TERM!="")
  {
   searchSQL=genderSearch;
  }
  else if(HIREDATE_SEARCH_TERM!=null)
  {
   searchSQL=hireDate;
   
  }
     
  sql += searchSQL;
  sql += " order by " + COLUMN_NAME + " " + DIRECTION;
  sql += " limit " + INITIAL + ", " + RECORD_SIZE;
        
        //for searching
  PreparedStatement stmt = con.prepareStatement(sql);
  ResultSet rs = stmt.executeQuery();

  while (rs.next()) {
   JSONArray ja = new JSONArray();
   ja.put(rs.getString("emp_no"));
   ja.put(rs.getString("first_name"));
   ja.put(rs.getString("last_name"));
   ja.put(rs.getString("birth_date"));
   ja.put(rs.getString("gender"));
   ja.put(rs.getString("hire_date"));
   array.put(ja); 
  }
  stmt.close();
  rs.close();

  String query = "SELECT " + "COUNT(*) as count " + "FROM " + "employees " + "WHERE ";

  //for pagination
  if (GLOBAL_SEARCH_TERM != ""||EMPNO_SEARCH_TERM != "" || FIRSTNAME_SEARCH_TERM != "" 
||LASTNAME_SEARCH_TERM != ""||BIRTHDATE_SEARCH_TERM != ""|| GENDER_SEARCH_TERM != "" 
|| HIREDATE_SEARCH_TERM != "" ) {
   query += searchSQL;

   
   PreparedStatement st = con.prepareStatement(query);
   ResultSet results = st.executeQuery();

   if (results.next()) {
    totalAfterSearch = results.getInt("count");
   }
   st.close();
   results.close();
   con.close();
  }
  try {
   result.put("iTotalRecords", totalRecords);
   result.put("iTotalDisplayRecords", totalAfterSearch);
   result.put("aaData", array);
  } catch (Exception e) {

  }

  return result;
 }

 public int getTotalRecordCount() throws SQLException {

  int totalRecords = -1;
  String sql = "SELECT " + "COUNT(*) as count " + "FROM " + "employees";
        String dbConnectionURL = "jdbc:mysql://localhost:3306/employees?user=root&password=password";
  try {
   Class.forName("com.mysql.jdbc.Driver");
  } catch (ClassNotFoundException e) {
   e.printStackTrace();
  }

  Connection con = DriverManager.getConnection(dbConnectionURL);

  PreparedStatement statement = con.prepareStatement(sql);
        ResultSet resultSet = statement.executeQuery();

  if (resultSet.next()) {
   totalRecords = resultSet.getInt("count");
  }
  resultSet.close();
  statement.close();
  con.close();

  return totalRecords;
 }

}
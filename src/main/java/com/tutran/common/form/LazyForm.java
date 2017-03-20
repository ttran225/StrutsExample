package com.tutran.common.form;

import java.util.Map;

import org.apache.commons.lang3.StringUtils;
import org.apache.struts.validator.LazyValidatorMap;

public class LazyForm extends LazyValidatorMap {
	
	private static final long serialVersionUID = 1L;


	  /** Default Constructor. */
	  public LazyForm() {
	    super();
	  }

	  /** Default Constructor. */
	  public LazyForm(Map map) {
	    super(map);
	  }

	  /**
	   * <p>Returns the <code>Map</code> containing the property values.  This is
	   * done mostly to facilitate accessing the <code>DynaActionForm</code>
	   * through JavaBeans accessors, in order to use the JavaServer Pages
	   * Standard Tag Library (JSTL).</p>
	   *
	   * <p>For instance, the normal JSTL EL syntax for accessing an
	   * <code>ActionForm</code> would be something like this:
	   * <pre>
	   *  ${formbean.prop}</pre>
	   * The JSTL EL syntax for accessing a <code>DynaActionForm</code> looks
	   * something like this (because of the presence of this
	   * <code>getMap()</code> method):
	   * <pre>
	   *  ${dynabean.map.prop}</pre>
	   * </p>
	   */
	  public Map getMap() {
	    return super.getMap();
	  }

	  /**
	   * Convenience method for getting a string form value
	   *
	   * @param key to lookup
	   * @return string value of key
	   */
	  public String getString(String key) {
	    return (String) dynaBean.get(key);
	  }

	  /**
	   * Convenience method for getting a string form value
	   *
	   * @param key   to lookup
	   * @param index of property
	   * @return string value of key
	   */
	  public String getString(String key, int index) {
	    return (String) dynaBean.get(key, index);
	  }

	  /**
	   * Set the value of a simple property with the specified name.
	   *
	   * @param name  Name of the property whose value is to be set
	   * @param value Value to which this property is to be set
	   */
	  public void setString(String name, String value) {
	    dynaBean.set(name, StringUtils.trimToEmpty(value));
	  }

	  /**
	   * Set the value of a simple property with the specified name.
	   *
	   * @param name  Name of the property whose value is to be set
	   * @param index indexed property
	   * @param value Value to which this property is to be set
	   */
	  public void setString(String name, int index, String value) {
	    dynaBean.set(name, index, StringUtils.trimToEmpty(value));
	  }

	  /**
	   * @return string representation of object
	   * @see Object#toString()
	   */
	  public String toString() {
	    final StringBuffer sb = new StringBuffer(200);
	    sb.append("LazyForm{");
	    sb.append(getMap());
	    sb.append("}");
	    return sb.toString();
	  }

}

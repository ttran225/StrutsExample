package com.tutran.common.form.helloworld;

import org.apache.struts.action.ActionForm;

public class HelloWorldForm extends ActionForm {
	
	private String message;

	/**
	 * @return the message
	 */
	public String getMessage() {
		return message;
	}

	/**
	 * @param message the message to set
	 */
	public void setMessage(String message) {
		this.message = message;
	}
	
}

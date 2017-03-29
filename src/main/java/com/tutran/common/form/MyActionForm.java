package com.tutran.common.form;

import org.apache.struts.action.ActionForm;

public class MyActionForm extends ActionForm {
	
	private String signupName;
	private String signupEmail;
	private String signupEmailagain;
	private String signupPassword;
	private String signupPasswordagain;
	private boolean submit;
	/**
	 * @return the signupName
	 */
	public String getSignupName() {
		return signupName;
	}
	/**
	 * @param signupName the signupName to set
	 */
	public void setSignupName(String signupName) {
		this.signupName = signupName;
	}
	/**
	 * @return the signupEmail
	 */
	public String getSignupEmail() {
		return signupEmail;
	}
	/**
	 * @param signupEmail the signupEmail to set
	 */
	public void setSignupEmail(String signupEmail) {
		this.signupEmail = signupEmail;
	}
	/**
	 * @return the signupEmailagain
	 */
	public String getSignupEmailagain() {
		return signupEmailagain;
	}
	/**
	 * @param signupEmailagain the signupEmailagain to set
	 */
	public void setSignupEmailagain(String signupEmailagain) {
		this.signupEmailagain = signupEmailagain;
	}
	/**
	 * @return the signupPassword
	 */
	public String getSignupPassword() {
		return signupPassword;
	}
	/**
	 * @param signupPassword the signupPassword to set
	 */
	public void setSignupPassword(String signupPassword) {
		this.signupPassword = signupPassword;
	}
	/**
	 * @return the signupPasswordagain
	 */
	public String getSignupPasswordagain() {
		return signupPasswordagain;
	}
	/**
	 * @param signupPasswordagain the signupPasswordagain to set
	 */
	public void setSignupPasswordagain(String signupPasswordagain) {
		this.signupPasswordagain = signupPasswordagain;
	}
	/**
	 * @return the submit
	 */
	public boolean isSubmit() {
		return submit;
	}
	/**
	 * @param submit the submit to set
	 */
	public void setSubmit(boolean submit) {
		this.submit = submit;
	}
	
}

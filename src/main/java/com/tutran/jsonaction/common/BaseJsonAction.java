package com.tutran.jsonaction.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts.action.ActionForm;
import org.apache.struts.action.ActionForward;
import org.apache.struts.action.ActionMapping;
import org.json.JSONObject;

import com.tutran.action.common.BaseAction;

/**
 * Base web action for action which return JSON actions
 *
 * @author prenagha
 */
public abstract class BaseJsonAction extends BaseAction {
  /** json content type */
  public static final String JSON_CONTENT_TYPE = "application/json";
  
  /**
   * @see BaseAction#execute(org.apache.struts.action.ActionMapping, org.apache.struts.action.ActionForm,
   *      javax.servlet.http.HttpServletRequest, javax.servlet.http.HttpServletResponse)
   */
  public final ActionForward executeAction(ActionMapping mapping, ActionForm form, HttpServletRequest request,
    HttpServletResponse response) throws Exception {

    // make sure the request has specified the json content type
    // http.js does this automatically
    // helps prevent javascript hijacking using <script> tag
    if (!JSON_CONTENT_TYPE.equals(request.getHeader("X-Json-Response"))) {
      throw new SecurityException("Illegal attempt to access json action, X-Json-Type not specified in request");
    }

    // all json methods must be called via POST method
    // helps prevent javascript hijacking using <script> tag
    if (!"POST".equalsIgnoreCase(request.getMethod())) {
      throw new SecurityException("Illegal attempt to access json action, only post method allowed for json actions");
    }

    // overall json response object
    JSONObject output = new JSONObject();

    // call the action impl and put it's response in as the actionResponse node
    output.put("actionResponse",  executeJsonAction(mapping, form, request));

    // the raw, real, json string
    String jsonString = output.toString();

    // now "protect" the json string so that it is not vulnerable to the javascript hijack hack
    // http://www.fortifysoftware.com/security-resources/javascripthijacking.jsp
    // wrap it within a comment so that if directly eval'ed it will do nothing
    // our client side code strips the comments before eval'ing
    // helps prevent javascript hijacking using <script> tag
    String protectedJsonString =  "/* " + jsonString + " */";

    // write the json object to the response stream
    response.setContentType(JSON_CONTENT_TYPE);
    response.setContentLength(protectedJsonString.length());
    response.getWriter().write(protectedJsonString);

    // return null to tell struts not to forward anywhere
    return null;
  }

  /**
   * Execute the web action and return a json object
   * @param mapping action mapping
   * @param form    web form
   * @param request http request
   * @return json object
   * @throws Exception on any error
   */
  protected abstract JSONObject executeJsonAction(ActionMapping mapping, ActionForm form, 
      HttpServletRequest request) throws Exception;
}


package com.jsr.struts.form;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.struts.action.ActionErrors;
import org.apache.struts.action.ActionMapping;
import org.apache.struts.action.ActionMessage;

/**
 *
 * @author jordisolis@gmail.com
 */
public class LoginForm extends org.apache.struts.action.ActionForm {
    
    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private String userName;

    private String password;

    private List<ColumnaQuinielaForm> columnaQuini;
    
    /**
     *
     */
    public LoginForm() {
        super();
    }

    /**
     * This is the action called from the Struts framework.
     * @param mapping The ActionMapping used to select this instance.
     * @param request The HTTP Request we are processing.
     * @return
     */
    public ActionErrors validate(ActionMapping mapping, HttpServletRequest request) {
        ActionErrors errors = new ActionErrors();
        if (userName == null || userName.length() < 1) {
        	errors.add("userName", new ActionMessage("error.userName.required"));
            // TODO: add 'error.name.required' key to your resources
        }
        if (password == null || password.length() < 1) {
        	errors.add("password", new ActionMessage("error.password.required"));
        }
        return errors;
    }

    /**
     * @return the userName
     */
    public String getUserName() {
        System.out.println("Inside getter "+userName);
        return userName;
    }

    /**
     * @param userName the userName to set
     */
    public void setUserName(String userName) {
        System.out.println("Inside setter "+userName);
        this.userName = userName;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

	/**
	 * @return the columnaQuini
	 */
	public List getColumnaQuini() {
		return columnaQuini;
	}

	/**
	 * @param columnaQuini the columnaQuini to set
	 */
	public void setColumnaQuini(List columnaQuini) {
		this.columnaQuini = columnaQuini;
	}
}

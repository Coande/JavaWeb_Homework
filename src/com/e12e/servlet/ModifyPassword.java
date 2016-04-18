package com.e12e.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class ModifyPassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public ModifyPassword() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password_old=request.getParameter("password_old");
		String password_new=request.getParameter("password_new");
		
		ServletContext application=this.getServletContext();
		String username_app=(String) application.getAttribute("username");
		String password_app=(String) application.getAttribute("password");
		if(username_app.equals(username)&&password_app.equals(password_old)){
			application.setAttribute("password", password_new);
			response.sendRedirect(request.getContextPath()+"/modify_password_success.jsp");
		}
		else{
			response.sendRedirect(request.getContextPath()+"/modify_password_fail.jsp");
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

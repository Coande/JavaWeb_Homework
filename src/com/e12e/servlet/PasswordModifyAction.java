package com.e12e.servlet;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.e12e.bean.Admin;


public class PasswordModifyAction extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public PasswordModifyAction() {
        super();
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username=request.getParameter("username");
		String password_old=request.getParameter("password_old");
		String password_new=request.getParameter("password_new");
		
		ServletContext application=this.getServletContext();
		ArrayList< Admin> admins= (ArrayList<Admin>) application.getAttribute("admins");
		
		for(int i=0;i<admins.size();i++){
			//修改密码
			if(admins.get(i).getUsername().equals(username)&&admins.get(i).getPassword().equals(password_old)){
				Admin admin=new Admin(admins.get(i).getUsername(), password_new, admins.get(i).getLevel());
				admins.set(i, admin);
				application.setAttribute("admins", admins);
				response.sendRedirect(request.getContextPath()+"/message/PasswordModifySuccess.jsp");
				return ;
			}
			else{
				response.sendRedirect(request.getContextPath()+"/message/PasswordModifyFailed.jsp");
			}
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}

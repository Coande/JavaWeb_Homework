package com.e12e.servlet;

import java.io.IOException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class DoLogin extends HttpServlet {
	
	@Override
	public void init() throws ServletException {
		//假设初始数据
		ServletContext application=this.getServletContext();
		application.setAttribute("username", "admin");
		application.setAttribute("password", "admin");
		
		application.setAttribute("total", 0);
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		doPost(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

		
		//获取数据
		ServletContext application=this.getServletContext();
		String username=(String) application.getAttribute("username");
		String password=(String) application.getAttribute("password");
		
		//测试乱码问题，输出用户名
		System.out.println("Try username : "+req.getParameter("username"));
		
		application.getAttribute("password");
		
		if(username.equals(req.getParameter("username"))&&password.equals(req.getParameter("password"))){
			HttpSession session=req.getSession();
			session.setAttribute("username", req.getParameter("username"));
			session.setAttribute("password", req.getAttribute("password"));
			resp.sendRedirect(req.getContextPath()+"/iframeIndex.jsp");
		}else{
			resp.sendRedirect(req.getContextPath()+"/login_fail.html");
		}
	}
	
}
